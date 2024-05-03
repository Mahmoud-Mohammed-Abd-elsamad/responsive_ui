import 'package:flutter/cupertino.dart';

class CustomDots extends StatelessWidget {
  const CustomDots({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 300),
      height: 8,
      width: isActive? 32:8,
      decoration:  BoxDecoration(
        color: isActive? const Color(0xff4EB7F2) : const Color(0xffE8E8E8),
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
    );
  }
}
