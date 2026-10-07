# Arm-1 exclusions, round 2 (2026-08-11)

Units `09` and `31`, taken out of the arm-1 corpus. Nothing downstream reads this folder. It is here so the exclusion can be inspected and undone. Round 1 is described in [`../README.md`](../README.md).

## Why

Both units contain their own application root. The harness already supplies one, and the transplanted scope must not contain a `MaterialApp`, `WidgetsApp` or `CupertinoApp`: a nested root would put framework re-initialisation inside the measured span, so the timing would no longer describe the widget's own rebuild. Each `base.dart` returns a `MaterialApp` (`09` at line 127, `31` at line 108), and so do the mutations made from them. In their source repositories both scopes were app roots with nothing above them. The criterion matches exactly these 2 of the 68 curated units.

The units were dropped, not repaired. Removing the `MaterialApp` would change the structure that is being measured.

A third arm-1 group, `46`, is also not analysed. It was interrupted with 2 to 9 executions per role against the required 15. Its sources are in `../../arm1-widgets/46/`, and its measurements are not in this release.

| id | node type | source repository | source file |
|---|---|---|---|
| `09` | `BlocConsumer` | `SatoshiPortal_bullbitcoin-mobile` | `lib/features/wizard/ui/wizard_app.dart` |
| `31` | `State` | `nknorg_nMobile` | `lib/components/layout/drop_down_scale_layout.dart` |

## What is here

- `samples/09/`, `samples/31/`: the sources, 10 `.dart` files each (`base.dart`, `dependencies.dart`, `mutation_1..8.dart`).
- `dataset/09/`: the Redmi 9T measurements (sessions `20260730-125607` and `20260730-125649`): `performance.jsonl`, `rebuilds.jsonl`, `pairs.jsonl` and `raw/` logs. `dataset/31/` holds only `static.jsonl`, because `31` was measured only on an earlier pilot phone whose data is not released.
- `*_excluded.jsonl` and `*_excluded.csv`: the units' rows, taken out of the matching files in `arm1-widgets/` with row order and key order unchanged. `mutations_excluded.jsonl` has 40 rows (24 for `09`, 16 for `31`).

Ids were not renumbered, so `arm1-widgets/` and `arm1-measurements/` have gaps at `09` and `31`. Measured data is keyed by group id, so renumbering would have meant rewriting every group above `09`.

## Undoing it

1. Move `samples/{09,31}` into `arm1-widgets/` and `dataset/{09,31}` into `arm1-measurements/`.
2. Append each `*_excluded.jsonl` and `*_excluded.csv` back into the file it came from and sort again by the `number` or `group` column. The rows keep their original ids.
