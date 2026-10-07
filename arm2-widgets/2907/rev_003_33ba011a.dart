// ignore_for_file: unused_import, unused_element, unused_field
library generated_widget;

import 'package:flutter/material.dart';
import 'dart:ui' as ui;
part 'dependencies.dart';


class GeneratedWidget extends StatefulWidget {
  const GeneratedWidget({super.key});

  @override
  State<GeneratedWidget> createState() => _GeneratedWidgetState();
}

class _GeneratedWidgetState extends State<GeneratedWidget> {
  late final bool isVisible;
  late final bool isAllowed;
  late final Offset position;
  late final FlutterWidgetBean? widgetWidgetBean;
  late final Widget? draggedWidget;
  late final bool isCustomWidget;

  @override
  void initState() {
    super.initState();
    isVisible = fixtureIsVisible;
    isAllowed = fixtureIsAllowed;
    position = fixturePosition;
    widgetWidgetBean = fixtureWidgetBean;
    draggedWidget = fixtureDraggedWidget;
    isCustomWidget = fixtureIsCustomWidget;
    _isImageReady = fixtureIsImageReady;
  }

  late bool _isImageReady;

  Widget _buildDummyContent() {
    // SKETCHWARE PRO EXACT: ViewDummy shows semi-transparent copy of the actual widget
    // NOT colored borders or plus icons - just the widget at 50% alpha
    return Opacity(
      opacity: 0.5, // SKETCHWARE PRO: setAlpha(0.5f) = 50% transparency
      child: Stack(
        children: [
          // Show the actual widget preview (like Sketchware Pro's bitmap)
          _buildWidgetPreview(),

          // Show "not allowed" icon when drop is invalid (like Sketchware Pro)
          if (!isAllowed)
            Positioned.fill(
              child: Container(
                color: Colors.red.withOpacity(0.3),
                child: const Center(
                  child: Icon(Icons.cancel, color: Colors.red, size: 32),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildWidgetPreview() {
    // SKETCHWARE PRO STYLE: Show actual widget preview with proper sizing (like bitmap creation)
    if (widgetWidgetBean != null) {
      final widgetBean = widgetWidgetBean!;
      return Container(
        width: widgetBean.position.width > 0 ? widgetBean.position.width : 100,
        height: widgetBean.position.height > 0
            ? widgetBean.position.height
            : 50,
        child: _buildWidgetTypePreview(),
      );
    }

    // Default preview when no widget bean
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.grey),
      ),
      child: const Center(
        child: Icon(Icons.widgets, color: Colors.grey, size: 20),
      ),
    );
  }

  Widget _buildWidgetTypePreview() {
    final type = widgetWidgetBean!.type;
    final properties = widgetWidgetBean!.properties;

    // SKETCHWARE PRO STYLE: Show actual widget properties and behavior
    switch (type) {
      case 'Text':
        return Center(
          child: Text(
            TextPropertyService.getText(properties),
            style: TextPropertyService.getTextStyle(
              context,
              properties,
              1.0,
            ).copyWith(color: Colors.white, fontWeight: FontWeight.w500),
            textAlign: _parseTextAlign(properties['textAlign']),
          ),
        );
      case 'TextField':
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Colors.white.withOpacity(0.5)),
          ),
          child: Text(
            properties['hint'] ?? 'Text Field',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
        );
      case 'Icon':
        return Center(
          child: Icon(
            IconUtils.getIconFromName(properties['icon'] ?? 'star'),
            color: Colors.white,
            size: double.tryParse(properties['size']?.toString() ?? '24') ?? 24,
          ),
        );
      case 'Row':
      case 'Column':
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white.withOpacity(0.5), width: 1),
            borderRadius: BorderRadius.circular(2),
          ),
          child: Center(
            child: Text(
              type,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      case 'Container':
        return Container(
          decoration: BoxDecoration(
            color: ColorUtils.parseColor(properties['backgroundColor']),
            borderRadius: BorderRadius.circular(
              double.tryParse(properties['borderRadius']?.toString() ?? '0') ??
                  0,
            ),
            border: Border.all(
              color:
                  ColorUtils.parseColor(properties['borderColor']) ??
                  Colors.white.withOpacity(0.5),
              width:
                  double.tryParse(
                    properties['borderWidth']?.toString() ?? '1',
                  ) ??
                  1,
            ),
          ),
          child: Center(
            child: Text(
              'Container',
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      default:
        return Center(
          child: Text(
            type,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        );
    }
  }

  TextAlign _parseTextAlign(dynamic textAlign) {
    if (textAlign == null) return TextAlign.start;
    switch (textAlign.toString().toLowerCase()) {
      case 'center':
        return TextAlign.center;
      case 'right':
        return TextAlign.right;
      case 'justify':
        return TextAlign.justify;
      default:
        return TextAlign.start;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!isVisible) {
      return const SizedBox.shrink();
    }
    return Positioned(
      left: position.dx,
      top: position.dy,
      child: _buildDummyContent(),
    );
  }
}

class FlutterWidgetBean {
  final String id;
  final String type;
  final Map<String, dynamic> properties;
  final String? parentId;
  final List<String> children;
  final PositionBean position;
  final Map<String, String> events;
  final bool isSelected;
  final bool isVisible;
  final String? customCode;

  final LayoutBean layout;
  final int parentType;
  final int index;
  final String parent;
  final int preIndex;
  final String preParent;
  final int preParentType;
  final bool isFixed;

  FlutterWidgetBean({
    required this.id,
    required this.type,
    required this.properties,
    this.parentId,
    required this.children,
    required this.position,
    required this.events,
    this.isSelected = false,
    this.isVisible = true,
    this.customCode,
    required this.layout,
    this.parentType = 0,
    this.index = -1,
    this.parent = 'root',
    this.preIndex = -1,
    this.preParent = '',
    this.preParentType = 0,
    this.isFixed = false,
  });

  factory FlutterWidgetBean.fromJson(Map<String, dynamic> json) {
    return FlutterWidgetBean(
      id: json['id'] ?? '',
      type: json['type'] ?? '',
      properties: Map<String, dynamic>.from(json['properties'] ?? {}),
      parentId: json['parentId'],
      children: List<String>.from(json['children'] ?? []),
      position: PositionBean.fromJson(json['position'] ?? {}),
      events: Map<String, String>.from(json['events'] ?? {}),
      isSelected: json['isSelected'] ?? false,
      isVisible: json['isVisible'] ?? true,
      customCode: json['customCode'],
      layout: LayoutBean.fromJson(json['layout'] ?? {}),
      parentType: json['parentType'] ?? 0,
      index: json['index'] ?? -1,
      parent: json['parent'] ?? 'root',
      preIndex: json['preIndex'] ?? -1,
      preParent: json['preParent'] ?? '',
      preParentType: json['preParentType'] ?? 0,
      isFixed: json['isFixed'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type,
      'properties': properties,
      'parentId': parentId,
      'children': children,
      'position': position.toJson(),
      'events': events,
      'isSelected': isSelected,
      'isVisible': isVisible,
      'customCode': customCode,
      'layout': layout.toJson(),
      'parentType': parentType,
      'index': index,
      'parent': parent,
      'preIndex': preIndex,
      'preParent': preParent,
      'preParentType': preParentType,
      'isFixed': isFixed,
    };
  }

  FlutterWidgetBean copyWith({
    String? id,
    String? type,
    Map<String, dynamic>? properties,
    String? parentId,
    List<String>? children,
    PositionBean? position,
    Map<String, String>? events,
    bool? isSelected,
    bool? isVisible,
    String? customCode,
    LayoutBean? layout,
    int? parentType,
    int? index,
    String? parent,
    int? preIndex,
    String? preParent,
    int? preParentType,
    bool? isFixed,
  }) {
    return FlutterWidgetBean(
      id: id ?? this.id,
      type: type ?? this.type,
      properties: properties ?? this.properties,
      parentId: parentId ?? this.parentId,
      children: children ?? this.children,
      position: position ?? this.position,
      events: events ?? this.events,
      isSelected: isSelected ?? this.isSelected,
      isVisible: isVisible ?? this.isVisible,
      customCode: customCode ?? this.customCode,
      layout: layout ?? this.layout,
      parentType: parentType ?? this.parentType,
      index: index ?? this.index,
      parent: parent ?? this.parent,
      preIndex: preIndex ?? this.preIndex,
      preParent: preParent ?? this.preParent,
      preParentType: preParentType ?? this.preParentType,
      isFixed: isFixed ?? this.isFixed,
    );
  }

  static String generateId(
    String widgetType,
    List<FlutterWidgetBean> existingWidgets,
  ) {
    String prefix = _getTypePrefix(widgetType);

    int counter = 1;
    for (FlutterWidgetBean widget in existingWidgets) {
      if (widget.id.startsWith(prefix)) {
        try {
          String suffix = widget.id.substring(prefix.length);
          int existingCounter = int.parse(suffix);
          if (existingCounter >= counter) {
            counter = existingCounter + 1;
          }
        } catch (e) {}
      }
    }

    return '$prefix$counter';
  }

  static String _getTypePrefix(String widgetType) {
    switch (widgetType.toLowerCase()) {
      case 'text':
        return 'text';
      case 'textfield':
      case 'edittext':
        return 'textfield';
      case 'button':
        return 'button';
      case 'container':
        return 'container';
      case 'icon':
        return 'icon';
      case 'row':
      case 'linearlayout':
        return 'row';
      case 'column':
      case 'linearlayout':
        return 'column';
      case 'stack':
      case 'relativelayout':
        return 'stack';
      default:
        return widgetType.toLowerCase();
    }
  }

  static String generateSimpleId() {
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final random = (timestamp % 1000000).toString().padLeft(6, '0');
    return 'widget_$timestamp$random';
  }

  String get displayName {
    return properties['text'] ?? type;
  }

  static const int VIEW_TYPE_LAYOUT_ROW = 0;
  static const int VIEW_TYPE_LAYOUT_COLUMN = 1;
  static const int VIEW_TYPE_LAYOUT_CONTAINER = 2;
  static const int VIEW_TYPE_LAYOUT_CENTER = 3;

  static const int VIEW_TYPE_WIDGET_TEXT = 10;
  static const int VIEW_TYPE_WIDGET_TEXTFIELD = 11;
  static const int VIEW_TYPE_WIDGET_ICON = 12;

  static const int VIEW_TYPE_WIDGET_ELEVATEDBUTTON = 20;
  static const int VIEW_TYPE_WIDGET_ICONBUTTON = 21;
  static const int VIEW_TYPE_WIDGET_CHECKBOX = 22;

  static const int VIEW_TYPE_WIDGET_CARD = 30;
  static const int VIEW_TYPE_WIDGET_CHIP = 31;
  static const int VIEW_TYPE_WIDGET_DIVIDER = 32;

  static const int VIEW_TYPE_WIDGET_APPBAR = 40;
  static const int VIEW_TYPE_WIDGET_BOTTOMNAVIGATIONBAR = 41;
  static const int VIEW_TYPE_WIDGET_FLOATINGACTIONBUTTON = 42;
}

class LayoutBean {
  final int width;
  final int height;
  final double marginLeft;
  final double marginTop;
  final double marginRight;
  final double marginBottom;
  final int paddingLeft;
  final int paddingTop;
  final int paddingRight;
  final int paddingBottom;
  final int layoutGravity;
  final int gravity;
  final double weight;
  final int orientation;
  final double weightSum;
  final int backgroundColor;
  final String? backgroundResource;
  final String? backgroundResColor;

  LayoutBean({
    this.width = -2,
    this.height = -2,
    this.marginLeft = 0,
    this.marginTop = 0,
    this.marginRight = 0,
    this.marginBottom = 0,
    this.paddingLeft = 0,
    this.paddingTop = 0,
    this.paddingRight = 0,
    this.paddingBottom = 0,
    this.layoutGravity = 0,
    this.gravity = 0,
    this.weight = 0,
    this.orientation = 1,
    this.weightSum = 0,
    this.backgroundColor = 0xFFFFFFFF,
    this.backgroundResource,
    this.backgroundResColor,
  });

  factory LayoutBean.fromJson(Map<String, dynamic> json) {
    return LayoutBean(
      width: _parseInt(json['width']) ?? -2,
      height: _parseInt(json['height']) ?? -2,
      marginLeft: _parseDouble(json['marginLeft']) ?? 0.0,
      marginTop: _parseDouble(json['marginTop']) ?? 0.0,
      marginRight: _parseDouble(json['marginRight']) ?? 0.0,
      marginBottom: _parseDouble(json['marginBottom']) ?? 0.0,
      paddingLeft: _parseInt(json['paddingLeft']) ?? 0,
      paddingTop: _parseInt(json['paddingTop']) ?? 0,
      paddingRight: _parseInt(json['paddingRight']) ?? 0,
      paddingBottom: _parseInt(json['paddingBottom']) ?? 0,
      layoutGravity: _parseInt(json['layoutGravity']) ?? 0,
      gravity: _parseInt(json['gravity']) ?? 0,
      weight: _parseDouble(json['weight']) ?? 0.0,
      orientation: _parseInt(json['orientation']) ?? 1,
      weightSum: _parseDouble(json['weightSum']) ?? 0.0,
      backgroundColor: _parseInt(json['backgroundColor']) ?? 0xFFFFFFFF,
      backgroundResource: json['backgroundResource'],
      backgroundResColor: json['backgroundResColor'],
    );
  }

  static int? _parseInt(dynamic value) {
    if (value == null) return null;
    if (value is int) return value;
    if (value is double) return value.toInt();
    if (value is String) {
      try {
        return int.parse(value);
      } catch (e) {
        return null;
      }
    }
    return null;
  }

  static double? _parseDouble(dynamic value) {
    if (value == null) return null;
    if (value is double) return value;
    if (value is int) return value.toDouble();
    if (value is String) {
      try {
        return double.parse(value);
      } catch (e) {
        return null;
      }
    }
    return null;
  }

  Map<String, dynamic> toJson() {
    return {
      'width': width,
      'height': height,
      'marginLeft': marginLeft,
      'marginTop': marginTop,
      'marginRight': marginRight,
      'marginBottom': marginBottom,
      'paddingLeft': paddingLeft,
      'paddingTop': paddingTop,
      'paddingRight': paddingRight,
      'paddingBottom': paddingBottom,
      'layoutGravity': layoutGravity,
      'gravity': gravity,
      'weight': weight,
      'orientation': orientation,
      'weightSum': weightSum,
      'backgroundColor': backgroundColor,
      'backgroundResource': backgroundResource,
      'backgroundResColor': backgroundResColor,
    };
  }

  LayoutBean copyWith({
    int? width,
    int? height,
    double? marginLeft,
    double? marginTop,
    double? marginRight,
    double? marginBottom,
    int? paddingLeft,
    int? paddingTop,
    int? paddingRight,
    int? paddingBottom,
    int? layoutGravity,
    int? gravity,
    double? weight,
    int? orientation,
    double? weightSum,
    int? backgroundColor,
    String? backgroundResource,
    String? backgroundResColor,
  }) {
    return LayoutBean(
      width: width ?? this.width,
      height: height ?? this.height,
      marginLeft: marginLeft ?? this.marginLeft,
      marginTop: marginTop ?? this.marginTop,
      marginRight: marginRight ?? this.marginRight,
      marginBottom: marginBottom ?? this.marginBottom,
      paddingLeft: paddingLeft ?? this.paddingLeft,
      paddingTop: paddingTop ?? this.paddingTop,
      paddingRight: paddingRight ?? this.paddingRight,
      paddingBottom: paddingBottom ?? this.paddingBottom,
      layoutGravity: layoutGravity ?? this.layoutGravity,
      gravity: gravity ?? this.gravity,
      weight: weight ?? this.weight,
      orientation: orientation ?? this.orientation,
      weightSum: weightSum ?? this.weightSum,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      backgroundResource: backgroundResource ?? this.backgroundResource,
      backgroundResColor: backgroundResColor ?? this.backgroundResColor,
    );
  }

  static const int MATCH_PARENT = -1;
  static const int WRAP_CONTENT = -2;
  static const int GRAVITY_NONE = 0;
  static const int GRAVITY_LEFT = 3;
  static const int GRAVITY_TOP = 48;
  static const int GRAVITY_RIGHT = 5;
  static const int GRAVITY_BOTTOM = 80;
  static const int GRAVITY_CENTER_HORIZONTAL = 1;
  static const int GRAVITY_CENTER_VERTICAL = 16;
  static const int GRAVITY_CENTER = 17;
  static const int ORIENTATION_VERTICAL = 1;
  static const int ORIENTATION_HORIZONTAL = 0;
}











// Stands in for values this file cannot reproduce. Reaching a member on one
// returns another stub rather than throwing, so a build body runs to its end.
