---
name: heal
description: Recover from breakage, analyzer errors, or inconsistent generated code.
---

# Heal

- Run `dart pub get`, then `balim app fix` (and `balim app fix --features` if features are broken).
- Run `dart analyze` / IDE analyzer and fix reported issues from the innermost error outward.
- Do **not** edit **lockd**-managed files by hand; run **`dart run lockd`** to regenerate them, then re-run fix and format.
- Use `balim app tree` / list commands to verify module structure matches expectations.