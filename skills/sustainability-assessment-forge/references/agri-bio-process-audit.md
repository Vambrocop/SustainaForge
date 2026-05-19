# Agri-Bio Process Audit

Use this reference for agricultural residues, biorefineries, bioenergy, biochar, digestate, manure, crop-processing wastes, lignocellulosic conversion, fermentation systems, and other biomass-linked process papers.

Key questions:

- What exactly is the feedstock, and on what basis is it measured: wet, dry, ash-free, volatile solids, or another basis?
- Is the feedstock truly residual, or does it have competing uses such as fodder, bedding, soil cover, compost, or fuel?
- Are moisture content, contamination, preprocessing, and storage losses visible?
- Is seasonality handled, or does the study implicitly assume year-round homogeneous supply?
- Is the transport radius realistic for the claimed plant scale?
- Are nutrient-return effects, digestate handling, ash handling, or soil-carbon effects counted or ignored?
- Are coproducts carrying most of the value or most of the environmental credit?
- Does the analysis depend on an idealized policy credit, tipping fee, or avoided-burden assumption?

Common hotspots:

- feedstock logistics and drying;
- low plant utilization due to seasonal supply;
- separations and upgrading for dilute streams;
- digestate, wastewater, or residue management;
- uncertain fertilizer substitution credit;
- land-use or soil-function tradeoffs that are left outside the boundary.

Interpretation rule:

Agricultural and bioprocess systems often look attractive because the feedstock seems cheap or negative-cost. That can be true, but only after the paper makes logistics, moisture, storage, contamination, coproduct use, and counterfactual handling explicit.

## Irrigation And Agricultural Adaptation

Use this pattern when a paper estimates yield gains from irrigation, drainage, water management, or other agricultural adaptation measures. Deines et al., *Irrigation Expansion in the US Corn Belt: Patterns and Yield Impacts* (*Earth's Future*, DOI: https://doi.org/10.1029/2025EF007566; main article and SI reviewed locally, data/code cited at Zenodo https://doi.org/10.5281/zenodo.17478972), is a useful example because it links remote-sensed irrigation expansion to crop-yield effects with causal forests.

Do not treat a positive yield effect as a full sustainability recommendation until the study makes the following visible:

- water demand and water source;
- groundwater stress or renewable water constraint;
- pumping energy and emissions;
- infrastructure and operating cost;
- drought-year versus normal-year performance;
- crop and nutrient-management interactions;
- spatial spillovers through humidity, cooling, or downstream water availability.
