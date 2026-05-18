# GAMS + Python Setup

This note is for sustainability, LCA/TEA, and spatial optimization papers that use GAMS for the optimization model and Python for data processing or figures.

## How to Read a Paper That Says This

When a paper says:

```text
The optimization model was implemented in GAMS.
The mathematical equations, input data, and Python plotting code are public.
The original GAMS model files are available from the authors upon reasonable request.
```

the reproducibility verdict is usually:

```text
partially reproducible
```

The public materials can support:

- checking equations and assumptions;
- reading model input data;
- reproducing figures if Python code and figure data are complete;
- rebuilding a clean-room GAMS version from the published equations.

They do not support:

- exact rerun of the authors' original optimization model;
- exact solver settings, model transformations, or debugging choices;
- full verification of implementation details unless the `.gms` files are obtained.

## Recommended Local Setup

Use a dedicated Python environment for each GAMS major/minor version. The official GAMS Python API package should match the installed GAMS version.

From the SustainaForge repository root:

```powershell
.\tools\setup_gams_python.ps1 -GamsSystemDir "C:\path\to\your\GAMS\system\directory"
```

If `gams audit` cannot report the version, provide it manually:

```powershell
.\tools\setup_gams_python.ps1 `
  -GamsSystemDir "C:\path\to\your\GAMS\system\directory" `
  -GamsVersion "52.5.0"
```

The script creates:

```text
.venv-gams/
```

and installs:

```text
gamsapi[control,transfer,magic]
```

Then it runs `tools/gams_smoke_test.py`.

## Why This Matters for SustainaForge

GAMS is useful when a paper includes:

- spatial nutrient allocation;
- manure or fertilizer logistics;
- multi-objective sustainability optimization;
- scenario-constrained LCA/TEA;
- cost minimization with environmental constraints;
- regional deployment or infrastructure planning.

For article extraction, record:

- GAMS version;
- solver name and version if reported;
- public `.gdx`, `.xlsx`, `.csv`, or parameter files;
- whether `.gms` source code is public, request-only, or unavailable;
- Python/R figure code availability;
- whether the reproduction target is full model rerun, figure reproduction, or clean-room reconstruction.
