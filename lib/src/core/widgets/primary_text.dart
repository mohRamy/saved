part of 'widgets.dart';

enum TextType {
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
}

class AppText extends StatelessWidget {
  final String text;
  final int maxLines;
  final TextOverflow overflow;
  final Color color;
  final double height;
  final TextType type;
  const AppText(
    this.text, {
    Key? key,
    this.type = TextType.titleLarge,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
    this.color = Colors.grey,
    this.height = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      style: type == TextType.titleLarge
          ? Theme.of(context).textTheme.titleLarge
          : type == TextType.titleMedium
              ? Theme.of(context).textTheme.titleMedium
              : type == TextType.titleSmall
                  ? Theme.of(context).textTheme.titleSmall
                  : type == TextType.bodyLarge
                  ? Theme.of(context).textTheme.bodyLarge
                  : type == TextType.bodyMedium
                  ? Theme.of(context).textTheme.bodyMedium
                  : Theme.of(context).textTheme.bodySmall,
    );
  }
}
