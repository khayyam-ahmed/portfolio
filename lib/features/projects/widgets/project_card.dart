import 'package:flutter/material.dart';
import 'package:portfolio/common/constants/sizes.dart';
import 'package:portfolio/common/widgets/responsive.dart';
import 'package:portfolio/features/projects/widgets/project_description.dart';
import 'package:portfolio/features/projects/widgets/project_image.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/features/projects/models/project.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({super.key, required this.project});
  final Project project;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _isHovered = false;
  void _scaleUp() => setState(() => _isHovered = true);
  void _scaleDown() => setState(() => _isHovered = false);
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _scaleUp(),
      onExit: (_) => _scaleDown(),
      child: GestureDetector(
        onLongPress: _scaleUp,
        onLongPressUp: _scaleDown,
        child: Material(
          // color: Theme.of(context).colorScheme.secondary,
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
            // mouseCursor: MaterialStateMouseCursor.textable,
            onTap: _onTap,
            borderRadius: BorderRadius.circular(20),
            // hoverColor: const Color.fromARGB(59, 0, 0, 0),
            // splashColor: Theme.of(context).colorScheme.secondary.withAlpha(30),
            // highlightColor:
            //     Theme.of(context).colorScheme.secondary.withAlpha(20),
            hoverColor: Theme.of(context).colorScheme.tertiary.withAlpha(40),
            splashColor: Theme.of(context).colorScheme.tertiary.withAlpha(30),
            highlightColor:
                Theme.of(context).colorScheme.tertiary.withAlpha(20),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: _buildResponsiveProjectCardContent(context),
            ),
          ),
        ),
      ),
    );
  }

  void _onTap() async {
    final url = widget.project.githubUrl ?? widget.project.documentationUrl;
    if (url != null) {
      try {
        await launchUrl(Uri.parse(url));
      } catch (e) {
        if (context.mounted) {
          // add an error check
        }
      }
    } else {
      return null;
    }
  }

  Widget _buildResponsiveProjectCardContent(BuildContext context) {
    if (!Responsive.isTablet(context)) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectImage(project: widget.project, isHovered: _isHovered),
          gapH8,
          ProjectDescription(project: widget.project),
        ],
      );
    }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 7,
          child: ProjectImage(project: widget.project, isHovered: _isHovered),
        ),
        gapW12,
        Expanded(
          flex: 10,
          child: ProjectDescription(project: widget.project),
        ),
      ],
    );
  }
}
