import 'package:flutter/material.dart';

class AppImages {

  Image map({double? size, Color? color}) => _icon('map', size: size, color: color);
  Image close({double? size, Color? color}) => _icon('close', size: size, color: color);
  Image closeC({double? size, Color? color}) => _icon('closeC', size: size, color: color);
  Image delete({double? size, Color? color}) => _icon('delete', size: size, color: color);
  Image down({double? size, Color? color}) => _icon('down', size: size, color: color);
  Image download({double? size, Color? color}) => _icon('download', size: size, color: color);
  Image filter({double? size, Color? color}) => _icon('filter', size: size, color: color);
  Image left({double? size, Color? color}) => _icon('left', size: size, color: color);
  Image message({double? size, Color? color}) => _icon('message', size: size, color: color);
  Image minus({double? size, Color? color}) => _icon('minus', size: size, color: color);
  Image plus({double? size, Color? color}) => _icon('plus', size: size, color: color);
  Image search({double? size, Color? color}) => _icon('search', size: size, color: color);
  Image shop({double? size, Color? color}) => _icon('shop', size: size, color: color);
  Image point({double? size, Color? color}) => _icon('point', size: size, color: color);
  Image correct({double? size, Color? color}) => _icon('correct', size: size, color: color);
  Image eye({double? size, Color? color}) => _icon('eye', size: size, color: color);
  Image closeEye({double? size, Color? color}) => _icon('closeEye', size: size, color: color);
  Image scr({double? size, Color? color}) => _icon('scr', size: size, color: color);
  Image voice({double? size, Color? color}) => _icon('voice', size: size, color: color);
  Image nav({double? size, Color? color}) => _icon('nav', size: size, color: color);
  Image doc({double? size, Color? color}) => _icon('doc', size: size, color: color);
  Image vk({double? size, Color? color}) => _icon('vk',size: size, color: color);
  Image yandex({double? size, Color? color}) => _icon('yandex',size: size, color: color);


  Image _icon(String name, {double? size, Color? color}) {
    return Image.asset(
      'packages/uikit/assets/images/$name.png',
      width: size,
      height: size,
      color: color,
      //areger
    );
  }
}