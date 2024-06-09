import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:portfolio/src/core/widgets/widgets.dart';

import '../../../../core/helpers/app_helper/spacing.dart';
import '../../../../models/language_model.dart';

class LanguageItem extends StatelessWidget {
  final LanguageModel language;
  final bool isSelected;
  final VoidCallback onTap;

  const LanguageItem({
    required this.language,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Ink(
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.grey,
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(language.imageUrl, width: 28),
            horizontalSpace(16),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryText(language.languageName.tr),
                Text(
                  language.countryCode.tr,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontSize: 12,
                      ),
                ),
              ],
            ),
            const Spacer(),
            CircleAvatar(
              radius: 16,
              backgroundColor: isSelected ? Colors.blue : Colors.grey,
              child: const Icon(Icons.check, size: 12, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
