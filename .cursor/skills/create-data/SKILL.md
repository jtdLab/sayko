---
name: create-data
description: Add or extend a data module under lib/data (API, DTOs, requests, responses).
---

# Create data

Place modules under `lib/data/<snake_case>/`: API client, DTOs, requests, responses, utils, barrel.

- Keep DTOs aligned with JSON keys; use lockd/json patterns consistent with existing data modules.
- Register APIs in `lib/di.dart` when adding new clients.
- Run `balim app fix` after structural changes.