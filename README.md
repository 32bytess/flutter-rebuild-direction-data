# flutter-rebuild-direction-data

Data for a study of whether a controlled structural change to a Flutter widget makes its rebuild slower or faster: device measurements, the two widget corpora, and the snapshots the analysis starts from.

The code that produced and analysed it is in [`flutter-rebuild-direction`](https://github.com/32bytess/flutter-rebuild-direction). Clone the two side by side. The code finds these folders through symlinks, and its README has the command that creates them.

To check that your copy is intact:

```bash
sha256sum -c MANIFEST.sha256 --quiet     # prints nothing if every file matches
```

## Contents

The code was written with older folder names, shown in the second column.

| folder | code name | contents |
|---|---|---|
| `arm1-measurements/` | `dataset` | Arm 1 device measurements for the 43 analysed seed groups, each with `redmi9t/` and `static.jsonl`. |
| `arm1-widgets/` | `samples` | Arm-1 widgets and their generated variants, 66 units. See its README. |
| `arm2-measurements/` | `dataset-new_samples` | Arm 2 device measurements, per group: `performance.jsonl`, `rebuilds.jsonl`, the per-execution `e<k>.jsonl` and `e<k>.log` files, screenshots and telemetry. The first line of each `e<k>.log` holds the execution's start time, which the labelling reads. |
| `arm2-widgets/` | `new_samples` | Arm-2 corpus: transplanted revisions of real commits, manifests and the exclusion screen's records. |
| `excluded-widgets/` | `samples_excluded` | Widgets and groups left out of the corpora, with the reason for each. See its README. |
| `arm2-mining/` | `probe_v2` | Trimmed copy of the arm-2 history mine: `fixtures/`, `checkpoints_screen/`, `targets.jsonl` and the index files in `samples_v2/`. The clones, worktrees and transplant bodies are not included. |
| `repo-candidates/` | `data` | Candidate repository lists, the collector database and the repository exclusion list. |

The notebooks and the small tables they start from (labelled contrasts, per-execution medians, folds, training set, arm-2 pair list) are in the code repository, under `analysis/`.

## Notes

- **Device.** Every measurement comes from one phone, a Redmi 9T (`redmi9t`). Nothing here supports a claim about other devices.
- **Paths.** Logs, JSONL files and manifests recorded absolute paths from the author's machine. Those prefixes are replaced by placeholders: `<ROOT>` for the code repository's root, `<ROOT>/../data` and `<ROOT>/../new_data` for the collector's data directories, and `<ANDROID_SDK>` and `<FLUTTER_SDK>` for the toolchain. Nothing else in a file was changed. Tools that follow a recorded path to the mine's clones cannot run, because the clones are not part of this release.
- **Generated content.** The arm-1 variants in `arm1-widgets/` were written by Claude Sonnet 5. They were first generated with other models (`codex`, `gemini`); those were dropped and every variant was regenerated with Claude. Their rows are still in `arm1-widgets/mutations.jsonl` (the `backend` field), but no variant file kept here comes from them. The `dependencies.dart` files in `arm2-widgets/` for authored groups were drafted with Claude Sonnet 5 as well; the code repository's README describes how.
- **Sources.** `SOURCES.md` lists the repositories whose code is in the release. `repo-candidates/` and `arm2-mining/` are raw search and mining records, not a statement of use.

## Licence

The data is released under CC BY 4.0, see `LICENSE`. That licence does not cover the third-party code inside the widgets. `arm1-widgets/`, `arm2-widgets/` and `excluded-widgets/` contain code transplanted from open-source Flutter repositories, plus some declarations from pub.dev packages inlined into it. That code keeps its own licence: the screen only let through MIT, Apache-2.0 and BSD-3-Clause. `THIRD_PARTY_NOTICES.md` lists every repository and package with its licence and copyright notice. Keep it with the widgets if you redistribute them.

## Citing

See `CITATION.cff`.
