import 'package:flutter/material.dart';
import 'package:yelwinoo/presentation/utils/extensions/extensions.dart';
import 'package:yelwinoo/presentation/widgets/widgets.dart';

import '../../../configs/configs.dart';
import 'wave_path.dart';

class Overall extends StatefulWidget {
  const Overall({super.key});

  @override
  State<Overall> createState() => _OverallState();
}

class _OverallState extends State<Overall> with TickerProviderStateMixin {
  late AnimationController _slideController;
  late AnimationController _firstController;
  late AnimationController _secondController;
  late AnimationController _textController;
  late AnimationController _stickController;
  late AnimationController _waveController;

  @override
  void initState() {
    super.initState();
    _slideController = AnimationController(vsync: this, duration: duration2000)
      ..forward();
    _slideController.addStatusListener(slideControllerListener);
    _firstController = AnimationController(vsync: this, duration: duration2000)
      ..forward();
    _secondController =
        AnimationController(vsync: this, duration: duration2000);
    _firstController.addStatusListener(firstControllerListener);
    _textController = AnimationController(vsync: this, duration: duration2000);
    _stickController = AnimationController(vsync: this, duration: duration1000)
      ..forward();
    _stickController.addStatusListener(stickControllerListener);
    _waveController = AnimationController(vsync: this, duration: duration2000);
  }

  void slideControllerListener(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      _secondController.forward();
    }
  }

  void stickControllerListener(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      _textController.forward();
      _waveController.forward();
    }
  }

  void firstControllerListener(AnimationStatus status) {}
  @override
  void dispose() {
    _firstController.dispose();
    _secondController.dispose();
    _slideController.dispose();
    _stickController.dispose();
    _textController.dispose();
    _waveController.dispose();
    super.dispose();
  }

  Animation<Offset> get slideLeftTween => Tween<Offset>(
        begin: const Offset(-1, 0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
          parent: _slideController, curve: Curves.fastLinearToSlowEaseIn));
  Animation<Offset> get slideRightTween => Tween<Offset>(
        begin: const Offset(1, 0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
          parent: _slideController, curve: Curves.fastLinearToSlowEaseIn));
  Animation<Offset> get slideUpTween => Tween<Offset>(
        begin: const Offset(0, 1),
        end: Offset.zero,
      ).animate(CurvedAnimation(
          parent: _slideController, curve: Curves.fastLinearToSlowEaseIn));
  Animation<Color?> get introColorTween =>
      ColorTween(begin: kPrimary, end: kTeal200).animate(
        CurvedAnimation(
          parent: _firstController,
          curve: Curves.easeInOut,
        ),
      );
  Animation<Color?> get colorTween =>
      ColorTween(begin: kPrimary, end: kSecondary).animate(
        CurvedAnimation(
          parent: _firstController,
          curve: Curves.easeInOut,
        ),
      );
  Animation<Color?> get transparentColorTween =>
      ColorTween(begin: kSecondary, end: kPrimary).animate(
        CurvedAnimation(
          parent: _firstController,
          curve: Curves.easeInOut,
        ),
      );
  Animation<Color?> get coffeeColorTween =>
      ColorTween(begin: kGrey50, end: kCoffee).animate(
        CurvedAnimation(
          parent: _firstController,
          curve: Curves.easeInOut,
        ),
      );
  Animation<Color?> get strokeColorTween =>
      ColorTween(begin: kGrey50, end: kGrey300).animate(
        CurvedAnimation(
          parent: _stickController,
          curve: Curves.easeInOut,
        ),
      );
  Animation<Color?> get blackStrokeColorTween =>
      ColorTween(begin: kGrey50, end: kGrey).animate(
        CurvedAnimation(
          parent: _stickController,
          curve: Curves.easeInOut,
        ),
      );
  Animation<double> get waveTween => CurvedAnimation(
        parent: _waveController,
        curve: Curves.easeInOut,
      );
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      Positioned(
        top: context.percentHeight(s10),
        left: context.percentWidth(s8),
        child: AnimatedOutlinedText(
          text: "I'm",
          fontSize: s80,
          strokeColor: kTeal200,
          animation: introColorTween,
          fontWeight: FontWeight.w500,
        ),
      ),
      Positioned(
        top: context.percentHeight(s10),
        right: context.percentWidth(s8),
        child: <Widget>[
          AnimatedTextSlideBoxTransition(
            text: ksAllAboutMe.toUpperCase(),
            controller: _textController,
            coverColor: kPrimary,
            textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
          horizontalSpaceMedium,
          AnimatedHorizontalStick(
            controller: _stickController,
          ),
        ].addRow(),
      ),
      Positioned(
        top: context.percentHeight(s18),
        left: context.percentWidth(s18),
        child: SlideTransition(
          position: slideLeftTween,
          child: AnimatedOutlinedText(
            text: "a  tech  nerd".toUpperCase(),
            fontSize: s200,
            strokeWidth: s18,
            letterSpacing: 1.5,
            strokeColor: kSecondary,
            animation: transparentColorTween,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      Positioned(
        top: context.percentHeight(s32),
        left: context.percentWidth(s4),
        child: SlideTransition(
          position: slideRightTween,
          child: AnimatedOutlinedText(
            text: "coffee addict".toUpperCase(),
            fontSize: s180,
            strokeColor: kCoffee,
            fontWeight: FontWeight.w700,
            animation: coffeeColorTween,
          ),
        ),
      ),
      Positioned(
        top: context.percentHeight(s48),
        right: context.percentWidth(s8),
        child: AnimatedStrokeText(
          text: 'ai enthusiast'.toUpperCase(),
          fontSize: s70,
          strokeWidth: s1,
          letterSpacing: s10,
          fontWeight: FontWeight.w900,
          animation: blackStrokeColorTween,
          textColor: kTransparent,
        ),
      ),
      Positioned(
        bottom: context.percentHeight(s1),
        right: context.percentHeight(s3),
        child: <Widget>[
          Container(
            width: s10,
            height: s10,
            decoration: BoxDecoration(
              color: kCoffee,
              shape: BoxShape.circle,
            ),
          ),
          horizontalSpaceMedium,
          AnimatedStrokeText(
            text: 'an introvert'.toUpperCase(),
            fontSize: s30,
            strokeWidth: s1,
            letterSpacing: s2,
            fontWeight: FontWeight.w900,
            animation: strokeColorTween,
            textColor: kTransparent,
          ),
        ].addRow(
          mainAxisSize: MainAxisSize.min,
        ),
      ),
      Positioned(
        bottom: context.percentHeight(s8),
        left: context.percentWidth(s10),
        child: SlideTransition(
          position: slideUpTween,
          child: AnimatedOutlinedText(
            text: "flutter  dev".toUpperCase(),
            fontSize: s250,
            strokeColor: kSecondary,
            animation: colorTween,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      Positioned(
        bottom: context.percentHeight(s20),
        left: context.percentWidth(s6),
        child: WavePath(
          color: kCoffee,
          animation: waveTween,
        ).addSizedBox(
          width: context.percentWidth(s10),
          height: s30,
        ),
      ),
    ].addStack();
  }
}