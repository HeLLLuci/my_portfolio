import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yelwinoo/presentation/utils/extensions/extensions.dart';
import 'package:yelwinoo/presentation/widgets/widgets.dart';

import '../../../configs/configs.dart';

class ProjectTitlePage extends StatefulWidget {
  const ProjectTitlePage({super.key});

  @override
  State<ProjectTitlePage> createState() => _ProjectTitlePageState();
}

class _ProjectTitlePageState extends State<ProjectTitlePage>
    with TickerProviderStateMixin {
  late AnimationController _titleController;
  late AnimationController _stickController;

  @override
  void initState() {
    super.initState();
    _titleController = AnimationController(vsync: this, duration: duration2000)
      ..forward();
    _stickController = AnimationController(vsync: this, duration: duration2000)
      ..repeat();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _stickController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: SvgPicture.asset(
            kaComplexity,
            semanticsLabel: 'Complexity SVG',
            width: context.percentHeight(s30),
            height: context.percentHeight(s30),
          ).addPadding(
            edgeInsets: context.percentPadding(
              l: s30,
              b: s10,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: AnimatedTextSlideBoxTransition(
            controller: _titleController,
            text: ksBrowseProjects,
            coverColor: kPrimary,
            textStyle: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: AnimatedSlideBox(
            controller: _stickController,
            height: context.percentHeight(s40),
            isVertical: true,
            coverColor: kPrimary,
            visibleBoxCurve: Curves.fastLinearToSlowEaseIn,
            width: s6,
          ),
        ),
      ],
    );
  }
}