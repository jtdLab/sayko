#!/bin/bash

pick_test_file() {
  echo "Available test files:"
  echo ""

  files=(integration_test/*_test.dart)
  file_count=${#files[@]}

  if [[ "$file_count" -eq 0 ]]; then
    echo "No test files found in integration_test/."
    exit 1
  fi

  for i in "${!files[@]}"; do
    fname=$(basename "${files[$i]}")
    echo "$((i+1))) $fname"
  done

  echo ""

  while true; do
    read -p "Select a test file: " selection
    if [[ "$selection" =~ ^[0-9]+$ ]] && (( selection >= 1 && selection <= file_count )); then
      TEST_FILE="${files[$((selection-1))]}"
      echo ""
      echo "You selected: $(basename "$TEST_FILE")"
      break
    else
      echo "Invalid choice. Try again."
    fi
  done
}

pick_flavor() {
  echo "Available flavors:"
  echo ""
  echo "1) development (default)"
  echo "2) staging"
  echo "3) production"
  echo ""

  while true; do
    read -p "Select a flavor: " selection
    # Default to development if empty
    if [[ -z "$selection" ]]; then
      selection="1"
    fi
    case $selection in
      1)
        FLAVOR="development"
        echo ""
        echo "You selected: development"
        break
        ;;
      2)
        FLAVOR="staging"
        echo ""
        echo "You selected: staging"
        break
        ;;
      3)
        FLAVOR="production"
        echo ""
        echo "You selected: production"
        break
        ;;
      *)
        echo "Invalid choice. Try again."
        ;;
    esac
  done
}


pick_device() {
  echo "Fetching available devices..."
  echo ""

  devices_json=$(flutter devices --machine)
  mobileDevicesJson=$(echo "$devices_json" | jq '[.[] | select(((.targetPlatform | contains("ios") or contains("android")) and .emulator == true) or (.id == "macos" and .emulator == false)) | {id, name, targetPlatform}]')

  device_count=$(echo "$mobileDevicesJson" | jq 'length')

  if [[ "$device_count" -eq 0 ]]; then
    echo "No supported devices found. Use an iOS/Android emulator or macOS desktop."
    exit 1
  fi

  if [[ "$device_count" -eq 1 ]]; then
    DEVICE_ID=$(echo "$mobileDevicesJson" | jq -r '.[0].id')
    DEVICE_NAME=$(echo "$mobileDevicesJson" | jq -r '.[0].name')
    echo "Only one device found: $DEVICE_NAME. Using it."
    return
  fi

  echo "Available devices:"
  echo ""

  echo "$mobileDevicesJson" | jq -r 'to_entries | .[] | "\(.key + 1)) \(.value.name) (\(.value.targetPlatform))"'
  echo ""

  while true; do
    read -p "Select a device: " selection
    if [[ "$selection" =~ ^[0-9]+$ ]] && (( selection >= 1 && selection <= device_count )); then
      DEVICE_ID=$(echo "$mobileDevicesJson" | jq -r ".[$((selection-1))].id")
      DEVICE_NAME=$(echo "$mobileDevicesJson" | jq -r ".[$((selection-1))].name")
      echo ""
      echo "You selected: $DEVICE_NAME"
      break
    else
      echo "Invalid choice. Try again."
    fi
  done
}

ask_devtools() {
  echo ""
  echo "Open DevTools?"
  echo ""
  echo "y) yes"
  echo "n) no (default)"
  echo ""

  while true; do
    read -p "Select an option: " choice
    # Default to no if empty
    if [[ -z "$choice" ]]; then
      choice="n"
    fi
    case $choice in
      [Yy]* )
        OPEN_DEVTOOLS="--open-devtools"
        echo ""
        echo "DevTools will be opened."
        break
        ;;
      [Nn]* )
        OPEN_DEVTOOLS=""
        echo ""
        echo "DevTools will not be opened."
        break
        ;;
      * )
        echo "Invalid choice. Try again."
        ;;
    esac
  done
}

echo "Hint: Currently patrol develop does not support Web."
echo ""
pick_test_file
pick_flavor
pick_device
ask_devtools

patrol develop --flutter-command "fvm flutter" --target="$TEST_FILE" -d "$DEVICE_ID" --flavor "$FLAVOR" $OPEN_DEVTOOLS
