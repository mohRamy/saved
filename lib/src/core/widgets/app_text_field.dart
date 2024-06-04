part of 'widgets.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final TextInputType keyboardType;
  final int maxLines;
  final bool isObscure;
  final Widget prefixIcon;
  final Widget suffixIcon;

  const AppTextField({
    super.key,
    required this.textController,
    required this.hintText,
    this.keyboardType = TextInputType.name,
    this.maxLines = 1,
    this.isObscure = false,
    this.prefixIcon = const SizedBox(),
    this.suffixIcon = const SizedBox(),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.textField(context, 6.sp).decoration,
      child: TextField(
        maxLines: maxLines,
        minLines: 1,
        keyboardType: keyboardType,
        controller: textController,
        obscureText: isObscure,
        cursorColor: primaryColor,
        style: Theme.of(context).textTheme.titleMedium,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyLarge,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
