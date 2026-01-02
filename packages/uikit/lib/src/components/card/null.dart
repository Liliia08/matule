// lib/src/components/card/null.dart
import 'package:flutter/material.dart';

class Cards {

  Widget base({Widget? child, double? height}) {
    return Container(
      width: 335,
      height: height,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.all(Radius.circular(12)),
        border: Border.fromBorderSide(
          BorderSide(color: Color(0xFFF4F4F4), width: 1),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x99E4E8F5),
            blurRadius: 20,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: child,
    );
  }
}

// import 'package:flutter/material.dart';
//
// class NullCard extends StatelessWidget {
//   final Widget? child;
//
//   const NullCard({
//     super.key,
//     this.child,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 335,      // ← фиксированная ширина
//       height: 138,      // ← фиксированная высота
//       decoration: BoxDecoration(
//         color: Colors.white,                 // ← фиксированный цвет фона
//         borderRadius: BorderRadius.circular(12),  // ← фиксированный радиус
//         border: Border.all(
//           color: const Color(0xFFF4F4F4),    // ← фиксированный цвет рамки
//           width: 1,                          // ← фиксированная толщина рамки
//         ),
//         boxShadow: const [                   // ← фиксированная тень
//           BoxShadow(
//             color: Color(0x99E4E8F5),
//             blurRadius: 20,
//             offset: Offset.zero,
//           ),
//         ],
//       ),
//       child: child,
//     );
//   }
// }