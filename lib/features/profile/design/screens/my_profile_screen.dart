import 'package:facebook/core/helper/spaces.dart';
import 'package:facebook/core/widgets/divider_widget.dart';
import 'package:facebook/features/profile/design/widgets/about_my_account.dart';
import 'package:facebook/features/profile/design/widgets/images_profile_widget.dart';
import 'package:facebook/features/profile/design/widgets/name_and_bio.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ImagesProfile(),
          verticalSpace(110),
          const NameAndBio(),
          verticalSpace(10),
          const DividerWidget(),
          verticalSpace(10),
          const AboutMyAccount(),
          verticalSpace(10),
          const DividerWidget(),
        ],
      ),
    );
  }
}
