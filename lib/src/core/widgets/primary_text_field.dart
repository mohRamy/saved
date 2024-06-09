part of 'widgets.dart';

class PrimaryTextField extends StatelessWidget {
  final TextEditingController textController;
  final Function()? ontap;
  final String? hintText;
  final bool readOnly;
  final TextInputType keyboardType;
  final int maxLines;
  final bool isObscure;
  final Widget prefixIcon;
  final Widget suffixIcon;

  const PrimaryTextField({
    super.key,
    required this.textController,
    this.ontap,
    this.hintText,
    this.readOnly = false,
    this.keyboardType = TextInputType.name,
    this.maxLines = 1,
    this.isObscure = false,
    this.prefixIcon = const SizedBox(),
    this.suffixIcon = const SizedBox(),
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      minLines: 1,
      onTap: ontap,
      readOnly: readOnly,
      keyboardType: keyboardType,
      controller: textController,
      obscureText: isObscure,
      cursorColor: primaryColor,
      style: Theme.of(context).textTheme.titleMedium,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodySmall,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: backgroundColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: backgroundColor),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}