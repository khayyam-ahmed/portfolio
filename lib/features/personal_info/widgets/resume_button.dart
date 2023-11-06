import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/common/constants/sizes.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumeButton extends StatefulWidget {
  const ResumeButton({super.key, required this.resumeUrl});
  final String resumeUrl;
  @override
  State<ResumeButton> createState() => _ResumeButtonState();
}

class _ResumeButtonState extends State<ResumeButton> {
  bool _isHovered = false;
  void _hoverEffectOn() => setState(() => _isHovered = true);
  void _hoverEffectOff() => setState(() => _isHovered = false);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      // height: 100,
      // width: 166,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: MouseRegion(
          onEnter: (_) => _hoverEffectOn(),
          onExit: (_) => _hoverEffectOff(),
          child: GestureDetector(
            onLongPress: _hoverEffectOn,
            onLongPressUp: _hoverEffectOff,
            child: SelectionContainer.disabled(
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: _isHovered
                      ? theme.colorScheme.tertiary.withOpacity(0.1)
                      : null,
                  side: BorderSide(
                    width: _isHovered ? 2 : 1,
                    color: theme.colorScheme.tertiary,
                  ),
                  elevation: 16,
                  shape: const StadiumBorder(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
                ),
                onPressed: () => launchUrl(Uri.parse(widget.resumeUrl)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Icon(
                      FontAwesomeIcons.filePdf,
                      color: theme.colorScheme.inverseSurface,
                    ),
                    gapW12,
                    Text(
                      'Resume',
                      style: theme.textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
