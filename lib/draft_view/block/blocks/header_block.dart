import 'package:draft_view/draft_view/block/base_block.dart';
import 'package:flutter/material.dart';

class HeaderBlock extends BaseBlock {
  final int start;
  final int end;
  final String text;

  /// Block Type
  final String blockType;

  /// Inline styles
  final List<String> inlineStyles;

  /// Entity type
  final List<String> entityTypes;
  final Map<String, dynamic> data;
  final int level;

  HeaderBlock({
    required this.start,
    required this.end,
    required this.inlineStyles,
    required this.data,
    required this.text,
    required this.entityTypes,
    required this.blockType,
    required this.level,
  }) : super(
          start: start,
          end: end,
          inlineStyles: inlineStyles,
          data: data,
          text: text,
          entityTypes: entityTypes,
          blockType: blockType,
        );

  HeaderBlock copyWith({BaseBlock? block}) => HeaderBlock(
      start: block?.start ?? this.start,
      end: block?.end ?? this.end,
      inlineStyles: block?.inlineStyles ?? this.inlineStyles,
      entityTypes: block?.entityTypes ?? this.entityTypes,
      data: block?.data ?? this.data,
      text: block?.text ?? this.text,
      blockType: block?.blockType ?? this.blockType,
      level: this.level);

  @override
  TextStyle renderStyle(BuildContext context) {
    switch (level) {
      case 1:
        return TextStyle(
          color: Theme.of(context).textTheme.headline1?.color,
          fontSize: Theme.of(context).textTheme.headline1?.fontSize,
        );

      case 2:
        return TextStyle(
          color: Theme.of(context).textTheme.headline2?.color,
          fontSize: Theme.of(context).textTheme.headline2?.fontSize,
        );
      case 3:
        return TextStyle(
          color: Theme.of(context).textTheme.headline3?.color,
          fontSize: Theme.of(context).textTheme.headline3?.fontSize,
        );
      case 4:
        return TextStyle(
          color: Theme.of(context).textTheme.headline4?.color,
          fontSize: Theme.of(context).textTheme.headline4?.fontSize,
        );
      case 5:
        return TextStyle(
          color: Theme.of(context).textTheme.headline5?.color,
          fontSize: Theme.of(context).textTheme.headline5?.fontSize,
        );
      default:
        return TextStyle(
          color: Theme.of(context).textTheme.headline6?.color,
          fontSize: Theme.of(context).textTheme.headline6?.fontSize,
        );
    }
  }
}