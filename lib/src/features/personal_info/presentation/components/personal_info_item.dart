import 'package:flutter/material.dart';

import '../../../../core/helpers/app_helper/spacing.dart';
import '../../../../core/widgets/widgets.dart';

class PersonalInfoItem extends StatelessWidget {
  const PersonalInfoItem({
    required this.title,
    required this.value,
    super.key,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PrimaryText(title),
        verticalSpace(12),
        PrimaryText(
          value,
          type: TextType.bodySmall,
        ),
        const Divider(),
      ],
    );
  }
}