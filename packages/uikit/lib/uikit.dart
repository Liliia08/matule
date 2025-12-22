library uikit;

import 'package:uikit/src/colors.dart';
import 'package:uikit/src/components/buttoms/small_buttons.dart';
import 'package:uikit/src/typography.dart';
import 'package:uikit/src/components/buttoms/big_buttoms.dart';
import 'package:uikit/src/components/buttoms/small_buttons.dart';
import 'package:uikit/src/images/icons.dart';
import 'package:uikit/src/components/buttoms/cart.dart';



export 'src/colors.dart';
export 'src/typography.dart';
export 'src/components/buttoms/big_buttoms.dart';
export 'src/components/buttoms/small_buttons.dart';
export 'src/images/icons.dart';
export 'src/components/buttoms/cart.dart';

class UIKit {
  static final UIKit _instance = UIKit._internal();
  factory UIKit() => _instance;
  UIKit._internal();

  Colorss get color => Colorss();
  Font get font => Font();
  BigButtons get bigbuttons => BigButtons();
  SmallButtons get smallbuttons => SmallButtons();
  AppImages get images => AppImages();
  Cart get cart => Cart();
}

final ui = UIKit();
