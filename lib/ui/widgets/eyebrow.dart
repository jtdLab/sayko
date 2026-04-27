part of '../ui.dart';

class SaykoEyebrow extends StatelessWidget {
  const SaykoEyebrow(this.text, {this.color, super.key});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Text(
      text.toUpperCase(),
      style: theme.typography.xs.copyWith(
        color: color ?? theme.colors.mutedForeground,
        letterSpacing: 1.2,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class SaykoSerifText extends StatelessWidget {
  const SaykoSerifText(
    this.text, {
    required this.size,
    this.color,
    this.weight = FontWeight.w500,
    this.height = 1.15,
    this.textAlign,
    super.key,
  });

  final String text;
  final double size;
  final Color? color;
  final FontWeight weight;
  final double height;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: 'serif',
        fontSize: size,
        fontWeight: weight,
        height: height,
        letterSpacing: -0.4,
        color: color ?? theme.colors.foreground,
      ),
    );
  }
}
