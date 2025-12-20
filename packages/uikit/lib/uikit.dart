library uikit;

import 'package:uikit/src/colors.dart';
import 'package:uikit/src/components/buttoms/small_buttons.dart';
import 'package:uikit/src/typography.dart';
import 'package:uikit/src/components/buttoms/big_buttoms.dart';
import 'package:uikit/src/components/buttoms/small_buttons.dart';

export 'src/colors.dart';
export 'src/typography.dart';
export 'src//components/buttoms/big_buttoms.dart';
export 'src//components/buttoms/small_buttons.dart';

class UIKit {
  static final UIKit _instance = UIKit._internal();
  factory UIKit() => _instance;
  UIKit._internal();

  Colorss get color => Colorss();
  Font get font => Font();
  BigButtons get bigbuttons => BigButtons();
  SmallButtons get smallbuttons => SmallButtons();
}


final ui = UIKit();
