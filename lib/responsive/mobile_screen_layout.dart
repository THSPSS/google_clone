import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../colors.dart';
import '../widgets/mobile/mobile_footer.dart';
import '../widgets/search.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: const Icon(Icons.menu, color: Colors.grey),
        // ),
        // title: const SizedBox(
        //   width: double.infinity * 0.34,
        //   child: DefaultTabController(
        //     length: 2,
        //     child: TabBar(
        //         labelColor: blueColor,
        //         unselectedLabelColor: Colors.grey,
        //         indicatorColor: blueColor,
        //         tabs: [
        //           Tab(
        //             text: 'ALL',
        //           ),
        //           Tab(
        //             text: 'IMAGES',
        //           ),
        //         ]),
        //   ),
        // ),
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
                  ],
                ),
                MobileFooter()
              ],
            ),
          )
        ],
      ),
    );
  }
}
