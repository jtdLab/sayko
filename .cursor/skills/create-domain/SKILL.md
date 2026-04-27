---
name: create-domain
description: Add or extend a domain module under lib/domain (repository, failures, models).
---

# Create domain

Structure: `lib/domain/<snake_case>/` with models, failure type, repository interface, utils, barrel.

- Domain depends on data abstractions; keep business rules out of widgets.
- Mirror naming and patterns from existing domain modules.
- Run `balim app fix` after edits.