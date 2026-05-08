---
name: sustainability-assessment-forge
description: Builds and audits sustainability-assessment workflows for research papers and emerging technologies. Use for life cycle assessment, LCA, life cycle inventory, LCIA framing, techno-economic analysis, TEA, CAPEX and OPEX review, minimum selling price, levelized cost logic, uncertainty analysis, sensitivity analysis, scenario design, process comparison, scale-up realism, commercialization readiness, electrochemical process papers, catalytic systems, carbon management, circular-economy technologies, agriculture and bioresource process assessment, biomass conversion, agricultural residues, waste-to-value systems, anaerobic digestion, biorefineries, fertilizer substitution, electricity-mix assumptions, coproduct treatment, functional units, system boundaries, burden shifting, safe-boundary framing, policy-portfolio comparison, and manuscript-ready sustainability interpretation.
---

# Sustainability Assessment Forge

Use this skill when a project needs a credible sustainability assessment rather than a headline performance summary.

## Core Principle

Sustainability claims only become comparable after the study defines a fair functional unit, clear system boundary, defensible inventory basis, transparent economic assumptions, explicit uncertainty treatment, and realistic scale-up path.

## Intake

Identify:

- technology or process type;
- claimed product, service, or environmental function;
- target question: LCA, TEA, or combined LCA plus TEA;
- functional unit and reference flow;
- comparator or baseline pathway;
- system boundary;
- scale and technology-readiness stage;
- feedstock type, moisture basis, availability pattern, and logistics assumptions, if an agricultural or bioprocess system is in scope;
- energy, electricity, heat, and feedstock assumptions;
- coproduct handling rule;
- target cost metric or environmental metric;
- uncertainty target;
- scenario target;
- scale-up claim;
- intended manuscript or decision claim.

Load:

- `references/lca-boundary-and-functional-unit.md` for goal, scope, boundary, functional unit, allocation, and comparability checks.
- `references/tea-cost-driver-and-scale-up.md` for CAPEX, OPEX, throughput, utilization, cost metrics, and scale-up realism.
- `references/uncertainty-scenario-and-scale-up.md` for sensitivity, uncertainty, scenario framing, and interpretation limits.
- `references/agri-bio-process-audit.md` for agricultural residues, biomass conversion, biofuels, bioproducts, waste-to-value, nutrient loops, logistics, seasonality, and coproduct-heavy systems.
- `references/electrochemical-systems-audit.md` for electrochemical systems and other energy-intensive process papers.
- `references/policy-portfolio-and-safe-boundary.md` for safe-boundary framing, multi-sector reduction targets, policy portfolios, co-benefit translation, and cross-domain environmental burden planning.

Use:

- `templates/lca-tea-audit.md` for a structured audit memo;
- `templates/lca-tea-extraction-schema.csv` for study extraction;
- `templates/agri-bio-process-audit.md` and `templates/agri-bio-process-schema.csv` for biomass, residue, biorefinery, manure, digestate, biochar, waste-stream, and agriculture-linked process systems;
- `templates/scenario-sensitivity-matrix.csv` for baseline and alternative cases;
- `templates/policy-portfolio-scenario-schema.csv` for policy-target, sector, technology, and structural-measure comparisons;
- `templates/scale-up-readiness-checklist.md` for lab-to-pilot-to-commercial translation.

## Workflow

1. Define the claimed function of the system.
2. Freeze the functional unit and reference flow.
3. Draw the system boundary and note exclusions.
4. Check whether the comparator is fair.
5. Record material, energy, electricity, and transport assumptions.
6. Check coproduct treatment and allocation or substitution logic.
7. Build the TEA basis: capacity, utilization, CAPEX, OPEX, lifetime, financing assumptions, and cost metric.
8. Separate measured values from assumed values.
9. For agricultural or bioprocess systems, make feedstock moisture, transport radius, seasonality, coproduct use, and nutrient-return logic explicit.
10. Identify the dominant environmental and economic drivers.
11. Build scenario and sensitivity cases.
12. Review scale-up realism and deployment bottlenecks.
13. If the paper makes policy-facing claims, separate single measures from portfolio logic and safe-boundary logic.
14. Write an interpretation that matches what the model can actually support.

## Output Modes

### LCA/TEA Audit Card

```text
Technology:
Claimed function:
Functional unit:
Reference flow:
Comparator:
System boundary:
Scale / TRL:
Main environmental drivers:
Main economic drivers:
Uncertainty plan:
Scenario plan:
Scale-up verdict:
Interpretation limit:
```

### Scenario Matrix

```text
Scenario:
What changes:
Why it matters:
Expected direction:
Decision relevance:
```

### Policy Portfolio Memo

```text
Burden:
Boundary or target:
Single-measure option:
Portfolio option:
Technical measures:
Structural measures:
Main co-benefit:
Main cost concern:
Most assumption-sensitive comparison:
Bottom-line portfolio verdict:
```

### Scale-Up Readiness Memo

```text
Lab result:
Missing scale information:
Energy and separation penalties:
Equipment and materials constraints:
Operating stability:
Supply-chain dependency:
Commercialization bottleneck:
Bottom-line caution:
```

### Agri-Bio Process Audit

```text
Feedstock:
Moisture and preprocessing basis:
Seasonality and storage assumption:
Transport radius:
Main conversion route:
Coproduct and residue handling:
Nutrient-return logic:
Hotspot driver:
Cost bottleneck:
Most fragile assumption:
Scale-up caution:
```

## Guardrails

- Do not compare systems on different functional units without saying so explicitly.
- Do not treat a narrow boundary as a full sustainability verdict.
- Do not repeat TEA outputs without the cost basis and utilization assumptions.
- Do not let a best-case electricity mix masquerade as a default case.
- Do not treat a single sensitivity tornado as full uncertainty analysis.
- Do not infer commercial viability from high selectivity or current density alone.
- Do not let policy-portfolio language hide the underlying sector and assumption structure.
- Do not treat residue feedstocks as free, uniform, and always available without discussing collection, moisture, contamination, and competing uses.
- Do not treat coproduct credits or fertilizer substitution as automatic without a transparent counterfactual.
- Do not convert lab performance into industrial conclusions without discussing separations, durability, uptime, and balance-of-plant requirements.
