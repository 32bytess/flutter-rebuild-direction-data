// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  GeneratedWidget.fixture({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late RecentWatchManager _;

  @override
  void initState() {
    super.initState();
    _ = fixture;
  }

  final recentWatchManager = Get.find<RecentWatchManager>();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      itemCount: recentWatchManager.animeList.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: UniqueKey(),
          onDismissed: (_) {
            /* spm: non-rebuild body erased */
          },
          direction: DismissDirection.endToStart,
          background: const Icon(Icons.delete_rounded, color: tkGradientBlue),
          child: RecentAnimeCard(
            id: recentWatchManager.animeList[index].id,
            currentEp: recentWatchManager.animeList[index].currentEp,
            epUrl: recentWatchManager.animeList[index].epUrl,
            name: recentWatchManager.animeList[index].name,
            imageUrl: recentWatchManager.animeList[index].imageUrl,
            // animeUrl: recentWatchManager.animeList[index].animeUrl,
          ),
        );
      },
    );
  }
}

class RecentAnimeCard extends StatelessWidget {
  const RecentAnimeCard({
    Key? key,
    required this.currentEp,
    required this.epUrl,
    required this.name,
    required this.imageUrl,
    // required this.animeUrl,
    required this.id,
  }) : super(key: key);
  final String id;
  final String name;
  final String currentEp;
  final String imageUrl;
  final String epUrl;
  // final String animeUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.black38,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(6),
          onLongPress: () {
            /* spm: non-rebuild body erased */
          },
          onTap: () {
            /* spm: non-rebuild body erased */
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: NetworkImageWithCacheManager(imageUrl: imageUrl),
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 12,
                            ),
                            child: Text(
                              name,
                              style: TakoTheme.darkTextTheme.displaySmall!
                                  .copyWith(fontSize: 18.0),
                              maxLines: 2,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 12,
                            ),
                            child: Text(
                              currentEp,
                              style: TakoTheme.darkTextTheme.titleSmall!
                                  .copyWith(
                                    color: const Color(0xFF58E6DE),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: IconButton(
                  onPressed: () {
                    /* spm: non-rebuild body erased */
                  },
                  icon: const Icon(Icons.play_arrow),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NetworkImageWithCacheManager extends StatelessWidget {
  const NetworkImageWithCacheManager({Key? key, required this.imageUrl})
    : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      key: UniqueKey(),
      cacheManager: CustomCacheManager.instance,
      errorWidget: (context, _, widget) {
        return const Icon(Icons.error_sharp);
      },
      imageUrl: imageUrl,
      fit: BoxFit.cover,
    );
  }
}





















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
