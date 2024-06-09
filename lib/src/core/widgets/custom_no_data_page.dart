part of 'widgets.dart';

class CustomNoDataPage extends StatelessWidget {
  final String text;
  final String imgPath;
  const CustomNoDataPage({
    super.key,
    required this.text,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          imgPath,
          ),
          SizedBox(height: Get.height*0.03,),
          Text(
            text,
            style: TextStyle(
              fontSize: Get.height*0.0175,
              color: Theme.of(context).disabledColor,
            ),
            textAlign: TextAlign.center,
          ),
      ],
    );
  }
}
