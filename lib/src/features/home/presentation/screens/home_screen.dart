import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/core/constants/app_translation_keys.dart';
import 'package:portfolio/src/core/helpers/app_helper/spacing.dart';
import 'package:portfolio/src/core/routes/app_pages.dart';

import '../../../../core/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppTranslationKeys.saver.tr,
        hasLeading: false,
      ),
      body: ListView.separated(
        itemCount: 5,
        padding: EdgeInsets.all(24.h),
        itemBuilder: (_, index) => const ImageItem(),
        separatorBuilder: (_, __) => verticalSpace(20),
      ),
    );
  }
}

class ImageItem extends StatelessWidget {
  const ImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> AppNavigator.push(AppRoutes.imageDetails),
      child: Dismissible(
        key: UniqueKey(),
        confirmDismiss: (DismissDirection direction) async {
          return true;
        },
        onDismissed: (DismissDirection direction) {},
        onResize: () {},
        direction:
            DismissDirection.endToStart, // or other DismissDirection values
        dragStartBehavior:
            DragStartBehavior.start, // or any unique key for tracking items
        child: SizedBox(
          height: 1.sh/4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDVs9EP1bwcEg8MmfIl0S_gaCRvww7TaOrIw&s',
              fit: BoxFit.fill,
            ),
          ),
        ), // or DragStartBehavior.down
      ),
    );
  }
}
