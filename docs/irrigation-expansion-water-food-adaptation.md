# Irrigation Expansion As A Water-Food-Climate Adaptation Case

Source status: main article and Supporting Information reviewed locally from user-provided PDFs. Public data/code entry identified in the article reference list: Zenodo https://doi.org/10.5281/zenodo.17478972. Full Zenodo package inspection still pending.

Anchor paper:

- Jillian M. Deines, Sophie Baur, Anthony Kendall, Antonia Hadjimichael, and Robert Hetland, *Irrigation Expansion in the US Corn Belt: Patterns and Yield Impacts*, *Earth's Future*, DOI: https://doi.org/10.1029/2025EF007566.

## Why This Belongs In SustainaForge

This paper is not an LCA/TEA paper by itself. It is still valuable for SustainaForge because irrigation expansion is a classic sustainability trade-off:

```text
yield resilience and climate adaptation
vs.
groundwater demand, pumping energy, infrastructure cost, and hydrologic externalities
```

The reusable framing is:

```text
estimate marginal yield benefit first
then audit whether the water, energy, cost, and resource constraints make the adaptation sustainable
```

The paper's own result gives the empirical first layer:

- maize ATE: 1.53 t/ha, or about 12.6%;
- soybean ATE: 0.29 t/ha, or about 7.9%;
- larger effects occur on lower quality soils and in drier, higher-VPD conditions;
- continued expansion is plausible because benefits appear to have increased over time.

The paper does not by itself close the sustainability question. It explicitly motivates the need to consider regional hydrology, water allocation, nutrient transport, atmospheric feedbacks, and water sustainability.

## System Boundary For A Sustainability Extension

Functional question:

```text
What is the yield gain from irrigation expansion per unit of added water, energy, cost, and hydrologic stress?
```

Possible functional units:

- per hectare-year converted to irrigation;
- per additional tonne of corn or soybean;
- per millimeter of irrigation water applied;
- per dollar of irrigation infrastructure and pumping cost;
- per tonne CO2e from pumping energy, if electricity or fuel data are available.

Boundary options:

| Boundary | Includes | Excludes |
| --- | --- | --- |
| yield-only | yield effect and heterogeneity | water, energy, cost, aquifer pressure |
| water-productivity | yield effect plus irrigation water demand | pumping energy and infrastructure |
| water-energy-food | yield, water, pumping energy, emissions, rough cost | full farm financial model |
| policy scenario | water constraints, adoption targeting, drought years | exact farmer adoption behavior unless modeled |

## Reproduction-To-Optimization Route

The empirical paper provides the first ingredient:

```text
CATE_i = estimated yield benefit of irrigation at location i
```

SustainaForge can extend it into decision analysis:

```text
choose irrigation expansion locations
maximize yield benefit or profit
subject to water, energy, groundwater, or budget constraints
```

Candidate optimization model:

```text
decision variable:
  x_i = 1 if location i is selected for irrigation expansion

objective:
  maximize sum_i CATE_i * crop_area_i * x_i

constraints:
  sum_i water_i * x_i <= water_budget
  sum_i energy_i * x_i <= energy_budget
  sum_i cost_i * x_i <= investment_budget
  groundwater_stress_region_r <= threshold_r
  x_i allowed only where overlap/support is credible
```

This is a natural future use case for:

- GAMS;
- GAMSPy;
- Python geospatial processing;
- scenario matrices.

## Empirical Inputs To Extract From The Paper

Use these as inputs to a later SustainaForge scenario or GAMSPy model:

| Input | Paper-derived value or source |
| --- | --- |
| Marginal maize yield benefit | Causal-forest ATE and CATE from `grf` |
| Marginal soybean yield benefit | Causal-forest ATE and CATE from `grf` |
| Adoption feasibility proxy | proximity to existing irrigation, groundwater proximity, stream proximity |
| High-return conditions | lower soil productivity, faster draining soils, higher August VPD |
| Treatment support constraint | propensity score overlap after trimming <0.02 and >0.98 |
| Field threshold sensitivity | 39, 75, and 100 pixel thresholds all yield similar maize ATE |
| Public data/code entry | Zenodo `10.5281/zenodo.17478972` |

For sustainability modeling, do not use the ATE alone. Pair each location with:

- irrigation water requirement;
- water source or groundwater depth;
- pumping energy;
- electricity or fuel emissions factor;
- infrastructure and operating cost;
- aquifer or watershed constraint;
- nutrient-leaching or hydrologic externality proxy where available.

## Scenario Matrix

| Scenario | What changes | Why it matters |
| --- | --- | --- |
| baseline expansion | observed expansion pattern | Describes what happened historically |
| yield-maximizing expansion | rank by CATE | Shows production potential |
| water-constrained expansion | add water budget | Tests sustainable adaptation limits |
| drought-year targeting | prioritize drought-sensitive areas | Tests climate adaptation value |
| groundwater-protection case | exclude shallow/depleted or stressed aquifers | Avoids adaptation that increases resource risk |
| carbon-aware pumping | add energy/emissions penalty | Links irrigation to mitigation trade-offs |
| overlap-safe targeting | allow expansion only where causal-forest overlap is credible | Avoids optimizing over unsupported counterfactuals |

## Audit Questions

Before using the empirical result for sustainability claims, ask:

- Does the yield effect include only yield, or also changed crop choice and management intensity?
- Is irrigation water application observed or inferred?
- Is groundwater depth, aquifer stress, or renewable water supply included?
- Are pumping energy and emissions included?
- Are infrastructure costs and farm-level adoption costs included?
- Are downstream water or ecological impacts outside the boundary?
- Does the model assume no spatial spillovers from irrigation cooling or humidity?
- Is the treatment effect stable under future climate, water, and price conditions?

## Skill Rule To Reuse

When an agricultural adaptation paper estimates yield gains from irrigation, require a two-layer interpretation:

```text
Layer 1: empirical yield effect
Layer 2: sustainability feasibility
```

Do not turn a positive yield effect into a sustainability recommendation until water, energy, cost, groundwater, and scenario constraints are made explicit.
