# SustainaForge

**From performance papers to auditable sustainability assessment workflows.**
**Agent skills for LCA, TEA, uncertainty, scenario analysis, and scale-up review.**

SustainaForge turns sustainability assessment practice into reusable AI-agent workflows: functional units, system boundaries, inventory assumptions, cost drivers, uncertainty plans, scenario design, scale-up realism, and interpretation guardrails.

## What This Is

SustainaForge focuses on process-level sustainability assessment, especially for energy, environment, agriculture, electrochemistry, carbon management, circular-economy, and emerging technology papers.

Use it for:

- life cycle assessment and life cycle inventory planning;
- techno-economic analysis and cost-driver review;
- uncertainty, sensitivity, and scenario analysis;
- scale-up realism and commercialization-readiness checks;
- agriculture, biomass, waste-to-value, and bioproduct process audits;
- electrochemical, catalytic, and process-systems paper audits;
- manuscript methods planning and interpretation guardrails;
- turning repeated sustainability assessment routines into reusable agent skills.

This repository is a companion to:

- [EvidenceForge](https://github.com/Vambrocop/EvidenceForge) for systematic review, meta-analysis, and evidence synthesis;
- [EmpiriForge](https://github.com/Vambrocop/EmpiriForge) for empirical research, causal inference, and prediction-model workflows.

## Core Idea

Strong performance claims are not enough. A process can look impressive on:

- current density;
- selectivity;
- yield;
- conversion;
- titer;
- removal efficiency;
- lab-scale cost proxies;

and still fail when the analysis is moved onto a fair functional unit, realistic boundary, defensible electricity mix, audited CAPEX/OPEX basis, uncertainty range, or scale-up scenario.

SustainaForge exists to keep those checks visible and reproducible.

## Quick Demo

```text
Input:
  I have an electrochemical CO2 conversion paper with high Faradaic efficiency
  and current density. I want to know whether the sustainability claims hold up.

Skill:
  sustainability-assessment-forge

Output:
  LCA/TEA audit card
  Functional-unit and boundary review
  Cost-driver summary
  Scenario and sensitivity matrix
  Scale-up readiness memo
```

Example prompt:

```text
Use sustainability-assessment-forge to audit an electrochemical process paper.
Check the functional unit, system boundary, electricity assumptions,
cost drivers, uncertainty, scenario design, and scale-up realism.
```

## Included Skill

```text
SustainaForge/
  skills/
    sustainability-assessment-forge/
      SKILL.md
      references/
        agri-bio-process-audit.md
        anaerobic-digestion-microbiome-metabolome.md
        electrochemical-systems-audit.md
        lca-boundary-and-functional-unit.md
        policy-portfolio-and-safe-boundary.md
        tea-cost-driver-and-scale-up.md
        uncertainty-scenario-and-scale-up.md
      templates/
        agri-bio-process-audit.md
        agri-bio-process-schema.csv
        anaerobic-digestion-systems-audit.md
        lca-tea-audit.md
        lca-tea-extraction-schema.csv
        policy-portfolio-scenario-schema.csv
        scale-up-readiness-checklist.md
        scenario-sensitivity-matrix.csv
  docs/
    method-sources.md
    reading-list.md
    source-crosswalk.md
    version-roadmap.md
```

## Design Principles

- Keep AI orchestration separate from deterministic calculation.
- Keep human judgment visible.
- Treat uncertainty and scenario design as core outputs, not decoration.
- Do not let performance metrics substitute for comparable sustainability metrics.
- Audit scale-up claims before repeating them.

Recent additions also support safe-boundary and policy-portfolio framing, so the repository can audit papers that compare technical measures with broader sectoral or structural pathways instead of stopping at one intervention.
It also now includes an anaerobic-digestion systems branch for microbiome-metabolome and methane-performance papers.

## Method Sources

See:

- [`docs/method-sources.md`](docs/method-sources.md)
- [`docs/source-crosswalk.md`](docs/source-crosswalk.md)
- [`docs/reading-list.md`](docs/reading-list.md)
- [`docs/version-roadmap.md`](docs/version-roadmap.md)
