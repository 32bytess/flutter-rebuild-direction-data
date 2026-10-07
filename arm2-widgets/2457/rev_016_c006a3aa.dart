// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'dart:async';
import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late final LoyaltyCard loyaltyCard;

  @override
  void initState() {
    super.initState();
    loyaltyCard = fixtureLoyaltyCard;
    canCreateCardWidget = canCreateCardWidgetValue;
    cardsBox = fixtureCardsBox;
    settingsBox = fixtureSettingsBox;
  }

  late Box<LoyaltyCard> cardsBox;

  late Box<Settings> settingsBox;

  Future<void> _createCardWidget() async {
    /* spm: non-rebuild body erased */
  }

  Future<void> _editCard() async {
    /* spm: non-rebuild body erased */
  }

  Future<void> _duplicateCard() async {
    /* spm: non-rebuild body erased */
  }

  Future<void> _moveCardUp() async {
    /* spm: non-rebuild body erased */
  }

  Future<void> _moveCardDown() async {
    /* spm: non-rebuild body erased */
  }

  Future<void> _deleteCard() async {
    /* spm: non-rebuild body erased */
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final sortingStyle = settingsBox.value.cardListViewOptions.sortingStyle;
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 50),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (canCreateCardWidget)
                ListTile(
                  leading: Icon(
                    Icons.widgets,
                    color: theme.colorScheme.tertiary,
                  ),
                  title: Text(
                    'Set as Widget',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight(700),
                    ),
                  ),
                  onTap: _createCardWidget,
                ),
              ListTile(
                leading: Icon(Icons.edit, color: theme.colorScheme.tertiary),
                title: Text(
                  'Edit',
                  style: theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight(700),
                  ),
                ),
                onTap: _editCard,
              ),
              ListTile(
                leading: Icon(Icons.copy, color: theme.colorScheme.tertiary),
                title: Text(
                  'Duplicate',
                  style: theme.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight(700),
                  ),
                ),
                onTap: _duplicateCard,
              ),
              if (sortingStyle == SortingStyle.custom) ...[
                ListTile(
                  leading: Icon(
                    Icons.arrow_upward,
                    color: theme.colorScheme.tertiary,
                  ),
                  title: Text(
                    'Move UP',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight(700),
                    ),
                  ),
                  onTap: _moveCardUp,
                ),
                ListTile(
                  leading: Icon(
                    Icons.arrow_downward,
                    color: theme.colorScheme.tertiary,
                  ),
                  title: Text(
                    'Move DOWN',
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight(700),
                    ),
                  ),
                  onTap: _moveCardDown,
                ),
              ],
              ListTile(
                leading: const Icon(Icons.delete, color: Colors.red),
                title: Text(
                  'DELETE',
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: Colors.red,
                    fontWeight: FontWeight(700),
                  ),
                ),
                onTap: _deleteCard,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

@HiveType(typeId: HiveTypeIds.sortingStyle)
enum SortingStyle {
  @HiveField(0)
  nameAz,
  @HiveField(1)
  nameZa,
  @HiveField(2)
  latest,
  @HiveField(3)
  oldest,
  @HiveField(4)
  custom,
  @HiveField(5)
  mostUsed,
  @HiveField(6)
  leastUsed,
}




























// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
