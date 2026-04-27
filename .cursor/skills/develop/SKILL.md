---
name: develop
description: Edit vs new feature — gather context with tree/list, then implement or scaffold using create-* skills.
---

# Develop

## 1. Edit existing code vs create new feature

Decide which applies. **If unclear, ask the user** before changing files.

---

## 2. Editing an existing feature or flow

- From the user’s prompt, infer **which feature(s)** are involved (names in `snake_case`).
- For each, run **`balim app tree -n <feature_snake>`** (add `--json` or `--flat` if useful) to see **parent/child widget structure**.
- For each feature, run **`balim app list features -n <feature_snake>`** to see that module’s layout and **what it depends on** (other features, cubit wiring, etc.).
- **List domains** that those features use: `balim app list domains` and, where needed, **`balim app list domains -n <domain_snake>`** for each related domain. Trace **domain dependencies** the same way.
- **Scan data modules**: `balim app list datas` and **`balim app list datas -n <data_snake>`** for each data layer the flow touches.
- When you have **enough context** (features, trees, domains, data), **propose a plan**, **ask clarifying questions** if anything is ambiguous, then **implement** matching **existing project style** (imports, cubit, widgets, i18n).
- Finish with **`balim app fix`**; use **`balim app fix --features`** when you changed `lib/features` substantially.

---

## 3. Creating new features (and layers)

- Decide **which new features** (and whether new **domain** or **data** modules are needed).
- Follow the project skills: **`create-feature`**, **`create-domain`**, **`create-data`** as appropriate (scaffold, naming, `lib/di.dart`, barrels).
- After scaffolding, run **`balim app fix`** / **`balim app fix --features`** as needed.