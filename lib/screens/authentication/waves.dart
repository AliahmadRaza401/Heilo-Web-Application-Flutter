import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

buildCard({
  required BuildContext context,
  required Config config,
  Color backgroundColor = Colors.transparent,
  required DecorationImage backgroundImage,
}) {
  return Container(
    height: MediaQuery.of(context).size.height,
    width: double.infinity,
    child: Card(
      elevation: 12.0,
      // margin: EdgeInsets.only(right: 16.0, left: 16.0, bottom: 16.0),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0))),
      child: WaveWidget(
        config: config,
        backgroundColor: backgroundColor,
        backgroundImage: backgroundImage,
        size: Size(double.infinity, double.infinity),
        waveAmplitude: 45,
      ),
    ),
  );
}

MaskFilter? blur;

final List<MaskFilter> _blurs = [
  MaskFilter.blur(BlurStyle.normal, 10.0),
  MaskFilter.blur(BlurStyle.normal, 10.0),
  MaskFilter.blur(BlurStyle.inner, 10.0),
  MaskFilter.blur(BlurStyle.outer, 10.0),
  MaskFilter.blur(BlurStyle.solid, 16.0),
];

int _blurIndex = 0;

MaskFilter _nextBlur() {
  if (_blurIndex == _blurs.length - 1) {
    _blurIndex = 0;
  } else {
    _blurIndex = _blurIndex + 1;
  }
  blur = _blurs[_blurIndex];
  return _blurs[_blurIndex];
}
