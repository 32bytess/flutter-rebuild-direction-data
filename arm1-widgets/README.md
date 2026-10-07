# arm1-widgets

The arm-1 seed widgets and their generated variants. The code calls this folder `samples/`, and the files keep the old ids.

## Which groups were measured

The corpus was curated as 68 widgets, numbered `01` to `68`. Measurement covered groups `01` to `46` and then stopped, because the time available ran out. Which groups were left out follows from their number and from whether they had a variant, not from any measured result.

| groups | count | status |
|---|---|---|
| `01`–`45` except `09`, `31` | 43 | measured and analysed: the 43 groups behind every arm-1 result |
| `09`, `31` | 2 | measured, then excluded because the scope contained its own application root. Files are in `../excluded-widgets/arm1-round2/` |
| `46` | 1 | interrupted with 2 to 9 of the 15 executions per role and no aggregated file. Excluded |
| `47`–`54` | 8 | have accepted variants, never reached |
| `55`–`68` | 14 | no accepted variant, so no contrast to measure |

This folder holds 66 units: the 68 curated minus `09` and `31`. It keeps group `46` and the 22 unmeasured units because the code's screen-calibration test runs against the full set of 66.

## Files

- `<id>/`: the base widget (`base.dart`), its `dependencies.dart` and the variants (`mutation_1..8.dart`).
- `sources.csv`, `sources.jsonl`, `map.csv`, `map.jsonl`: the repository, file and commit each unit came from.
- `mutations.jsonl`: every generated variant, its directive, its generator and whether it was accepted.
- `analysis.jsonl`: the static analysis of each unit.
- `source_commits.json`, `source_commits.jsonl`: provenance manifest, one row per unit (66 rows).
- `id_renumbering_20260719.json`: old-to-new id table from the first round of exclusions.
