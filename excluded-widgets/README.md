# excluded-widgets

Widgets and groups left out of the two corpora. Nothing downstream reads this folder. It is here so every exclusion can be inspected and undone. The code calls it `samples_excluded/`.

| folder | what | why |
|---|---|---|
| `17/`, `19/`, `25/`, `27/`, `28/` | Arm-1 round 1 (2026-07-19): five units removed after transplanting | An endless `CircularProgressIndicator` under `Offstage`; see below |
| `arm1-round2/` | Arm-1 round 2 (2026-08-11): units `09` and `31` | Each contains its own application root; see its README |
| `arm2-skipped/` | 22 arm-2 groups skipped before measurement | Per-group reasons in its README |

## Round 1

The five folders hold `base.dart`, `dependencies.dart` and the generated mutations. They keep their old ids, from before the renumbering below. `map_excluded.jsonl`, `sources_excluded.jsonl`, `analysis_excluded.jsonl` and `mutations_excluded.jsonl` are the records for these units, taken out of the matching files in `arm1-widgets/`.

Each unit has an endless `CircularProgressIndicator` guarded by `Offstage(offstage: !loading)`. `Offstage` hides its child but keeps it mounted, so the spinner's ticker runs forever whatever the `loading` fixture value is. Two things follow:

1. `pumpAndSettle` in the integration test never settles, so the run times out and produces no data.
2. A widget that animates all the time breaks the animation exclusion, because rebuild cost would be mixed up with frame scheduling.

The units were dropped, not repaired: making the indicator determinate, or replacing `Offstage` with a conditional, would change the transplanted structure that is being measured. Units that remove the indicator behind an ordinary `if` or ternary whose frozen input switches it off were kept, because in the false branch the widget is not in the tree at all.

The corpus was then renumbered without gaps. The old-to-new table is `../arm1-widgets/id_renumbering_20260719.json`.

The older READMEs in this folder used the old folder names. Read `samples/` as `arm1-widgets/`, `dataset/` as `arm1-measurements/`, `new_samples/` as `arm2-widgets/` and `samples_excluded/` as this folder. Measurements from an earlier pilot phone, which they mention, are not in this release.
