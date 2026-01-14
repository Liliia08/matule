import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class Toggle extends StatefulWidget {
  final bool isActive;
  final ValueChanged<bool>? onChanged;

  const Toggle({super.key, this.isActive = false, this.onChanged});

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  late bool _isActive;

  @override
  void initState() {
    super.initState();
    _isActive = widget.isActive;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() => _isActive=!_isActive);
        widget.onChanged?.call(_isActive);
      },
      child: Container(
        height: 48,
        width: 28,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14)
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:uikit/uikit.dart';
//
// class Toggle extends StatefulWidget {
//   final bool isActive;
//   final ValueChanged<bool>? onChanged;
//
//   const Toggle({
//     super.key,
//     this.isActive = false,
//     this.onChanged,
//   });
//
//   @override
//   State<Toggle> createState() => _ToggleState();
// }
//
// class _ToggleState extends State<Toggle> {
//   bool _isActive = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _isActive = widget.isActive;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _isActive = !_isActive;
//         });
//         widget.onChanged?.call(_isActive);
//       },
//       child: Container(
//         width: 48,
//         height: 28,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(14), // 28/2 = 14
//           color: _isActive ? ui.color.accent : Color(0xFFEBEBEB),
//         ),
//         child: Padding(
//           padding: EdgeInsets.all(2),
//           child: Align(
//             alignment: _isActive ? Alignment.centerRight : Alignment.centerLeft,
//             child: Container(
//               width: 24,
//               height: 24,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.06), // 6%
//                     blurRadius: 1,
//                     offset: Offset(0, 3),
//                   ),
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.15), // 15%
//                     blurRadius: 8,
//                     offset: Offset(0, 3),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
