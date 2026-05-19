# XGBoost-SHAP For Sustainability And Environmental Systems

Source status: distilled from user-provided notes on XGBoost-SHAP explainable machine learning (`XMI`). The linked WeChat article was not accessible from the current environment.

## Why This Belongs In SustainaForge

Sustainability studies often involve nonlinear, coupled systems:

```text
environmental pressure
technology or management setting
spatial context
economic or social constraint
system outcome
```

XGBoost-SHAP is useful as an exploratory and decision-support layer because it can:

- model nonlinear and interaction-heavy tabular data;
- rank model-relevant drivers;
- reveal threshold-like response patterns;
- support scenario screening before LCA, TEA, optimization, or causal analysis.

It should not replace physical mechanism, LCA/TEA accounting, or causal identification.

## Sustainability Use Cases

| Domain | Outcome examples | Predictor examples | SHAP use |
| --- | --- | --- | --- |
| environmental risk | fire, flood, pollution, disease risk | land use, roads, density, climate | driver ranking and spatial heterogeneity |
| agriculture | yield, irrigation benefit, N2O, SOC | climate, soil, management, remote sensing | threshold and interaction exploration |
| circular economy | process yield, emissions, cost | temperature, pH, feedstock, energy mix | operating-window interpretation |
| LCA/TEA support | emissions, cost, MSP, energy demand | process parameters, scenarios, prices | sensitivity and screening |
| ecosystem services | service supply, trade-off index | landscape, climate, socioeconomic factors | nonlinear response and zoning hints |

## Workflow

```text
1. Define the sustainability outcome.
2. Separate prediction variables from decision variables.
3. Choose validation split matching the intended use: time, region, site, technology, or scenario.
4. Fit baseline and XGBoost models.
5. Use SHAP only after held-out validation.
6. Identify top drivers, nonlinear ranges, and interactions.
7. Convert SHAP patterns into hypotheses or scenario rules.
8. Pass candidate rules to LCA/TEA, optimization, or causal testing.
```

## From SHAP To Scenario Design

SHAP can suggest scenario dimensions:

```text
top SHAP driver -> scenario axis
SHAP dependence bend -> candidate threshold
SHAP interaction -> two-factor scenario matrix
spatially varying SHAP -> region-specific scenario
```

Example:

```text
If VPD and soil water capacity dominate irrigation-benefit predictions,
build scenarios by drought intensity and soil-water class before optimizing expansion.
```

## Guardrails

- SHAP importance is not a sustainability impact category.
- SHAP ranking is not a causal priority list.
- A model-derived threshold is not a regulation-ready cutoff.
- Top SHAP variables may be proxies for geography, year, or sampling design.
- XGBoost accuracy does not prove future climate or scale-up validity.
- Use SHAP to propose hypotheses, then test them with system accounting, scenario analysis, or causal designs.

## Reporting Language

```text
We used XGBoost-SHAP as an explainable prediction layer to identify model-relevant
drivers and nonlinear response ranges. SHAP values were interpreted as attribution
within the fitted model, not as causal or life-cycle impact estimates. Candidate
thresholds and interactions were used to structure scenario analysis rather than as
stand-alone policy recommendations.
```

## Skill Rule To Reuse

For sustainability papers using XGBoost-SHAP:

```text
validate prediction first;
interpret SHAP second;
convert patterns into scenario hypotheses third;
audit water, energy, emissions, cost, and scale-up boundaries before recommending action.
```
