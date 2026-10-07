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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'News',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w900,
            letterSpacing: 5,
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Theme.of(context).colorScheme.surface,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Theme.of(context).colorScheme.secondary,
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
          labelStyle: TextStyle(
            color: Theme.of(context).colorScheme.tertiary,
            fontSize: 18,
          ),
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
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inverseSurface,
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
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inverseSurface,
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
