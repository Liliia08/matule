import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class Counter {
  // Активный счетчик
  Widget active({
    VoidCallback? onIncrement,
    VoidCallback? onDecrement,
  }) {
    return _buildCounter(
      minusColor: const Color(0xFF939396),
      plusColor: const Color(0xFF939396),
      onIncrement: onIncrement ?? () {},
      onDecrement: onDecrement ?? () {},
    );
  }

  // Неактивный счетчик
  Widget disabled({
    VoidCallback? onIncrement,
    VoidCallback? onDecrement,
  }) {
    return _buildCounter(
      minusColor: const Color(0xFFB8C1CC),
      plusColor: const Color(0xFF939396),
      onIncrement: onIncrement ?? () {},
      onDecrement: onDecrement ?? () {},
    );
  }

  Widget _buildCounter({
    required Color minusColor,
    required Color plusColor,
    required VoidCallback onIncrement,
    required VoidCallback onDecrement,
  }) {
    return Container(
      width: 64,
      height: 32,
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F9),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: SizedBox(
                height: 16,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: const Color(0xFFEBEBEB),
                        width: 1,
                      ),
                    ),
                  ),
                  child: IconButton(
                    onPressed: onDecrement,
                    icon: ui.icons.minus(size: 20,color: minusColor),
                    padding: EdgeInsets.zero,
                  ),
                ),
              ),
            ),
          ),

          // Кнопка плюс
          Expanded(
            child: IconButton(
              onPressed: onIncrement,
              icon:ui.icons.plus(size: 20,color: plusColor),
              padding: EdgeInsets.zero,
            ),
          ),
        ],
      ),
    );
  }
}