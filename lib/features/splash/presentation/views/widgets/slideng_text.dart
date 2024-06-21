import 'package:flutter/material.dart';

class SlidengText extends StatelessWidget {
  const SlidengText({
    super.key,
    required this.slidinAnimation,
  });

  final Animation<Offset> slidinAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidinAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidinAnimation,
            child: const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
