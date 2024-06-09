part of 'widgets.dart';

enum TextType {
  titleSmall,
  bodySmall,
}

class PrimaryText extends StatelessWidget {
  final String text;
  final int maxLines;
  final TextOverflow overflow;
  final Color color;
  final double height;
  final TextType type;
  const PrimaryText(
    this.text, {
    super.key,
    this.type = TextType.titleSmall,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
    this.color = Colors.grey,
    this.height = 1.2,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      style: type == TextType.titleSmall
          ? Theme.of(context).textTheme.titleSmall
          : Theme.of(context).textTheme.bodySmall,
    );
  }
}
