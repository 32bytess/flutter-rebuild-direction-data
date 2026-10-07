// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late final String title;

  @override
  void initState() {
    super.initState();
    title = fixtureTitle;
    _intentDataStreamSubscription = fixtureIntentDataStreamSubscription;
    _settingsRepository = fixtureSettingsRepository;
    _url2MdConverter = fixtureUrl2MdConverter;
    article = fixtureArticle;
    _controller = fixtureController;
    url = fixtureUrl;
    markdown = fixtureMarkdown;
    includeSourceLink = fixtureIncludeSourceLink;
    includeFrontMatter = fixtureIncludeFrontMatter;
    includeExcerpt = fixtureIncludeExcerpt;
    includeBody = fixtureIncludeBody;
    showPreview = fixtureShowPreview;
  }

  late TextEditingController _controller;

  late StreamSubscription _intentDataStreamSubscription;

  late String url;

  late String markdown;

  late bool includeSourceLink;

  late bool includeFrontMatter;

  late bool includeExcerpt;

  late bool includeBody;

  late bool showPreview;

  late MarkdownArticle? article;

  late Url2MdConverter? _url2MdConverter;

  late SettingsRepository _settingsRepository;

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(title),
      actions: [
        PopupMenuButton<int>(
          onSelected: _handleSettings,
          itemBuilder: (context) => [
            PopupMenuItem<int>(
              child: CheckedPopupMenuItem(
                checked: includeFrontMatter,
                value: 1,
                child: const Text("Include front matter"),
              ),
            ),
            PopupMenuItem<int>(
              child: CheckedPopupMenuItem(
                checked: includeSourceLink,
                value: 2,
                child: const Text("Include URL in content"),
              ),
            ),
            PopupMenuItem<int>(
              child: CheckedPopupMenuItem(
                checked: includeExcerpt,
                value: 3,
                child: const Text("Include Excerpt"),
              ),
            ),
            PopupMenuItem<int>(
              child: CheckedPopupMenuItem(
                checked: includeBody,
                value: 4,
                child: const Text("Include Body"),
              ),
            ),
            PopupMenuItem<int>(
              child: CheckedPopupMenuItem(
                checked: showPreview,
                value: 5,
                child: const Text("Show Preview"),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Padding _buildUrlInput() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        decoration: const InputDecoration(hintText: 'Enter a URL'),
        onChanged: (value) {
          /* spm: non-rebuild body erased */
        },
        controller: _controller,
      ),
    );
  }

  Expanded _buildMarkdownView() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical, //.horizontal
          child: showPreview
              ? MarkdownBody(data: markdown)
              : Text(markdown, softWrap: true),
        ),
      ),
    );
  }

  Row _buildButtonsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            ElevatedButton(onPressed: _convert, child: const Text('CONVERT')),
          ],
        ),
        Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: markdown.isNotEmpty ? _share : null,
              child: const Text('SHARE'),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: markdown.isNotEmpty ? _toClipboard : null,
              child: const Text('COPY'),
            ),
          ],
        ),
      ],
    );
  }

  void _handleSettings(int result) {
    /* spm: non-rebuild body erased */
  }

  void _convert() async {
    /* spm: non-rebuild body erased */
  }

  void _share() {
    Share.share(markdown);
  }

  void _toClipboard() {
    Clipboard.setData(ClipboardData(text: markdown)).then((_) {
      /* spm: non-rebuild body erased */
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Column(
        children: <Widget>[
          _buildUrlInput(),
          _buildMarkdownView(),
          _buildButtonsRow(),
        ],
      ),
    );
  }
}
























// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
