import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class Inputs extends StatefulWidget {
  final String? label;
  final String? hint;
  final String? value;
  final bool isPassword;
  final bool showEyeIcon;
  final Function(String)? onChanged;
  final bool showValidationBorder;
  final bool hasError;
  final String? helperText;

  const Inputs({
    super.key,
    this.label,
    this.hint,
    this.value = '',
    this.isPassword = false,
    this.showEyeIcon = true,
    this.onChanged,
    this.showValidationBorder = false,
    this.hasError = false,
    this.helperText,
  });

  @override
  State<Inputs> createState() => _SimpleInputState();
}

class _SimpleInputState extends State<Inputs> {
  late TextEditingController _controller;
  bool _showPassword = false;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.value);
    // ИЗМЕНЕНИЕ ТОЛЬКО ЗДЕСЬ: убрал отрицание
   _showPassword = false;//!widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Лейбл
        if (widget.label != null)
          Text(
            widget.label!,
            style: ui.font.captionSemibold.copyWith(
              color: ui.color.discrp,
            ),
          ),
        const SizedBox(height: 4
        ),

        // Поле ввода
        SizedBox(
          width: 335,
          height: 48,
          child: FocusScope(
            child: Focus(
              onFocusChange: (hasFocus) {
                setState(() => _isFocused = hasFocus);
              },
              child: TextFormField(
                controller: _controller,
                obscureText: widget.isPassword && !_showPassword,
                obscuringCharacter: '*',
                cursorColor: widget.hasError ? ui.color.error : ui.color.accent,
                decoration: InputDecoration(
                  hintText: widget.hint,
                  hintStyle: ui.font.textRegular.copyWith(
                    color: ui.color.discrp,
                  ),
                  // Заливка
                  filled: true,
                  fillColor: widget.hasError
                      ? const Color(0x1AFD3535) // #FD35351A для ошибки
                      : ui.color.input_bg,

                  // Иконка глаза для пароля
                  suffixIcon: widget.isPassword && widget.showEyeIcon
                      ? IconButton(
                    icon: _showPassword
                        ? ui.icons.eye(size: 20)
                        : ui.icons.closeEye(size: 20),
                    onPressed: () {
                      setState(() => _showPassword = !_showPassword);
                    },
                  )
                      : null,

                  // Границы
                  border: _buildBorder(_getBorderColor(), 1),
                  focusedBorder: _buildBorder(
                      widget.hasError ? ui.color.error : ui.color.accent.withOpacity(0.5),
                      1
                  ),
                  enabledBorder: _buildBorder(_getBorderColor(), 1),
                ),

                onChanged: (text) {
                  widget.onChanged?.call(text);
                },
              ),
            ),
          ),
        ),

        // Helper текст
        if (widget.helperText != null) ...[
          const SizedBox(height: 4),
          Text(
            widget.helperText!,
            style: TextStyle(
              fontSize: 12,
              color: widget.hasError ? ui.color.error : Colors.grey,
            ),
          ),
        ],
      ],
    );
  }

  OutlineInputBorder _buildBorder(Color color, double width) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color, width: width),
    );
  }

  Color _getBorderColor() {
    if (_isFocused) {
      return widget.hasError ? ui.color.error : ui.color.accent;
    }

    if (widget.hasError) {
      return ui.color.error;
    }

    if (widget.showValidationBorder && _controller.text.isNotEmpty) {
      return Color(0xFFB8C1CC);}

    return Color(0xFFEBEBEB);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}