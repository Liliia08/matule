import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode(); // Добавил FocusNode
  bool _showClose = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _showClose = _controller.text.isNotEmpty;
      });
    });
    // Следим за фокусом
    _focusNode.addListener(() {
      setState(() {
        _showClose = _controller.text.isNotEmpty || _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose(); // Не забываем удалить
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 48,
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F9),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFFEBEBEB),
          width: 1,
        ),
      ),
      padding: const EdgeInsets.only(left: 14, right: 19),
      child: Row(
        children: [
          ui.icons.search(size: 20, color: Color(0xFF7E7E9A)),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: _controller,
              focusNode: _focusNode, // Добавил focusNode
              cursorColor: ui.color.accent, // Синий курсор
              decoration: InputDecoration(
                hintText: 'Искать описание',
                hintStyle: ui.font.headlineRegular.copyWith(
                  color: Color(0xFF939396),
                ),
                border: InputBorder.none,
              ),
              style: const TextStyle(fontSize: 14),
            ),
          ),
          // Изменил условие: показываем крестик если есть текст ИЛИ поле в фокусе
          if (_showClose)
            GestureDetector(
              onTap: () {
                _controller.clear();
                _focusNode.requestFocus(); // Оставляем фокус после очистки
              },
              child: ui.icons.close(size: 20, color: Color(0xFF7E7E9A)),
            ),
        ],
      ),
    );
  }
}