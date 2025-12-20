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
      body: Padding(
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
          ],
        ),
      ),
    );
  }
}
