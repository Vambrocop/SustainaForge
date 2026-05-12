# Anaerobic Digestion Microbiome-Metabolome Systems Audit

Use this reference for anaerobic digestion papers that connect microbial community structure, dissolved organic matter or metabolite composition, and system performance such as methane production, energy recovery, or process stability.

## Running Example

Yang, Zhao, Feng, Wang, Liu, Peng, He, Lu, Waseem, Wang, Winkler, Salles, and Deng (2026), *Microbial synthesis structures organic compound composition in anaerobic digestion*, *The ISME Journal*, DOI `10.1093/ismejo/wrag036`.

Publicly available article information indicates:

- a three-month survey;
- seven full-scale digesters across seven cities;
- high-resolution dissolved organic matter profiling plus microbial community sequencing;
- `28,925` DOM molecules detected;
- a conserved core of `1,154` metabolites;
- a persistent and microbially associated mass window at `183.57-390.81 m/z`;
- microbial community composition and feedstock jointly explaining roughly `30.1%-43.4%` of spatiotemporal variation within that window;
- close links between biosynthetic microbial metabolites, methane production, and system performance.

## Why This Pattern Matters

Many anaerobic-digestion papers stop at one layer:

- community composition only;
- metabolite pool only;
- methane or biogas output only.

This paper is useful because it integrates:

1. engineered-system sampling design;
2. molecular DOM profiling;
3. microbiome structure;
4. microbe-metabolite network structure;
5. process-performance interpretation.

That makes it a strong model for systems papers where the goal is not just to describe a digester, but to explain how biological synthesis and transformation organize process performance.

## What To Learn From It

### 1. Biosynthesis is a process signal, not just degradation background

The study argues that microbial synthesis metabolism, not only substrate breakdown, structures the observed DOM composition.

### 2. Full-scale systems matter

The design uses full-scale digesters rather than only lab reactors, which makes the lessons more relevant for engineering translation.

### 3. Feedstock and microbiome should be interpreted together

Feedstock inputs and microbial community structure jointly shape the metabolite environment.

### 4. Molecular windows can be system-relevant

The highlighted mass window suggests that not all DOM fractions are equally informative for process monitoring or optimization.

### 5. Performance interpretation needs a bridge

The paper connects molecular ecology to methane production and system performance, which is exactly the bridge most sustainability or optimization discussions need.

## Minimum Extraction Fields

- digester type and scale;
- number of facilities and sampling duration;
- feedstock categories;
- DOM measurement platform;
- microbial measurement platform;
- key molecular window or molecular class;
- variance explained by microbial composition and feedstock;
- microbe-metabolite association metric;
- methane, biogas, or energy-recovery metric;
- operational covariates;
- optimization implication;
- interpretation limit.

## Audit Questions

- Is the study full-scale, pilot-scale, or lab-scale?
- Are feedstocks characterized well enough to interpret metabolite differences?
- Is the paper identifying correlation, co-occurrence, or mechanistic coupling?
- Which molecular classes or m/z ranges are emphasized, and why?
- Are methane or process metrics used only as outcomes, or also as integrative indicators?
- Are operational conditions, retention times, temperature, and loading rates visible?
- Does the paper make an optimization claim that is stronger than the evidence supports?

## Prompt Skeleton

```text
Use sustainability-assessment-forge to audit this anaerobic-digestion systems paper.

Feedstock:
Scale:
Microbial measurement:
Metabolite measurement:
Performance metric:
Main claim:

Return:
1. microbiome-metabolome systems card;
2. feedstock and operational-context audit;
3. performance-link plausibility check;
4. optimization relevance;
5. scale-up and monitoring implications.
```

## Public Sources Used

- Article page: https://academic.oup.com/ismej/article/20/1/wrag036/8492921
- PMC full text: https://pmc.ncbi.nlm.nih.gov/articles/PMC12978654/
