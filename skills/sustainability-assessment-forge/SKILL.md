---
name: sustainability-assessment-forge
description: Builds and audits sustainability-assessment workflows for research papers and emerging technologies. Use for life cycle assessment, LCA, life cycle inventory, LCIA framing, techno-economic analysis, TEA, CAPEX and OPEX review, minimum selling price, levelized cost logic, uncertainty analysis, sensitivity analysis, scenario design, process comparison, scale-up realism, commercialization readiness, electrochemical process papers, catalytic systems, carbon management, circular-economy technologies, agriculture and bioresource process assessment, electricity-mix assumptions, coproduct treatment, functional units, system boundaries, burden shifting, and manuscript-ready sustainability interpretation.
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
- `references/electrochemical-systems-audit.md` for electrochemical systems and other energy-intensive process papers.

Use:

- `templates/lca-tea-audit.md` for a structured audit memo;
- `templates/lca-tea-extraction-schema.csv` for study extraction;
- `templates/scenario-sensitivity-matrix.csv` for baseline and alternative cases;
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
9. Identify the dominant environmental and economic drivers.
10. Build scenario and sensitivity cases.
11. Review scale-up realism and deployment bottlenecks.
12. Write an interpretation that matches what the model can actually support.

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

## Guardrails

- Do not compare systems on different functional units without saying so explicitly.
- Do not treat a narrow boundary as a full sustainability verdict.
- Do not repeat TEA outputs without the cost basis and utilization assumptions.
- Do not let a best-case electricity mix masquerade as a default case.
- Do not treat a single sensitivity tornado as full uncertainty analysis.
- Do not infer commercial viability from high selectivity or current density alone.
- Do not convert lab performance into industrial conclusions without discussing separations, durability, uptime, and balance-of-plant requirements.
