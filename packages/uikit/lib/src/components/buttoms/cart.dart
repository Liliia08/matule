import 'package:flutter/material.dart';
// import 'package:uikit/src/typography.dart';
// import 'package:uikit/src/colors.dart';
// import 'package:uikit/src/images/icons.dart';
import 'package:uikit/uikit.dart';


class Cart {
  final Colorss colors = Colorss();
  final Font font = Font();
  final AppImages icons = AppImages();

  Widget cart({
    VoidCallback? onPressed,
  }) {

    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
               padding:EdgeInsets.all(16),
               backgroundColor:  colors.accent,
               foregroundColor: colors.white,
               minimumSize: Size(335, 56),
               // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                icons.shop(size: 20, color: colors.white, ), // Иконка
                SizedBox(width: 16),
                Text(
                  'В корзину',
                  style: font.title3Semibold,
                  ),
               ]
            ),
              SizedBox(width: 140),

          Text(
              '500 ₽',
              style: font.title3Semibold
              ),
      ]
    )
    );
  }
}
// return ElevatedButton(
//   onPressed: onPressed,
//   style: ElevatedButton.styleFrom(
//     backgroundColor:  colors.accent,
//     foregroundColor: colors.white,
//     minimumSize: Size(335, 56),
//     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//   ),
//   child: Text(text, style: font.title3Semibold),
// );