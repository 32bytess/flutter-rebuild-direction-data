// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'dart:async';
import 'package:flutter/material.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  GeneratedWidget.fixture({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  @override
  void initState() {
    super.initState();
    _tabController = fixtureTabController;
    _onlineContent = fixtureOnlineContent;
    _localContent = fixtureLocalContent;
  }

  late TabController _tabController;

  late String _onlineContent;

  late String _localContent;

  Future<void> fetchOnlineContent() async {
    /* spm: non-rebuild body erased */
  }

  Future<void> fetchLocalContent() async {
    /* spm: non-rebuild body erased */
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Changelog', style: theme.textTheme.titleLarge?.copyWith()),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: theme.colorScheme.surface,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: theme.colorScheme.secondary,
            ),
            onPressed: () {
              /* spm: non-rebuild body erased */
            },
          ),
        ],
        bottom: TabBar(
          physics: const BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.fast,
          ),
          controller: _tabController,
          labelStyle: theme.textTheme.bodyLarge?.copyWith(
            color: theme.colorScheme.inverseSurface,
            fontSize: 18,
          ),
          unselectedLabelStyle: theme.textTheme.bodyLarge?.copyWith(
            color: theme.colorScheme.tertiary,
            fontSize: 18,
          ),
          indicatorColor: theme.colorScheme.inverseSurface,
          splashFactory: NoSplash.splashFactory,
          tabs: const [
            Tab(text: 'Online'),
            Tab(text: 'Local'),
          ],
        ),
      ),
      body: TabBarView(
        physics: const BouncingScrollPhysics(
          decelerationRate: ScrollDecelerationRate.fast,
        ),
        controller: _tabController,
        children: [
          RefreshIndicator(
            onRefresh: fetchOnlineContent,
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16.0),
              children: [
                Text(
                  _onlineContent,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.colorScheme.inverseSurface,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          RefreshIndicator(
            onRefresh: fetchLocalContent,
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16.0),
              children: [
                Text(
                  _localContent,
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: theme.colorScheme.inverseSurface,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
