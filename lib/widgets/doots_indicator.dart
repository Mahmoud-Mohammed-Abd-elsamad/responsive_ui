import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/widgets/custom_dots.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.pageViewIndex});

  final int pageViewIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) => Padding(
        padding: const EdgeInsets.only(right: 8),
        child: CustomDots(isActive: pageViewIndex == index),
      )),
    );
  }
}
