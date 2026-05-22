# LoRA-Forge frontend source

This is a small source frontend for the LoRA-Forge GUI.

The historical `frontend/` submodule contains generated files only, so this
directory is the editable source going forward. It reads the backend schemas
from `/api/schemas/all`, evaluates the existing `mikazuki/schema/*.ts` schema
DSL with a local browser-side `Schema` adapter, and posts training configs to
the existing backend endpoints.

## Commands

```powershell
cd frontend-src
npm run check
npm run build:preview
```

`npm run build` writes to `../frontend/dist`.

`npm run build:preview` writes to `frontend-src/dist` so you can inspect the
generated files without touching the dist submodule.
