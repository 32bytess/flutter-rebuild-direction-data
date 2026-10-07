// ignore_for_file: unused_import, unused_element
import 'package:flutter/material.dart';
import 'dependencies.dart';

class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _SplashTheme extends StatelessWidget {
  final Widget child;
  const _SplashTheme({required this.child});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Color(0xfff0f0f0),
        highlightColor: Color(0xfff0f0f0),
      ),
      child: child,
    );
  }
}

class _IconAvatar extends StatelessWidget {
  final String icon;
  final bool isTransfer;
  final bool avatarBv;
  const _IconAvatar({
    required this.icon,
    required this.isTransfer,
    required this.avatarBv,
  });

  @override
  Widget build(BuildContext context) {
    final icon = this.icon.toLowerCase();

    if (!isTransfer && icon == 'me') {
      if (avatarBv) {
        return ClipOval(child: Container(color: Colors.grey.shade300, width: 80, height: 80));
      }
    }

    if (isTransfer && icon == 'me') {
      return const SizedBox.shrink();
    }

    return ClipOval(child: Container(color: Colors.grey.shade300, width: 80, height: 80));
  }
}

class _TransferExtraRow extends StatelessWidget {
  final String icon;
  final String label;
  final bool isTransfer;
  final bool avatarBv;
  const _TransferExtraRow({
    required this.icon,
    required this.label,
    required this.isTransfer,
    required this.avatarBv,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15.vp, right: 15.vp),
          child: Container(color: Colors.grey.shade300, width: 80, height: 80),
        ),
        Padding(
          padding: EdgeInsets.only(right: 4.vp),
          child: _IconAvatar(icon: icon, isTransfer: isTransfer, avatarBv: avatarBv),
        ),
        Text(
          label,
          style: TextStyle(
            color: Color(0xff363853),
            fontWeight: FontWeight.w600,
            fontSize: 16.fp,
          ),
        ),
      ],
    );
  }
}

class _MenuOptionRow extends StatelessWidget {
  final dynamic opt;
  final bool isTopup;
  final bool isTransfer;
  final bool avatarBv;
  const _MenuOptionRow({
    required this.opt,
    required this.isTopup,
    required this.isTransfer,
    required this.avatarBv,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 4.vp),
          child: _IconAvatar(
            icon: isTopup ? opt.from : opt.to,
            isTransfer: isTransfer,
            avatarBv: avatarBv,
          ),
        ),
        Text(
          isTopup ? opt.from.tr : opt.to.tr,
          style: TextStyle(
            color: Color(0xff363853),
            fontWeight: FontWeight.w600,
            fontSize: 16.fp,
          ),
        ),
        Offstage(
          offstage: !isTransfer || opt.from == opt.to,
          child: _TransferExtraRow(
            icon: opt.from.toLowerCase(),
            label: opt.from.tr,
            isTransfer: isTransfer,
            avatarBv: avatarBv,
          ),
        ),
      ],
    );
  }
}

class _SelectorRow extends StatelessWidget {
  final String icon;
  final String label;
  final bool isTransfer;
  final bool isSamePerson;
  final String extraIcon;
  final String extraLabel;
  final bool avatarBv;
  const _SelectorRow({
    required this.icon,
    required this.label,
    required this.isTransfer,
    required this.isSamePerson,
    required this.extraIcon,
    required this.extraLabel,
    required this.avatarBv,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 4.vp),
          child: _IconAvatar(icon: icon, isTransfer: isTransfer, avatarBv: avatarBv),
        ),
        Text(
          label,
          style: TextStyle(
            color: Color(0xff363853),
            fontWeight: FontWeight.w600,
            fontSize: 16.fp,
          ),
        ),
        Offstage(
          offstage: !isTransfer || isSamePerson,
          child: _TransferExtraRow(
            icon: extraIcon,
            label: extraLabel,
            isTransfer: isTransfer,
            avatarBv: avatarBv,
          ),
        ),
      ],
    );
  }
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late Controller controller;

  @override
  void initState() {
    super.initState();
    controller = Controller();
  }

  @override
  Widget build(BuildContext context) {
    final options = controller.options;
    final operate = controller.operate;
    final isTopup = controller.type == 'Top up';
    final isTransfer = controller.type == 'Transfer';
    final isSamePerson = operate.value.from == operate.value.to;
    final loginUser = controller.loginUser;
    final avatar = loginUser.avatar;
    final from = operate.value.from;
    final to = operate.value.to;

    return _SplashTheme(
      child: Container(
        color: Colors.white,
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 32.vp, right: 32.vp),
        margin: EdgeInsets.only(bottom: 42.vp),
        child: PopupMenuButton(
          elevation: 2.5,
          color: Colors.white,
          padding: EdgeInsets.zero,
          menuPadding: EdgeInsets.zero,
          clipBehavior: Clip.antiAlias,
          position: PopupMenuPosition.under,
          shadowColor: Color(0x88000000),
          constraints: BoxConstraints(minWidth: 311.vp, maxWidth: 311.vp),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.vp),
          ),
          offset: Offset(0, 3.vp),
          onSelected: (id) => controller.find(id),
          itemBuilder: (BuildContext context) => options.value
              .map(
                (opt) => PopupMenuItem(
                  value: opt.id,
                  padding: EdgeInsets.zero,
                  child: Container(
                    width: 375.vp,
                    height: 48.vp,
                    padding: EdgeInsets.only(
                      top: 12.vp,
                      left: 30.vp,
                      right: 24.vp,
                      bottom: 12.vp,
                    ),
                    child: _MenuOptionRow(
                      opt: opt,
                      isTopup: isTopup,
                      isTransfer: isTransfer,
                      avatarBv: avatar.value.bv,
                    ),
                  ),
                ),
              )
              .toList(),
          child: Container(
            height: 66.vp,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.vp),
              color: Color(0xfff2f2f2),
            ),
            padding: EdgeInsets.only(
              top: 20.vp,
              left: 30.vp,
              right: 24.vp,
              bottom: 20.vp,
            ),
            child: Row(
              children: [
                Expanded(
                  child: _SelectorRow(
                    icon: isTopup ? from : to,
                    label: isTopup ? from.tr : to.tr,
                    isTransfer: isTransfer,
                    isSamePerson: isSamePerson,
                    extraIcon: from.toLowerCase(),
                    extraLabel: from.tr,
                    avatarBv: avatar.value.bv,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.vp, right: 6.vp),
                  child: Container(color: Colors.grey.shade300, width: 80, height: 80),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}