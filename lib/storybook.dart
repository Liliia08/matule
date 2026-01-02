import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class Storybook extends StatefulWidget {
  const Storybook();

  @override
  State<Storybook> createState() => _StorybookState();
}

class _StorybookState extends State<Storybook> {
  int _selectedIndex=0;

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
                text: "Подтвердить",
                onPressed: () {},
                enabled: true,
              ),
              SizedBox(height: 10),
              ui.bigbuttons.primary(
                text: "Подтвердить",
                onPressed: () {},
                enabled: false,
              ),
              SizedBox(height: 10),
              ui.bigbuttons.NullElevatedButton(
                text: "Подтвердить",
                onPressed: () {},
              ),
              SizedBox(height: 10),
              ui.bigbuttons.NonActive(text: "Подтвердить", onPressed: () {}),
              SizedBox(height: 10),
              ui.smallbuttons.primary(
                text: "Добавить",
                onPressed: () {},
                enabled: true,
              ),
              SizedBox(height: 10),
              ui.smallbuttons.primary(
                text: "Добавить",
                onPressed: () {},
                enabled: false,
              ),
              SizedBox(height: 10),
              ui.smallbuttons.Delete(
                text: "Убрать",
                onPressed: () {},
                enabled: true,
              ),
              SizedBox(height: 10),
              ui.smallbuttons.NonActive(
                text: "Подтверд...",
                onPressed: () {},
                enabled: true,
              ),
              SizedBox(height: 10),
              ui.cart.cart(onPressed: () {}),
              SizedBox(height: 10),
              ui.chips.primary(
                text: "Популярные",
                enabled: true,
                onPressed: () {},
              ),
              SizedBox(height: 10),
              ui.chips.primary(
                text: "Популярные",
                enabled: false,
                onPressed: () {},
              ),
              SizedBox(height: 10),
              ui.login.VK(onPressed: () {}),
              SizedBox(height: 10),
              ui.login.Yandex(onPressed: () {}),
              SizedBox(height: 10),
              Row(
                children: [
                  ui.icons.close(size: 20),
                  ui.icons.closeC(size: 20),
                  ui.icons.closeEye(size: 20),
                  ui.icons.correct(size: 20),
                  ui.icons.delete(size: 20),
                  ui.icons.down(size: 20),
                  ui.icons.download(size: 20),
                  ui.icons.eye(size: 20),
                  ui.icons.filter(size: 20),
                  ui.icons.left(size: 20),
                  ui.icons.doc(size: 20),
                  ui.icons.map(size: 20),
                  ui.icons.message(size: 20),
                  ui.icons.minus(size: 20),
                  ui.icons.nav(size: 20),
                ],
              ),
              Row(
                children: [
                  ui.icons.plus(size: 20),
                  ui.icons.point(size: 20),
                  ui.icons.scr(size: 20),
                  ui.icons.search(size: 20),
                  ui.icons.shop(size: 20),
                  ui.icons.voice(size: 20),
                ],
              ),
              SizedBox(height: 10),
              Inputs(hint: 'Введите имя', showValidationBorder: true),
              SizedBox(height: 10),
              Inputs(value: 'Иван', showValidationBorder: true),
              SizedBox(height: 10),
              Inputs(label: 'Имя', hint: 'Введите имя'),
              SizedBox(height: 10),
              Inputs(
                hint: 'Имя',
                hasError: true,
                helperText: 'Введите ваше имя',
              ),
              SizedBox(height: 10),
              Inputs(label: 'Имя', hint: 'Введите имя'),
              SizedBox(height: 10),
              Inputs(label: 'Имя', value: 'Введите имя'),
              SizedBox(height: 10),
              Inputs(value: '******', isPassword: true),
              SizedBox(height: 10),
              Inputs(hint: '--.--.----'),
              SizedBox(height: 10),
              ui.tabbar.create(initialIndex: 0),
              SizedBox(height: 10),
              ui.tabbar.create(initialIndex: 1),
              SizedBox(height: 10),
              ui.tabbar.create(initialIndex: 2),
              SizedBox(height: 10),
              ui.tabbar.create(initialIndex: 3),
              SizedBox(height: 10),
              ui.counter.disabled(onIncrement: (){}, onDecrement: (){}),
              ui.counter.active(onIncrement: (){}, onDecrement: (){}),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Menu(text: 'Пополярные', isActive: _selectedIndex == 0),
                      SizedBox(width: 10),
                      Menu(text: 'Женщинам'),
                      SizedBox(width: 10),
                      Menu(text: 'Мужчинам'),
                      SizedBox(width: 10),
                      Menu(text: 'Детям'),
                      SizedBox(width: 10),
                      Menu(text: 'Аксессуары'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Toggle(
                isActive: false,  onChanged: (value) {},),
              Toggle(  isActive: true,  onChanged: (value) {  },),
              SizedBox(height: 10,),
              ui.base.base(height: 138),
              ui.productCard.card(title: "Рубашка Воскресенье для машинного вязания",subtitle: "Мужская одежда", price: "300", button: ui.smallbuttons.primary(text: "Добавить", onPressed: (){})),
              ui.productCard.card(title: "Рубашка Воскресенье для машинного вязания",subtitle: "Мужская одежда", price: "300", button: ui.smallbuttons.Delete(text: "Убрать", onPressed: (){})),
              ui.productCard.noPrice(title: "Мой первый проект",subtitle: "Прошло 2 дня", button: ui.smallbuttons.primary(text: "Открыть", onPressed: (){})),
              ui.productCard.cartItem(title: "Рубашка Воскресенье для машинного вязания", price: "300", onRemove: (){}),
              SizedBox(height: 10,),
              ui.search,
            ],
          ),
        ),
      ),
    );
  }
}
