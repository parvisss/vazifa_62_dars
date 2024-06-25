import 'dart:math';

import 'package:custom_drower/painters/body.dart';
import 'package:custom_drower/painters/hour.dart';
import 'package:custom_drower/painters/minutes.dart';
import 'package:custom_drower/painters/seconds.dart';
import 'package:flutter/material.dart';

class RotatingAnimation extends StatefulWidget {
  const RotatingAnimation({super.key});

  @override
  State<RotatingAnimation> createState() => _RotatingAnimationState();
}

class _RotatingAnimationState extends State<RotatingAnimation>
    with TickerProviderStateMixin {
  late final Animation<double> _minuteAnimation;
  late final Animation<double> _secondAnimation;
  late final Animation<double> _hourdAnimation;
  late final AnimationController _secondAnimationController;
  late final AnimationController _minuteAnimationController;
  late final AnimationController _hourAnimationController;

  @override
  void initState() {
    super.initState();
    _secondAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(minutes: 1),
    )..repeat();

    _minuteAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(hours: 1),
    )..repeat();

    _hourAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(hours: 12),
    )..repeat();

    _minuteAnimation = Tween<double>(begin: 0, end: 2 * pi)
        .animate(_minuteAnimationController);

    _secondAnimation = Tween<double>(begin: 0, end: 2 * pi)
        .animate(_secondAnimationController);
    _hourdAnimation =
        Tween<double>(begin: 0, end: 2 * pi).animate(_hourAnimationController);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomPaint(
          painter: Body(),
        ),
        AnimatedBuilder(
          animation: _secondAnimation,
          builder: (ctx, child) {
            return Transform.rotate(
              angle: _secondAnimation.value,
              child: const CustomPaint(
                painter: Seconds(),
              ),
            );
          },
        ),
        AnimatedBuilder(
          animation: _minuteAnimation,
          builder: (context, child) {
            return Transform.rotate(
              angle: _minuteAnimation.value,
              child: const CustomPaint(
                painter: Minutes(),
              ),
            );
          },
        ),
        AnimatedBuilder(
          animation: _hourdAnimation,
          builder: (context, child) {
            return Transform.rotate(
              angle: _hourdAnimation.value,
              child: CustomPaint(
                painter: Hour(),
              ),
            );
          },
        )
      ],
    );
  }
}
