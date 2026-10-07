// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}
class _GeneratedWidgetState extends State<GeneratedWidget> {
  final List<LanguageData> languageDatas = [
    LanguageData("中文", "zh", "CN", "微信-flutter"),
    LanguageData("English", "en", "US", "Wechat-flutter"),
  ];

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<GlobalModel>(context);
    var body = new ListView(
      children: new List.generate(languageDatas.length, (index) {
        final String languageCode = languageDatas[index].languageCode;
        final String countryCode = languageDatas[index].countryCode;
        final String language = languageDatas[index].language;
        final String appName = languageDatas[index].appName;
        return new RadioListTile(
          value: language,
          groupValue: model.currentLanguage,
          onChanged: (value) {
            model.currentLanguageCode = [languageCode, countryCode];
            model.currentLanguage = language;
            model.currentLocale = Locale(languageCode, countryCode);
            model.appName = appName;
            model.refresh();
            SharedUtil.instance.saveStringList(Keys.currentLanguageCode, [
              languageCode,
              countryCode,
            ]);
            SharedUtil.instance.saveString(Keys.currentLanguage, language);
            SharedUtil.instance.saveString(Keys.appName, appName);
          },
          title: new Text(languageDatas[index].language),
        );
      }),
    );
    return new Scaffold(
      appBar: new ComMomBar(title: S.of(context).multiLanguage),
      body: body,
    );
  }
}
class ComMomBar extends StatelessWidget implements PreferredSizeWidget {
  const ComMomBar({
    Key? key,
    this.title = '',
    this.showShadow = false,
    this.rightDMActions,
    this.backgroundColor = appBarColor,
    this.mainColor = Colors.black,
    this.titleW,
    this.bottom,
    this.leadingImg = '',
    this.leadingW,
  }) : super(key: key);

  final String title;
  final bool showShadow;
  final List<Widget>? rightDMActions;
  final Color backgroundColor;
  final Color mainColor;
  final Widget? titleW;
  final Widget? leadingW;
  final PreferredSizeWidget? bottom;
  final String leadingImg;

  @override
  Size get preferredSize => const Size.fromHeight(50.0);

  Widget? leading(BuildContext context) {
    final bool isShow = Navigator.canPop(context);
    if (isShow) {
      return InkWell(
        child: Container(
          width: 15,
          height: 28,
          child: leadingImg.isNotEmpty
              ? Container(color: Colors.grey.shade300, width: 80, height: 80)
              : Icon(CupertinoIcons.back, color: mainColor),
        ),
        onTap: () {
          if (Navigator.canPop(context)) {
            FocusScope.of(context).requestFocus(FocusNode());
            Navigator.pop(context);
          }
        },
      );
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return showShadow
        ? Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: showShadow ? 0.5 : 0.0,
                ),
              ),
            ),
            child: AppBar(
              title:
                  titleW ??
                  Text(
                    title,
                    style: TextStyle(
                      color: mainColor,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
              backgroundColor: mainColor,
              elevation: 0.0,
              // brightness: Brightness.light,
              leading: leadingW ?? leading(context),
              centerTitle: true,
              actions: rightDMActions ?? [Center()],
              bottom: bottom,
            ),
          )
        : AppBar(
            title:
                titleW ??
                Text(
                  title,
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
            backgroundColor: backgroundColor,
            elevation: 0.0,
            // brightness: Brightness.light,
            leading: leadingW ?? leading(context),
            centerTitle: false,
            bottom: bottom,
            actions: rightDMActions ?? [Center()],
          );
  }
}
