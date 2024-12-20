import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_clone/colors.dart';

import '../widgets/search.dart';
import '../widgets/translation_button.dart';
import '../widgets/web/search_buttons.dart';
import '../widgets/web/web_footer.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Gmail',
              style:
                  TextStyle(color: primaryColor, fontWeight: FontWeight.w400),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Images',
              style:
                  TextStyle(color: primaryColor, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/more-apps.svg',
              colorFilter:
                  const ColorFilter.mode(primaryColor, BlendMode.srcIn),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10).copyWith(
              right: 10,
            ),
            child: MaterialButton(
              onPressed: () {},
              color: const Color(0xff1A73EB),
              child: const Text(
                'Sign in',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.25,
          ),
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Search(),
                    SizedBox(
                      height: 20,
                    ),
                    SearchButtons(),
                    SizedBox(
                      height: 20,
                    ),
                    TranslationButtons(),
                  ],
                ),
                WebFooter()
              ],
            ),
          )
        ],
      ),
    );
  }
}
