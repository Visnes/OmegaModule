# Omega Module

> [!WARNING]
> ## Factorio 2.1 Experimental Version
>
> This branch is intended **only for Factorio 2.1 Experimental**.
>
> For Factorio 2.0, use the `main` branch.
>
> This version may change as Factorio 2.1 develops and is not considered stable.

This mod adds an endgame Omega Module that combines the effects of Speed, Efficiency, Productivity and Quality modules into a single module item.

<img width="512" height="512" alt="thumbnail" src="https://github.com/user-attachments/assets/2d2aade3-b416-467d-b802-014676891212" />

## How it works

Each Omega Module tier combines the effects of a Speed, Efficiency, Productivity
and Quality module into a single item, so one module slot does the job of four.
That power comes with a matching downside: a pollution penalty, a steep
research/recipe cost, and (outside easy mode) a hefty weight that limits how
you can ship them around.

| Tier | Speed | Efficiency | Productivity | Quality | Pollution |
|---|---|---|---|---|---|
| Omega Module   | +20% | -30% | +4%  | +10% | +1%   |
| Omega Module 2 | +30% | -40% | +6%  | +20% | +2.5% |
| Omega Module 3 | +50% | -50% | +10% | +25% | +5%   |

- Works in assembling machines, furnaces, mining drills, biochambers and
  foundries. **It cannot be placed in beacons** — beacons reject any module
  that carries productivity or quality effects, which every Omega Module does.
- Each tier's recipe consumes the previous tier: Omega Module 2 needs Omega
  Modules, Omega Module 3 needs Omega Module 2s. By default (normal recipes)
  each recipe also needs Space Age intermediates (processing units, tungsten
  carbide, holmium plate, bioflux for tier 1; quantum processors for tier 2;
  pentapod eggs, supercapacitors, quantum processors and tungsten plate for
  tier 3). With **Easy recipes** enabled, each recipe only needs the matching
  tier of vanilla Speed/Efficiency/Productivity/Quality modules, plus the
  previous Omega Module tier for tiers 2 and 3 — no other resources.
- Unlock requirements: Omega Module needs Vulcanus, Gleba and Fulgora
  discovered plus all four tier-1 modules researched. Omega Module 2 needs
  Aquilo discovered plus all four tier-2 modules researched. Omega Module 3
  needs the Captivity technology, promethium science packs, and all four
  tier-3 modules researched.
- **Weight & transport:** by default, Factorio auto-calculates each module's
  weight from its recipe, which makes tier 3 too heavy to send by rocket or
  space platform (tiers 1 and 2 are light enough to ship). With **Easy
  recipes** enabled, all three tiers instead get a flat, rocket-friendly
  weight, so full stacks of any tier — including tier 3 — can be shipped.

## Settings

All settings are **Startup** settings (change them before starting/loading a
save; a mod update won't reset values you've already set).

| Setting | Default | What it does |
|---|---|---|
| Easy recipes | Off | Recipes only require lower-tier modules instead of other resources — see "How it works" above. Also gives all tiers a flat, easily-shippable weight. |
| Pollution Penalty | On | Adds the per-tier pollution penalty (1% / 2.5% / 5%) to Omega Modules. |
| Enable Speed Effect | On | Toggles the speed bonus. |
| Enable Productivity Effect | On | Toggles the productivity bonus. |
| Enable Efficiency Effect | On | Toggles the energy consumption bonus (shown in-game as "Efficiency"). |
| Enable Quality Effect | On | Toggles the quality bonus. |
| Science Pack Multiplier | 1 (range 0-10) | Multiplies the science pack cost of the three Omega Module technologies. `0` is half the default cost; higher values make research more expensive. |

Disabling an effect toggle removes that effect from the module entirely (it
doesn't just hide it) — it's a clean way to rebalance the mod for your game
without editing files.

## Screenshots
<p align="center">
  <img src="screenshots/OmegaModule-FP-1.png" width="30%" valign="top">
  <img src="screenshots/OmegaModule-FP-2.png" width="30%" valign="top">
  <img src="screenshots/OmegaModule-FP-3.png" width="30%" valign="top">
</p>

## Installation
1. Use the ingame mod browser
2. Search for Omega Module
3. Click install

License: MIT
