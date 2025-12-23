import 'package:flutter/material.dart';
//import 'package:uikit/src/typography.dart';
import 'package:uikit/uikit.dart';

class Login {
  final Font font = Font();

  Widget VK({VoidCallback? onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        minimumSize: Size(335, 60),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        side: BorderSide(color: Color(0xFFEBEBEB)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Row(
        children: [
          SizedBox(width: 100.5,),
          Image.asset('assets/images/vk.png',height: 32,width: 32,),
          SizedBox(width: 16),
          Text('Войти с VK', style: font.title3Semibold),
        ],
      ),
    );
  }
  Widget Yandex({VoidCallback? onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        minimumSize: Size(335, 60),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        side: BorderSide(color: Color(0xFFEBEBEB)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Row(
        children: [
          SizedBox(width: 83.5,),
          Image.asset('assets/images/yandex.png',height: 32,width: 32,),
          SizedBox(width: 16),
          Text('Войти с Yandex', style: font.title3Semibold),
        ],
      ),
    );
  }
}
