part of 'widgets.dart';

class PrimaryButton extends StatelessWidget {
  final String txt;
  final Function() onTap;
  final double borderRadius;
  const PrimaryButton({
    super.key,
    required this.txt,
    required this.onTap,
    this.borderRadius = 40,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            borderRadius,
          ),
        ),
        padding: EdgeInsets.all(10.sp),
        minimumSize: Size(1.sw, 48.h),
      ),
      child: Text(
        txt,
        style: TextStyle(
          fontSize: 16.sp,
          color: mCL,
          fontFamily: FontFamily.lato,
        ),
      ),
    );
  }
}
