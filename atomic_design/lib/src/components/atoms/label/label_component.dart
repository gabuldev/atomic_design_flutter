import 'package:flutter/material.dart';

import 'package:atomic_design_flutter/src/core/component.dart';
import 'package:atomic_design_flutter/src/core/status.dart';
import 'package:atomic_design_flutter/src/core/style.dart';

import 'label_style.dart';

// ignore: must_be_immutable
class LabelComponent extends Component<LabelStyle> {
  final String text;
  LabelComponent({
    Key? key,
    required TypeComponent type,
    required Style<LabelStyle> styles,
    required this.text,
  }) : super(type: type, styles: styles, key: key);

  @override
  Widget build(BuildContext context) {
    return super.createComponent(
      regular: (style) => Text(
        text,
        style: style.textStyle,
      ),
      loading: (_) => const CircularProgressIndicator(),
      orElse: () => Container(),
    );
  }
}
