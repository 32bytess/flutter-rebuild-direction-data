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
  @override
  void initState() {
    super.initState();
    cardIdVisible = fixtureCardIdVisible;
    passwordVisible = fixturePasswordVisible;
    password = fixturePassword;
    cache = fixtureCache;
    deleted = fixtureDeleted;
  }

  late bool cardIdVisible;

  late bool passwordVisible;

  late String password;

  late String cache;

  late bool deleted;

  List<Widget> _getTag(CardBean bean) {
    List<Widget> labelChoices = [];
    bean.label?.forEach((item) {
      labelChoices.add(
        LabelChip(
          text: item,
          selected: true,
          onSelected: (_) {
            /* spm: non-rebuild body erased */
          },
        ),
      );
    });
    if (labelChoices.length == 0) {
      labelChoices.add(
        Text(context.l10n.emptyLabel, style: AllpassTextUI.hintTextStyle),
      );
    }
    return labelChoices;
  }

  Widget _titleContainer(Color mainColor, String title) {
    return Container(
      margin: AllpassEdgeInsets.bottom10Inset,
      child: Text(title, style: TextStyle(fontSize: 16, color: mainColor)),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (deleted) return Container();
    Color mainColor = Theme.of(context).primaryColor;
    CardProvider provider = context.watch();
    CardBean bean = provider.currCard;
    var l10n = context.l10n;
    if (bean == CardBean.empty) {
      ToastUtil.show(msg: l10n.unknownErrorOccur);
      Navigator.pop(context);
      return Container();
    }
    try {
      if (cache != bean.password) {
        password = EncryptUtil.decrypt(bean.password);
        cache = bean.password;
      }
    } on ArgumentError {
      return DecryptErrorWidget(originalValue: bean.password);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.viewCard, style: AllpassTextUI.titleBarStyle),
        centerTitle: true,
        actions: <Widget>[
          bean.fav == 1
              ? Icon(Icons.favorite, color: Colors.redAccent)
              : Icon(Icons.favorite_border),
          Padding(padding: AllpassEdgeInsets.smallLPadding),
          Padding(padding: AllpassEdgeInsets.smallLPadding),
        ],
      ),
      backgroundColor: context.watch<ThemeProvider>().specialBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: AllpassEdgeInsets.forViewCardInset,
              child: Card(
                elevation: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 23,
                        horizontal: 0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: AllpassUI.smallBorderRadius,
                          color: bean.color,
                        ),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.transparent,
                          child: Text(
                            bean.name.substring(0, 1),
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: AllpassEdgeInsets.smallLPadding),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: AllpassScreenUtil.setWidth(450),
                            ),
                            child: Text(
                              bean.name,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 0,
                            right: 5,
                            top: 3,
                            bottom: 0,
                          ),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.folder_open),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                color: Colors.grey[250],
                                child: Container(
                                  child: Text(
                                    bean.folder,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  width: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: AllpassEdgeInsets.forViewCardInset,
              child: Card(
                elevation: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(padding: AllpassEdgeInsets.smallTBPadding),
                    // 拥有者姓名标题
                    _titleContainer(mainColor, l10n.ownerName),
                    // 拥有者姓名主体
                    Container(
                      margin: AllpassEdgeInsets.bottom50Inset,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              bean.ownerName,
                              overflow: TextOverflow.ellipsis,
                              style: AllpassTextUI.firstTitleStyle,
                            ),
                          ),
                          Padding(padding: AllpassEdgeInsets.smallLPadding),
                          InkWell(
                            child: Text(
                              l10n.copy,
                              style: TextStyle(fontSize: 14, color: mainColor),
                            ),
                            onTap: () {
                              /* spm: non-rebuild body erased */
                            },
                          ),
                        ],
                      ),
                    ),
                    // 卡号标题
                    _titleContainer(mainColor, l10n.cardId),
                    // 卡号主体
                    Container(
                      margin: AllpassEdgeInsets.bottom30Inset,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              cardIdVisible
                                  ? bean.cardId
                                  : "*" * bean.cardId.length,
                              overflow: TextOverflow.ellipsis,
                              style: AllpassTextUI.firstTitleStyle,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              InkWell(
                                child: cardIdVisible
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                                onTap: () {
                                  /* spm: non-rebuild body erased */
                                },
                              ),
                              Padding(padding: AllpassEdgeInsets.smallLPadding),
                              InkWell(
                                onTap: () {
                                  /* spm: non-rebuild body erased */
                                },
                                child: Text(
                                  l10n.copy,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: mainColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // 密码标题
                    _titleContainer(mainColor, l10n.password),
                    // 密码主体
                    Container(
                      margin: AllpassEdgeInsets.bottom30Inset,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              passwordVisible
                                  ? password
                                  : "*" * password.length,
                              overflow: TextOverflow.ellipsis,
                              style: AllpassTextUI.firstTitleStyle,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              InkWell(
                                child: passwordVisible
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                                onTap: () {
                                  /* spm: non-rebuild body erased */
                                },
                              ),
                              Padding(padding: AllpassEdgeInsets.smallLPadding),
                              InkWell(
                                onTap: () {
                                  /* spm: non-rebuild body erased */
                                },
                                child: Text(
                                  l10n.copy,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: mainColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // 绑定手机号标题
                    _titleContainer(mainColor, l10n.phoneNumber),
                    // 绑定手机号主体
                    Container(
                      margin: AllpassEdgeInsets.bottom50Inset,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              bean.telephone,
                              overflow: TextOverflow.ellipsis,
                              style: AllpassTextUI.firstTitleStyle,
                            ),
                          ),
                          Padding(padding: AllpassEdgeInsets.smallLPadding),
                          InkWell(
                            child: Text(
                              l10n.copy,
                              style: TextStyle(fontSize: 14, color: mainColor),
                            ),
                            onTap: () {
                              /* spm: non-rebuild body erased */
                            },
                          ),
                        ],
                      ),
                    ),
                    // 备注标题
                    _titleContainer(mainColor, l10n.notes),
                    // 备注主体
                    Container(
                      margin: AllpassEdgeInsets.bottom50Inset,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                /* spm: non-rebuild body erased */
                              },
                              child: Text(
                                bean.notes.length < 1
                                    ? l10n.emptyNotes
                                    : bean.notes,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: bean.notes.length < 1
                                    ? AllpassTextUI.hintTextStyle
                                    : AllpassTextUI.firstTitleStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // 标签标题
                    _titleContainer(mainColor, l10n.labels),
                    // 标签主体
                    Container(
                      margin: AllpassEdgeInsets.bottom30Inset,
                      child: Wrap(children: _getTag(bean), spacing: 5),
                    ),
                  ],
                ),
              ),
            ),
            Padding(padding: AllpassEdgeInsets.smallTBPadding),
            // 最下面一行点击按钮
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  heroTag: "edit",
                  backgroundColor: Colors.blueAccent,
                  elevation: 0,
                  onPressed: () {
                    /* spm: non-rebuild body erased */
                  },
                  child: Icon(Icons.edit),
                ),
                Padding(padding: AllpassEdgeInsets.smallLPadding),
                FloatingActionButton(
                  heroTag: "delete",
                  elevation: 0,
                  backgroundColor: Colors.redAccent,
                  onPressed: () {
                    /* spm: non-rebuild body erased */
                  },
                  child: Icon(Icons.delete),
                ),
              ],
            ),
            Padding(padding: AllpassEdgeInsets.smallTBPadding),
          ],
        ),
      ),
    );
  }
}

class DecryptErrorWidget extends StatelessWidget {
  final String originalValue;

  const DecryptErrorWidget({Key? key, required this.originalValue})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("查看失败", style: AllpassTextUI.titleBarStyle),
        centerTitle: true,
      ),
      backgroundColor: context.watch<ThemeProvider>().specialBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("待解码密码：$originalValue\n"),
            Text("密码解码失败，可能是因为您通过WebDAV恢复了数据，但是数据加密的密钥与您当前密钥不同的原因\n"),
            Text("有以下几种解决方案："),
            Text(
              "1. 删除从WebDA恢复的数据，然后在 设置 - 主账号管理 - 加密密钥更新 中更新密钥，再重新从WebDAV恢复数据",
            ),
            Text("2. 删除从WebDA恢复的数据，然后选择未经加密的备份文件恢复数据\n"),
            Text("如果上述解决方案均不可用，则代表原文件已经无法再使用，您仍需删除从WebDAV恢复的数据"),
          ],
        ),
      ),
    );
  }
}

class LabelChip extends StatelessWidget {
  final Key? key;
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  const LabelChip({
    this.key,
    required this.text,
    this.selected = false,
    this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color textColor;
    if (ThemeUtil.isInDarkTheme(context)) {
      textColor = Colors.white;
    } else {
      if (selected) {
        textColor = Colors.white;
      } else {
        textColor = Colors.black;
      }
    }
    return ChoiceChip(
      label: Text(text),
      labelStyle: TextStyle(fontSize: 14, color: textColor),
      selected: selected,
      onSelected: onSelected,
      selectedColor: Theme.of(context).primaryColor,
    );
  }
}





































// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
