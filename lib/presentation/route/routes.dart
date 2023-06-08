import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yelwinoo/data/model/showcase_project.dart';
import 'package:yelwinoo/presentation/configs/configs.dart';
import 'package:yelwinoo/presentation/utils/extensions/extensions.dart';
import 'package:yelwinoo/presentation/views/about/about_view.dart';
import 'package:yelwinoo/presentation/views/certificates/certificates_view.dart';
import 'package:yelwinoo/presentation/views/home/home_page.dart';
import 'package:yelwinoo/presentation/views/project_details/project_details_view.dart';
import 'package:yelwinoo/presentation/views/projects/projects_view.dart';

class RouteGen {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.home:
        return _buildRoute(const HomePage(), settings: settings);
      case Routes.projects:
        return _buildRoute(const ProjectsView(), settings: settings);
      case Routes.projectDetails:
        return _buildRoute(
            ProjectDetailsView(
              project: arguments as ShowcaseProject,
            ),
            settings: settings);
      case Routes.certificates:
        return _buildRoute(const CertificatesView(), settings: settings);
      case Routes.about:
        return _buildRoute(const AboutView(), settings: settings);
      default:
        return _buildRoute(const ErrorView(), settings: settings);
    }
  }

  static PageRouteBuilder _buildRoute(Widget child, {RouteSettings? settings}) {
    return SlideDownRoute(
      settings: settings,
      enterWidget: child,
    );
  }
}

class Routes {
  static const home = "/";
  static const certificates = "/certificates";
  static const projects = "/projects";
  static const projectDetails = "/project_details";
  static const about = "/about";
  static const contact = "/contact_me";
}

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error Page'),
      ),
      body: Center(
        child: Text(
          "404 - Page Not Found!",
          style: context.titleLarge,
        ),
      ),
    );
  }
}

class SlideDownRoute extends PageRouteBuilder {
  final Widget enterWidget;

  SlideDownRoute({
    required this.enterWidget,
    super.settings,
  }) : super(
            transitionDuration: duration500,
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return enterWidget;
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, -1.0),
                  end: Offset.zero,
                ).animate(
                  CurvedAnimation(
                    parent: animation,
                    curve: Curves.fastLinearToSlowEaseIn,
                  ),
                ),
                child: enterWidget,
              );
            });
}