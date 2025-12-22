import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class Storybook extends StatefulWidget {
  const Storybook();

  @override
  State<Storybook> createState() => _StorybookState();
}

class _StorybookState extends State<Storybook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ui.color.white,
      body: SingleChildScrollView(
        child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text("Кнопки", style: ui.font.title1ExtraBold),
            ),
            SizedBox(height: 10),
            ui.bigbuttons.primary(
                text: "Подтвердить", onPressed: () {}, enabled: true),
            SizedBox(height: 10),
            ui.bigbuttons.primary(
                text: "Подтвердить", onPressed: () {}, enabled: false),
            SizedBox(height: 10),
            ui.bigbuttons.NullElevatedButton(
                text: "Подтвердить", onPressed: () {}),
            SizedBox(height: 10),
            ui.bigbuttons.NonActive(text: "Подтвердить", onPressed: () {}),
            SizedBox(height: 10),
            ui.smallbuttons.primary(
                text: "Добавить", onPressed: () {}, enabled: true),
            SizedBox(height: 10),
            ui.smallbuttons.primary(
                text: "Добавить", onPressed: () {}, enabled: false),
            SizedBox(height: 10,),
            ui.smallbuttons.Delete(
                text: "Убрать", onPressed: () {}, enabled: true),
            SizedBox(height: 10,),
            ui.smallbuttons.NonActive(
                text: "Подтверд...", onPressed: () {}, enabled: true),
            SizedBox(height: 10,),
            ui.cart.cart(onPressed: () {}),
            SizedBox(height: 10,),
            Row(children: [
            AppImages.close(size: 20), AppImages.closeC(size: 20),AppImages.closeEye(size: 20),AppImages.correct(size: 20),AppImages.delete(size: 20),AppImages.down(size: 20),AppImages.download(size: 20),AppImages.eye(size: 20),AppImages.filter(size: 20),AppImages.left(size: 20),AppImages.doc(size: 20),AppImages.map(size: 20),
            AppImages.message(size: 20),AppImages.minus(size: 20),AppImages.nav(size: 20),]),
             Row(children: [
              AppImages.plus(size: 20),AppImages.point(size: 20),AppImages.scr(size: 20),AppImages.search(size: 20),AppImages.shop(size: 20),AppImages.voice(size: 20)
          ])],
        ),
      ),)
    );
  }
}
