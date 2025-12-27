library uikit;

import 'package:uikit/src/colors.dart';
import 'package:uikit/src/components/buttoms/small_buttons.dart';
import 'package:uikit/src/typography.dart';
import 'package:uikit/src/components/buttoms/big_buttoms.dart';
import 'package:uikit/src/images/icons.dart';
import 'package:uikit/src/components/buttoms/cart.dart';
import 'package:uikit/src/components/buttoms/chips.dart';
import 'package:uikit/src/components/buttoms/login.dart';
import 'package:uikit/src/components/inputs/input.dart';
import 'package:uikit/src/components/tabbar/tabbar.dart';
import 'package:uikit/src/components/control/counter.dart';
import 'package:uikit/src/components/category/category.dart';
import 'package:uikit/src/components/control/toggle.dart';
import 'package:uikit/src/components/card/null.dart';
import 'package:uikit/src/components/card/primary.dart';



export 'src/colors.dart';
export 'src/typography.dart';
export 'src/components/buttoms/big_buttoms.dart';
export 'src/components/buttoms/small_buttons.dart';
export 'src/images/icons.dart';
export 'src/components/buttoms/cart.dart';
export 'src/components/buttoms/chips.dart';
export 'src/components/buttoms/login.dart';
export 'src/components/inputs/input.dart';
export 'src/components/tabbar/tabbar.dart';
export 'src/components/control/counter.dart';
export 'src/components/category/category.dart';
export 'src/components/control/toggle.dart';
export 'src/components/card/null.dart';
export 'src/components/card/primary.dart';

class UIKit {
  static final UIKit _instance = UIKit._internal();
  factory UIKit() => _instance;
  UIKit._internal();

  Colorss get color => Colorss();
  Font get font => Font();
  BigButtons get bigbuttons => BigButtons();
  SmallButtons get smallbuttons => SmallButtons();
  AppImages get icons => AppImages();
  Cart get cart => Cart();
  Chips get chips => Chips();
  Login get login => Login();
  Inputs get input => Inputs();
  BottomNavigation get tabbar => BottomNavigation();
  Counter get counter => Counter();
  Menu get menu => Menu(text:" ");
  Toggle get toggle => Toggle();
  Cards get base => Cards();
  ProductCard get productCard => ProductCard();
}

final ui = UIKit();
