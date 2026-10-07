// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  final AllpassType type;

  GeneratedWidget(this.type);

  GeneratedWidget.fixture({super.key}) : type = AllpassType.password;

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  @override
  void initState() {
    super.initState();
    searchController = fixtureSearchController;
    focusNode = fixtureFocusNode;
    type = fixtureType;
  }

  late AllpassType type;

  late TextEditingController searchController;

  late FocusNode focusNode;

  Widget buildSearchResultItem(SearchProvider provider, int index) {
    if (type == AllpassType.password) {
      var item = provider.passwordSearch[index];
      return PasswordWidgetItem(
        data: item,
        onPasswordClicked: () {
          /* spm: non-rebuild body erased */
        },
      );
    } else if (type == AllpassType.card) {
      var item = provider.cardSearch[index];
      return SimpleCardWidgetItem(
        data: provider.cardSearch[index],
        onCardClicked: () {
          /* spm: non-rebuild body erased */
        },
      );
    }
    return Container();
  }

  /// 搜索栏
  Widget searchWidget(SearchProvider provider) {
    var l10n = context.l10n;
    return Container(
      padding: EdgeInsets.only(left: 0, right: 0, bottom: 11, top: 11),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: AllpassUI.smallBorderRadius,
                color: Theme.of(context).inputDecorationTheme.fillColor,
              ),
              height: 35,
              child: TextField(
                style: TextStyle(fontSize: 14),
                controller: searchController,
                focusNode: focusNode,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20, right: 20),
                  hintText: l10n.searchHint,
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: ThemeUtil.isInDarkTheme(context)
                        ? Colors.grey
                        : Colors.grey[900],
                  ),
                ),
                onChanged: (_) {
                  /* spm: non-rebuild body erased */
                },
                onEditingComplete: () {
                  /* spm: non-rebuild body erased */
                },
              ),
            ),
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              child: Text(l10n.cancel, style: AllpassTextUI.secondTitleStyle),
            ),
            onTap: () {
              /* spm: non-rebuild body erased */
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchProvider>(
      builder: (_, provider, __) {
        return Scaffold(
          appBar: AppBar(
            title: searchWidget(provider),
            automaticallyImplyLeading: false,
          ),
          body: provider.empty()
              ? Center(
                  child: EmptyDataWidget(title: context.l10n.searchResultEmpty),
                )
              : ListView.builder(
                  itemBuilder: (_, index) =>
                      buildSearchResultItem(provider, index),
                  itemCount: provider.length(),
                ),
        );
      },
    );
  }
}

/// 存储app中的类型
enum AllpassType { password, card, other }

class EmptyDataWidget extends StatelessWidget {
  final String? title;
  final String? subtitle;

  const EmptyDataWidget({this.title, this.subtitle, Key? key})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: AllpassScreenUtil.setHeight(400)),
        ),
        Padding(
          child: Center(
            child: Icon(
              Icons.circle,
              size: AllpassScreenUtil.setWidth(100),
            ),
          ),
          padding: AllpassEdgeInsets.smallTBPadding,
        ),
        Padding(
          child: Center(child: Text(title ?? context.l10n.emptyDataHint)),
          padding: AllpassEdgeInsets.forCardInset,
        ),
        Padding(padding: AllpassEdgeInsets.smallTBPadding),
        subtitle == null
            ? Container()
            : Padding(
                child: Center(
                  child: Text(
                    subtitle!,
                    textAlign: TextAlign.center,
                    style: TextStyle(height: 1.3),
                  ),
                ),
                padding: AllpassEdgeInsets.forCardInset,
              ),
      ],
    );
  }
}

class PasswordWidgetItem extends StatelessWidget {
  final Key? key;

  final PasswordBean data;

  final VoidCallback? onPasswordClicked;

  PasswordWidgetItem({this.key, required this.data, this.onPasswordClicked})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    GestureLongPressCallback? longPressCallback;
    if (Config.longPressCopy) {
      longPressCallback = () {
        Clipboard.setData(
          ClipboardData(text: EncryptUtil.decrypt(data.password)),
        );
        ToastUtil.show(msg: context.l10n.passwordCopied);
      };
    }

    return Container(
      margin: AllpassEdgeInsets.listInset,
      child: GestureDetector(
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: data.color,
            child: Text(
              data.name.substring(0, 1),
              style: TextStyle(color: Colors.white),
            ),
          ),
          title: Text(data.name, overflow: TextOverflow.ellipsis),
          subtitle: Text(data.username, overflow: TextOverflow.ellipsis),
          onTap: () {
            /* spm: non-rebuild body erased */
          },
          onLongPress: longPressCallback,
        ),
      ),
    );
  }
}

class SimpleCardWidgetItem extends StatelessWidget {
  final CardBean data;
  final VoidCallback? onCardClicked;

  SimpleCardWidgetItem({Key? key, required this.data, this.onCardClicked})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CardProvider>(
      builder: (context, model, _) {
        return Container(
          margin: AllpassEdgeInsets.listInset,
          child: GestureDetector(
            child: ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  borderRadius: AllpassUI.smallBorderRadius,
                  color: data.color,
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Text(
                    data.name.substring(0, 1),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              title: Text(data.name),
              subtitle: Text(data.ownerName),
              onTap: () {
                /* spm: non-rebuild body erased */
              },
            ),
          ),
        );
      },
    );
  }
}





































// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
