part of 'widgets.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String buttomText;
  final bool transparent;
  final EdgeInsets? margin;
  final double? height;
  final double? width;
  final double? fontSize;
  final double radius;
  final IconData? icon;
  const CustomButton({
    super.key,
    this.onPressed,
    required this.buttomText,
    this.transparent = false,
    this.margin,
    this.height,
    this.width,
    this.fontSize,
    this.radius = 5,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButton = TextButton.styleFrom(
      backgroundColor: onPressed == null
          ? Theme.of(context).disabledColor
          : transparent
              ? Colors.transparent
              : Theme.of(context).primaryColor,
      minimumSize: const Size(500, 50),
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
    );
    return Center(
      child: SizedBox(
        width: width ?? Get.width,
        height: height ?? 50.sp,
        child: TextButton(
          onPressed: onPressed,
          style: flatButton,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon != null
                  ? Padding(
                      padding: EdgeInsets.only(right: 5.sp),
                      child: Icon(
                        icon,
                        color: transparent
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).cardColor,
                      ),
                    )
                  : const SizedBox(),
              Text(
                buttomText,
                style: TextStyle(
                  fontSize: fontSize ?? 16.sp,
                  color: transparent
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).cardColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
