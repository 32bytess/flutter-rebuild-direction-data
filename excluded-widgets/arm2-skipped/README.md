# Arm-2 groups skipped before measurement

22 arm-2 groups that were taken out of the corpus before analysis, so none of them is in the analysed corpus. Each folder `<group>/` holds the transplanted revisions (`rev_NNN_<sha>.dart`) and the `dependencies.dart` that was tried. They used to sit in the arm-2 corpus (`arm2-widgets/`, called `new_samples/` by the code) as `_skip_<group>/`. Nothing downstream reads this folder. Every repository below is listed in `../../SOURCES.md`.

Where the reason is recorded depends on the group:

- `fixture: <rule_id>`: the group's `fixture_provenance.json` (10 folders) says why a binding could not be filled, for example `ticker_provider`.
- `render: <verdict>`: the render check in `../../arm2-widgets/exclusions.json` (`render` block) found that the widget painted nothing (`renders_nothing`) or an error (`renders_error`) on the phone.
- `released: ...`: the code repository's `config/measured_freeze.json` records why the group was released from the freeze.

The `groups` rows in `exclusions.json` all say `eligible: true`, so they do not give the reason. Two groups, `2407` and `2466`, have no reason recorded in any of these files.

One group, `0508`, was measured before its fixture was found to render some revisions as one flat colour; its files in `arm2-measurements/0508` are kept but not analysed. Six others (`0352`, `0527`, `0660`, `0690`, `0853`, `1417`) have only a short telemetry file from a session that stopped before any measurement.

| group | repository | revisions | recorded reason |
|---|---|---|---|
| `0352` | jangviktor-web/nihaixia-app | 2 | fixture: `ticker_provider` |
| `0508` | sunyongsheng/Allpass | 31 | render: `renders_nothing`; released: R22 on 7 role(s): painted one flat colour -- fixture being repaired, re-measure owed |
| `0516` | sunyongsheng/Allpass | 13 | released: R21 on 5 role(s): a _Stub reached a statically typed slot and build threw -- fixture repaired in dependencies.dart, re-measure owed |
| `0527` | sunyongsheng/Allpass | 17 | fixture: `object_type_out_of_scope` |
| `0660` | abdulmominsakib/localmind | 12 | fixture: `object_type_out_of_scope` |
| `0690` | abdulmominsakib/localmind | 7 | fixture: `class_standin_authored` |
| `0752` | abdulmominsakib/localmind | 7 | render: `renders_error` |
| `0753` | abdulmominsakib/localmind | 6 | render: `renders_nothing`; released: R22 on 2 role(s): painted one flat colour -- fixture being repaired, re-measure owed |
| `0837` | abdulmominsakib/localmind | 2 | render: `renders_nothing`; released: R22 on 2 role(s): painted one flat colour -- fixture being repaired, re-measure owed |
| `0853` | JGeek00/linkdy | 15 | fixture: `class_standin_authored` |
| `0869` | JGeek00/linkdy | 6 | fixture: `class_standin_authored` |
| `0994` | biplobsd/running_services_monitor | 2 | render: `renders_nothing`; released: R22 on 2 role(s): painted one flat colour -- fixture being repaired, re-measure owed |
| `1417` | go-vikunja/app | 3 | fixture: `class_standin_authored` |
| `1468` | traccar/traccar-client | 12 | render: `renders_nothing`; released: R22 on 3 role(s): painted one flat colour -- fixture being repaired, re-measure owed |
| `2052` | bennybar/LuliReddit | 10 | render: `renders_nothing`; released: R22 on 2 role(s): painted one flat colour -- fixture being repaired, re-measure owed |
| `2283` | easychen/openMode | 3 | render: `renders_nothing` |
| `2379` | GeorgeYT9769/cardabase-app | 3 | render: `renders_nothing`; released: R22 on 3 role(s): painted one flat colour -- fixture being repaired, re-measure owed |
| `2407` | flutterclaw/flutterclaw | 16 | — |
| `2411` | flutterclaw/flutterclaw | 17 | render: `renders_error` |
| `2466` | flutterclaw/flutterclaw | 5 | — |
| `2639` | kaungsatthe1n/Tako-Play | 2 | render: `renders_nothing` |
| `2644` | kaungsatthe1n/Tako-Play | 2 | render: `renders_nothing` |
