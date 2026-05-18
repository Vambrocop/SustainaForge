# Spatial Manure Management And Nutrient-Recovery Optimization

Use this reference when a paper models manure management, nutrient recovery, circular fertilizer substitution, spatial externalities, societal costs, and policy scenarios.

## Running Example

Vingerhoets et al. (2026), "Spatially optimized manure management and nutrient recovery can reduce societal costs in a European livestock production hotspot," *Nature Food*, DOI `10.1038/s43016-026-01329-w`.

Data/code archive:

- Zenodo record: https://doi.org/10.5281/zenodo.18304135
- Resource type: dataset
- License: CC-BY-4.0

## Why This Is A Strong Paradigm

This is not a conventional LCA/TEA or meta-analysis. It is a spatially explicit optimization and societal-cost assessment.

The useful analysis form is:

```text
municipality-level manure and fertilizer system
-> spatially explicit optimization
-> private costs plus monetized externalities
-> nutrient recovery and policy scenarios
-> spatial cost/trade-off maps
```

The model minimizes total societal cost by combining:

- economic activity costs;
- manure storage, processing, transport, and field application decisions;
- mineral fertilizer substitution;
- emissions and nutrient losses;
- receptor-specific externality costs;
- policy scenarios such as Nitrates Directive, RENURE, and externality internalization.

## Public Reproducibility Package

The Zenodo package contains:

| File | Role | Reproducibility value |
|---|---|---|
| `Figure_data.xlsx` | Source data for Fig. 1, Fig. 2, Extended Data Fig. 1, and Extended Data Fig. 2 | Replot and audit the published figure values |
| `Figure_code.zip` | Python notebook, `Input.xlsx`, and Flanders municipality shapefile | Reproduce subplots of Fig. 2 and Extended Data Fig. 2 |
| `Input_parameters.zip` | GAMS `.gdx` input parameter files | Audit model inputs such as waterbody capacities, distances, nutrient requirements, manure production, and externality factors |
| `model.docx` | Mathematical equations, objective logic, and constraints used in GAMS | Understand and partially reconstruct the optimization model |

Important limitation:

```text
The original GAMS model files are not fully public in the Zenodo package. The article states that they are available from the authors upon reasonable request.
```

Therefore the public route supports:

- figure-data reproduction;
- Python map/subplot reproduction;
- model-parameter audit;
- mathematical reconstruction;
- partial model reimplementation.

It does **not** by itself guarantee a full optimization rerun unless the `.gms` model files are obtained or reimplemented from `model.docx`.

## Analysis-Form Fit

| Research need | Data unit | Analysis form | Fit verdict |
|---|---|---|---|
| Compare manure-policy scenarios | municipality-level system states | scenario optimization | appropriate |
| Internalize pollution damages | emissions linked to receptors | monetized externality model | appropriate, assumption-sensitive |
| Identify spatial hotspots | municipality polygons and receptor costs | geospatial mapping | appropriate |
| Compare private vs societal costs | cost components by scenario | cost accounting and stacked decomposition | appropriate |
| Claim complete reproducibility | public data plus model docs | incomplete without original GAMS model files | caution |

## Key Data/Parameter Families

From the Zenodo description and local archive inspection, the input parameters include:

- waterbody capacity for reactive nitrogen and phosphorus;
- driving distances between municipalities;
- leaching coefficients linking origin municipalities to receiving waterbodies;
- mineral fertilizer plant distance;
- effective nitrogen requirements by municipality;
- nutrient requirements for nitrogen, phosphorus, potassium, and sulphur;
- manure production by municipality and animal type;
- phosphorus fertilization limits;
- NH3 externality costs linked to Natura 2000 deposition;
- PM2.5 health-impact costs for NH3 and NOx;
- municipality-to-arrondissement links.

## Reproduction Route

### Level 1: Figure-Data Audit

Use `Figure_data.xlsx` to verify:

- Fig. 1 scenario-level costs;
- Fig. 2 municipality-level pressure, externality, and cost trade-off data;
- Extended Data Fig. 1 cost/externality differences;
- Extended Data Fig. 2 manure-processing and nitrogen-recovery outcomes.

This level does not require GAMS.

### Level 2: Python Map/Subplot Reproduction

Use `Figure_code.zip`:

- `Figure.ipynb`;
- `Input.xlsx`;
- Flanders municipality shapefile files.

Observed Python dependencies:

```text
pandas
geopandas
matplotlib
```

This level can reproduce spatial map subplots if the Python/geospatial environment is configured.

### Level 3: Parameter Audit

Use `Input_parameters.zip`:

- inspect `.gdx` input files with GAMS tools or a Python/R GDX reader;
- map each parameter to the equation or constraint in `model.docx`;
- check units, municipality/receptor sets, and scenario assumptions.

### Level 4: Optimization Reimplementation Or Author File Request

For full optimization rerun:

- request original GAMS `.gms` model files from authors; or
- reimplement the objective function and constraints from `model.docx`;
- run GAMS 24.7 or compatible version;
- compare generated outputs against `Figure_data.xlsx`.

## Reusable Skill Rule

For spatial nutrient-recovery optimization papers:

```text
Separate figure reproduction from model reproduction. Public figure data and plotting code can verify outputs, but full optimization reproducibility requires the executable model, input parameters, solver settings, and scenario definitions.
```

## Guardrails

- Do not call the study fully reproducible from Zenodo alone if the executable GAMS model files are absent.
- Do not treat externality prices as universal; they are receptor-, region-, and valuation-method dependent.
- Do not compare private cost reductions and societal cost reductions without stating which externalities are included.
- Do not treat nutrient recovery as automatically beneficial; check fertilizer substitution, transport, processing emissions, and policy constraints.
- Do not generalize from Flanders to other livestock hotspots without adapting manure density, crop nutrient demand, sensitive receptors, transport network, regulation, and valuation factors.
