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
        height: 40.height,
        child: Row(
          children: [
            if (prefixIcon != null) ...[
              GestureDetector(
                onTap: () {
                  /* spm: non-rebuild body erased */
                },
                child: prefixIcon,
              ),
              SizedBox(width: 5.width),
            ],
            Expanded(
              child: ListView.separated(
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: leagues.length,
                separatorBuilder: (_, _) {
                  return SizedBox(width: 5.width);
                },
                itemBuilder: (context, index) {
                  final viewCountryName = leagues.any((l) {
                    return l.name == leagues[index].name &&
                        l.id != leagues[index].id;
                  });
                  return InkWell(
                    onTap: () {
                      /* spm: non-rebuild body erased */
                    },
                    child: LeagueCard(
                      league: leagues[index],
                      isSelected: selectedLeagueId == leagues[index].id,
                      viewCountryName: viewCountryName,
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
  final League league;
  final bool isSelected;
  final bool viewCountryName;

  const LeagueCard({
    super.key,
    required this.league,
    this.isSelected = false,
    this.viewCountryName = false,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: isSelected ? 1.05 : 1.0, // Slightly scale up when selected
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.radius),
          gradient: isSelected ? AppColors.redGradient : null,
          color: isSelected
              ? null
              : league.color != null
              ? HexColor(league.color!)
              : AppColors.blueGrey,
          border: isSelected
              ? Border.all(
                  color: AppColors.white,
                  width: 2,
                ) // Add white border when selected
              : null,
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: AppColors.black.withOpacitySafe(0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ]
              : null, // Add shadow when selected
        ),
        child: Row(
          children: [
            CustomImage(
              width: 40.radius,
              height: 40.radius,
              imageUrl: league.logo,
            ),
            SizedBox(width: 5.width),
            Text(
              league.name +
                  (viewCountryName && league.country != null
                      ? ' (${league.country?.name})'
                      : ''),
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppColors.white,
                fontWeight: isSelected
                    ? FontWeight.bold
                    : FontWeight.normal, // Bold text when selected
              ),
            ),
            if (isSelected) // Add a checkmark icon when selected
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.check_circle,
                  color: AppColors.white,
                  size: 16,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

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
