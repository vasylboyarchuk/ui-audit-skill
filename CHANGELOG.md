# Changelog

## 2026-04-08 — v1.0.0 (initial release)

### Sources
- *Refactoring UI* by Adam Wathan & Steve Schoger
- *Practical UI* by Adham Dannaway

### Structure
- 50 rules across 9 categories
- Categories ordered from big-picture to detail:
  Perception → Hierarchy → Layout → Typography → Color →
  Depth → Components → Accessibility → Finishing Touches
- Dedicated audit page written directly into the Figma file
- Annotation cards color-coded by severity (high / medium / low)

### Rules added (initial set)
**Perception & Gestalt:** G1–G5
**Hierarchy:** H1–H10
**Layout & Spacing:** S1–S6
**Typography:** T1–T7
**Color:** C1–C5
**Depth & Shadows:** D1–D4
**Components & Patterns:** P1–P10
**Accessibility:** A1–A5
**Finishing Touches:** F1–F4

### Refinements made during authoring
- Removed overly specific violation examples (hardcoded hex values, pixel sizes, product-specific scenarios)
- Broadened C2 (color shades) from "one single blue" to any primary/accent color
- Broadened C5 (color-only meaning) from "red vs green" to any color-only distinction
- Broadened P3 (skeleton screens) from "dashboard" to any content-heavy screen
- Broadened P5 (selectable cards) from "pricing plan" to any important user choice
- Broadened P9 (background bleed) from "white photo on white" to any matching background
- Removed CSS implementation values from D3 and D4 fixes — kept design-level language
- Merged redundant rules: S1+G2 (proximity/grouping), G5+P4 (alignment), F3+D3 (borders vs shadows)
- Moved H3/H4 (font weights, text colors) to Hierarchy where they belong conceptually
- Removed per-source annotations — file is one coherent ruleset, not two books stitched together
