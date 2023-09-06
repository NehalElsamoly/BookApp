import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
    required this.animation,
  });

  final Animation<Offset> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, _) => SlideTransition(
        position: animation,
        child: const Text(
          'Reed Free Books',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
