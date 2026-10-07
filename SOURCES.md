# Sources

The open-source repositories whose code is in this release, and what each contributed. Licences and copyright notices are in
`THIRD_PARTY_NOTICES.md`.

The tables are generated from the released files named in each heading. Repository names are the ones GitHub shows today;
the files record some of them as `owner_repo` (arm 1) or in lower case.

## 1. Repositories whose code is in this release (36)

### Arm 1: the eight applications behind the generated variants

From `arm1-widgets/sources.csv` (66 hand-screened units) and the analysed contrasts in the code repository's
`analysis/data/redmi9t_pairs_labelled.csv`. A *group* is one seed widget with all its generated variants. The arm-2
forest is trained on the variant-to-variant (`mut_mut`) contrasts of these seeds.

| repository | licence | units screened | groups analysed | contrasts analysed |
|---|---|---|---|---|
| [amugofjava/anytime_podcast_player](https://github.com/amugofjava/anytime_podcast_player) | BSD-3-Clause | 1 | 1 | 36 |
| [deckerst/aves](https://github.com/deckerst/aves) | BSD-3-Clause | 19 | 9 | 316 |
| [DompetApp/Dompet.flutter](https://github.com/DompetApp/Dompet.flutter) | Apache-2.0 | 7 | 7 | 252 |
| [fluttercandies/wechat_flutter](https://github.com/fluttercandies/wechat_flutter) | Apache-2.0 | 11 | 6 | 208 |
| [Hash-Studios/Prism](https://github.com/Hash-Studios/Prism) | BSD-3-Clause | 5 | 4 | 136 |
| [nknorg/nMobile](https://github.com/nknorg/nMobile) | Apache-2.0 | 3 | 2 | 72 |
| [SatoshiPortal/bullbitcoin-mobile](https://github.com/SatoshiPortal/bullbitcoin-mobile) | MIT | 14 | 10 | 306 |
| [WheretoSleepinNJU/NJU-Class-Shedule-Flutter](https://github.com/WheretoSleepinNJU/NJU-Class-Shedule-Flutter) | Apache-2.0 | 6 | 4 | 128 |
| **total** | | **66** | **43** | **1454** |

### Arm 2: the 24 repositories whose real code changes were measured

From `arm2-widgets/id_map.json` (groups kept in the corpus), `arm2-measurements/` (groups with device data) and the code
repository's `analysis/data/arm2_population.json` (scopes and pairs in the evaluated population, an upper bound before the
label step). A *scope* is one rebuild scope with all its revisions. `-` means the repository has no pair in that population.

| repository | licence | groups in corpus | groups measured | scopes in population | pairs in population |
|---|---|---|---|---|---|
| [0-manbir/minimalauncher](https://github.com/0-manbir/minimalauncher) | MIT | 3 | 3 | 2 | 15 |
| [1812z/HyperIsland](https://github.com/1812z/HyperIsland) | MIT | 1 | 1 | 1 | 10 |
| [abdulmominsakib/localmind](https://github.com/abdulmominsakib/localmind) | MIT | 10 | 7 | 3 | 40 |
| [AmanSikarwar/freedium_mobile](https://github.com/AmanSikarwar/freedium_mobile) | MIT | 2 | 2 | 2 | 13 |
| [baderouaich/flutter_syntax_view](https://github.com/baderouaich/flutter_syntax_view) | MIT | 1 | 1 | 1 | 7 |
| [biplobsd/running_services_monitor](https://github.com/biplobsd/running_services_monitor) | MIT | 2 | 1 | 1 | 1 |
| [flutterclaw/flutterclaw](https://github.com/flutterclaw/flutterclaw) | MIT | 4 | 1 | 1 | 27 |
| [GeorgeYT9769/cardabase-app](https://github.com/GeorgeYT9769/cardabase-app) | MIT | 8 | 7 | 5 | 105 |
| [go-vikunja/app](https://github.com/go-vikunja/app) | MIT | 1 | 1 | - | - |
| [IsaiasCuvula/flutter_riverpod_todo_app](https://github.com/IsaiasCuvula/flutter_riverpod_todo_app) | MIT | 2 | 2 | 2 | 9 |
| [jangviktor-web/nihaixia-app](https://github.com/jangviktor-web/nihaixia-app) | Apache-2.0 | 2 | 2 | 1 | 2 |
| [JGeek00/linkdy](https://github.com/JGeek00/linkdy) | Apache-2.0 | 5 | 4 | 2 | 6 |
| [KyleKun/one_second_diary](https://github.com/KyleKun/one_second_diary) | MIT | 1 | 1 | - | - |
| [mllrr96/Neumorphic-Calculator](https://github.com/mllrr96/Neumorphic-Calculator) | MIT | 1 | 1 | 1 | 1 |
| [sanzoghenzo/markdownr](https://github.com/sanzoghenzo/markdownr) | MIT | 1 | 1 | 1 | 7 |
| [seemoo-lab/pairsonic](https://github.com/seemoo-lab/pairsonic) | Apache-2.0 | 1 | 1 | 1 | 1 |
| [sketchide/SketchIDE](https://github.com/sketchide/SketchIDE) | MIT | 5 | 5 | 5 | 5 |
| [SrS2225a/custom_uploader](https://github.com/SrS2225a/custom_uploader) | MIT | 2 | 2 | 2 | 3 |
| [sunyongsheng/Allpass](https://github.com/sunyongsheng/Allpass) | Apache-2.0 | 5 | 4 | - | - |
| [SushiiReboot/Nothing-Clock](https://github.com/SushiiReboot/Nothing-Clock) | MIT | 3 | 3 | 3 | 8 |
| [theakhinabraham/doable-todo-list-app](https://github.com/theakhinabraham/doable-todo-list-app) | MIT | 2 | 2 | - | - |
| [TheAlphaApp/flutter_riverpod_todo_app](https://github.com/TheAlphaApp/flutter_riverpod_todo_app) | MIT | 1 | 1 | 1 | 2 |
| [UCSD/campus-mobile](https://github.com/UCSD/campus-mobile) | MIT | 1 | 1 | - | - |
| [zapstore/zapstore](https://github.com/zapstore/zapstore) | MIT | 1 | 1 | 1 | 1 |
| **total (24 repositories)** | | **65** | **55** | **36** | **263** |

### Arm 2: 4 repositories screened into the corpus but never measured

Each of these has a group in the corpus map, but no group reached the phone. Their code is kept only as the exclusion record,
in `excluded-widgets/arm2-skipped/` and `arm2-mining/fixtures/`, so the screen's decisions can be inspected. It is not in
`arm2-widgets/`, and it enters no result.

| repository | licence | groups in corpus map |
|---|---|---|
| [bennybar/LuliReddit](https://github.com/bennybar/LuliReddit) | MIT | 1 |
| [easychen/openMode](https://github.com/easychen/openMode) | MIT | 1 |
| [kaungsatthe1n/Tako-Play](https://github.com/kaungsatthe1n/Tako-Play) | MIT | 2 |
| [traccar/traccar-client](https://github.com/traccar/traccar-client) | Apache-2.0 | 1 |

The code from these repositories, and from the packages in section 2, is not covered by this release's CC BY 4.0 licence.

## 2. Packages inlined into arm-2 code

Eight package versions from pub.dev were inlined into some arm-2 widgets (all MIT). They are listed with version, licence and
copyright in `THIRD_PARTY_NOTICES.md`.

## 3. Other records

`repo-candidates/` (the collector's search results) and `arm2-mining/` (the history mine's index files) are raw records of how
repositories were found and walked. A repository appearing there was not necessarily used. The two tables above are the
statement of use.
