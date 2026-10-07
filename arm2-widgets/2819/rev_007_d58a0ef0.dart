// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late final List<League> leagues;
  late final bool getFixtures;
  late final int? initialSelectedLeagueId;
  late final Widget? prefixIcon;
  late final VoidCallback? onPrefixIconTap;

  @override
  void initState() {
    super.initState();
    leagues = fixtureLeagues;
    getFixtures = fixtureGetFixtures;
    initialSelectedLeagueId = fixtureInitialSelectedLeagueId;
    prefixIcon = fixturePrefixIcon;
    onPrefixIconTap = fixtureOnPrefixIconTap;
    selectedLeagueId = fixtureSelectedLeagueId;
  }

  late int? selectedLeagueId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: SizedBox(
        height: 48,
        child: Row(
          spacing: 8,
          children: [
            if (prefixIcon != null)
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    /* spm: non-rebuild body erased */
                  },
                  child: prefixIcon,
                ),
              ),
            Expanded(
              child: ListView.separated(
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: leagues.length,
                separatorBuilder: (_, _) =>
                    const SizedBox(width: AppSpacing.xs),
                itemBuilder: (context, index) {
                  final viewCountryName = leagues.any((l) {
                    return l.name == leagues[index].name &&
                        l.id != leagues[index].id;
                  });
                  return MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: InkWell(
                      onTap: () {
                        /* spm: non-rebuild body erased */
                      },
                      child: LeagueCard(
                        league: leagues[index],
                        isSelected:
                            selectedLeagueId == leagues[index].id,
                        viewCountryName: viewCountryName,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LeagueCard extends StatelessWidget {
  const LeagueCard({
    super.key,
    required this.league,
    this.isSelected = false,
    this.viewCountryName = false,
  });

  final League league;
  final bool isSelected;
  final bool viewCountryName;

  @override
  Widget build(BuildContext context) {
    final leagueTitle =
        league.name +
        (viewCountryName && league.country != null
            ? ' (${league.country?.name})'
            : '');

    return Transform.scale(
      scale: isSelected ? 1.01 : 1.0,
      child: Container(
        constraints: const BoxConstraints(minWidth: 84, maxWidth: 220),
        height: 36,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: isSelected ? context.colorsExt.redGradient : null,
          color: isSelected
              ? null
              : league.color != null
              ? league.color!.toColor
              : context.colorsExt.blueGrey,
          border: isSelected
              ? Border.all(color: context.colorsExt.white, width: 2)
              : null,
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacitySafe(0.25),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ]
              : null,
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImage(width: 18, height: 18, imageUrl: league.logo),
              const SizedBox(width: AppSpacing.xs),
              Text(
                leagueTitle,
                softWrap: false,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: context.colorsExt.white,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Represents the custom image entity/model.
class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
    this.placeholder,
    this.errorWidget,
    this.fit,
  });

  final String imageUrl;
  final double? height;
  final double? width;
  final Widget? placeholder;
  final Widget? errorWidget;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    if (imageUrl.toLowerCase().endsWith('.svg')) {
      return SvgPicture.network(
        imageUrl,
        height: height,
        width: width,
        fit: fit ?? BoxFit.contain,
        placeholderBuilder: (_) =>
            placeholder ??
            SizedBox(
              height: height,
              width: width,
              child: const DecoratedBox(
                decoration: BoxDecoration(color: Colors.transparent),
              ),
            ),
      );
    }

    return CachedNetworkImage(
      imageUrl: imageUrl,
      height: height,
      width: width,
      fit: fit,
      fadeInDuration: const Duration(milliseconds: 150),
      placeholder: (_, _) =>
          placeholder ??
          SizedBox(
            height: height,
            width: width,
            child: const DecoratedBox(
              decoration: BoxDecoration(color: Colors.transparent),
            ),
          ),
      errorWidget: (_, _, _) {
        return errorWidget ?? const SizedBox.shrink();
      },
    );
  }
}





















// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
