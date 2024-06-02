part of 'widgets.dart';

class HeroImage extends StatelessWidget {
  final String image;
  const HeroImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorDark,
      appBar: AppBar(
        backgroundColor: backgroundColorDark,
        leading: IconButton(
          onPressed: () => AppNavigator.pop(),
          icon: const Icon(
            Icons.arrow_back,
            color: whiteColor,
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          child: Hero(
            tag: 'jj',
            child: CachedNetworkImage(
              placeholder: (context, url) => const Text('loading...'),
              imageUrl: image,
            ),
          ),
        ),
      ),
    );
  }
}
