part of 'widgets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    required this.title,
    this.hasLeading = true,
    super.key,
  });
  final String title;
  final bool hasLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: 18.sp,
            ),
      ),
      leading: hasLeading
          ? IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),
            )
          : Container(),
      bottom: const PreferredSize(
        preferredSize: Size(0, 100),
        child: Divider(color: backgroundColor),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(58.h);
}
