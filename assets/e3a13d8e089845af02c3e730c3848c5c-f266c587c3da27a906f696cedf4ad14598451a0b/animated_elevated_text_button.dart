// Flutter Packages
import 'package:flutter/material.dart';

class AnimatedElevatedTextButton extends StatefulWidget {
  const AnimatedElevatedTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
    this.radius = 50,
  });

  final String text;
  final VoidCallback onPressed;
  final double radius;
  final Color? color;

  @override
  State<AnimatedElevatedTextButton> createState() =>
      _AnimatedElevatedTextButtonState();
}

class _AnimatedElevatedTextButtonState
    extends State<AnimatedElevatedTextButton> {
  final duration = const Duration(milliseconds: 150);

  double top = 0;
  double bottom = 8;

  @override
  Widget build(BuildContext context) {
    final defaultColor = Theme.of(context).primaryColor;

    return GestureDetector(
      onTap: () async {
        setState(() {
          top = 8;
          bottom = 0;
        });

        await Future.delayed(duration).then(
          (_) => setState(() {
            top = 0;
            bottom = 8;
          }),
        );

        await Future.delayed(duration).then((_) => widget.onPressed());
      },
      child: SizedBox(
        height: 60,
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: duration,
              top: 10,
              right: 0,
              bottom: 0,
              left: 0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: widget.color != null
                      ? widget.color?.withOpacity(0.2)
                      : defaultColor,
                  borderRadius: BorderRadius.circular(widget.radius),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: duration,
              top: top,
              right: 0,
              bottom: bottom,
              left: 0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: widget.color != null
                      ? widget.color?.withOpacity(0.8)
                      : defaultColor,
                  borderRadius: BorderRadius.circular(widget.radius),
                  border: Border.all(
                    width: 2,
                    color: widget.color ?? defaultColor,
                  ),
                ),
                child: Center(
                  child: Text(
                    widget.text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
