import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class BottomNavigation {
  // Добавляем параметр onIndexChanged
  Widget create({int initialIndex = 0, ValueChanged<int>? onIndexChanged}) {
    return _BottomNavigationWidget(
      initialIndex: initialIndex,
      onIndexChanged: onIndexChanged,
    );
  }
}

class _BottomNavigationWidget extends StatefulWidget {
  final int initialIndex;
  final ValueChanged<int>? onIndexChanged; // Добавляем сюда

  const _BottomNavigationWidget({
    required this.initialIndex,
    this.onIndexChanged, // И сюда
  });

  @override
  State<_BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<_BottomNavigationWidget> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() => _currentIndex = index);
        widget.onIndexChanged?.call(index); 
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: ui.color.accent,
      unselectedItemColor: Color(0xFFB8C1CC),
      selectedLabelStyle: TextStyle(
        color: ui.color.accent,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: TextStyle(
        color: Color(0xFFB8C1CC),
        fontSize: 12,
      ),
      items: [
        BottomNavigationBarItem(
          icon: _currentIndex == 0 ? ui.icons.homeC(size: 32) : ui.icons.home(size: 32),
          label: 'Главная',
        ),
        BottomNavigationBarItem(
          icon: _currentIndex == 1 ? ui.icons.katC(size: 32) : ui.icons.kat(size: 32),
          label: 'Каталог',
        ),
        BottomNavigationBarItem(
          icon: _currentIndex == 2 ? ui.icons.projectC(size: 24) : ui.icons.project(size: 24),
          label: 'Проекты',
        ),
        BottomNavigationBarItem(
          icon: _currentIndex == 3 ? ui.icons.profileC(size: 32) : ui.icons.profile(size: 32),
          label: 'Профиль',
        ),
      ],
    );
  }
}