import 'package:facebook/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class AboutMyAccount extends StatelessWidget {
  const AboutMyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: ListTile(
            leading: const Icon(Icons.work),
            title: const Text('Founder and CEO at A to Z company Ltd.'),
            titleTextStyle: AppStyles.style14Regular,
          ),
        ),
        SizedBox(
          height: 50,
          child: ListTile(
            leading: const Icon(Icons.school),
            title:
                const Text('Studied Computer Science at Harvard University.'),
            titleTextStyle: AppStyles.style14Regular,
          ),
        ),
        SizedBox(
          height: 50,
          child: ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Lives in Mumbai, Maharastra'),
            titleTextStyle: AppStyles.style14Regular,
          ),
        ),
        SizedBox(
          height: 50,
          child: ListTile(
            leading: const Icon(Icons.favorite_sharp),
            title: const Text('Single'),
            titleTextStyle: AppStyles.style14Regular,
          ),
        ),
      ],
    );
  }
}
