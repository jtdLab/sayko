---
name: create-feature
description: Add or extend a Balim feature — layout, widgets (tree + one HookWidget per file), routing.
---

# Create feature

Follow the existing layered layout: `lib/features/<snake_case>/` with cubit, state,
presentation events, models, widgets, barrel, and routing part.

## Widgets and tree

- Use **`balim app tree -n <feature_snake>`** while designing widgets so **names match the tree** (parent/child roles read clearly).
- **Minimize depth**: if a widget only **returns another feature-namespace widget** with no real logic, **merge or inline** so the tree stays shallow.
- **One `HookWidget` per file** under `widgets/`, and **one `HookWidget` per file** for feature entry parts: `*_page.dart`, `*_shell.dart`, `*_sheet.dart`, `*_dialog.dart` (and the bare `*.dart` entry if used). Do not put multiple `HookWidget` classes in the same part file.

## Conventions

- Prefer `HookWidget` / `StatelessWidget` patterns already used in generated features.
- **Do not** import **`lib/data`** or **`lib/di.dart`** from feature code — use the cubit and domain-facing types wired in the feature, not raw data APIs or service locators.
- Import UI through `package:<app>/ui/ui.dart` and shared code through `package:<app>/utils.dart` as in the template.
- Wire navigation in the feature routing part; keep strings in slang/i18n, not hard-coded in widgets.
- After edits, run `balim app fix` (and `balim app fix --features` if you need the feature refactor pipeline).