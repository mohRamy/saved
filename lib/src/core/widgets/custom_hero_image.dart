part of 'widgets.dart';

class CustomHeroImage extends StatelessWidget {
  final String image;
  const CustomHeroImage({
    super.key,
    required this.image,
  });

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
