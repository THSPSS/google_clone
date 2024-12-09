import 'package:flutter/material.dart';

import '../../colors.dart';
import '../footer_text.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Color(0xff70757a),
                ),
              ),
            ),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: SelectionArea(
                    child: Text('South Korea',
                        style: TextStyle(
                          color: Color(0xff70757a),
                        )),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Wrap(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FooterText(
                      title: 'Advertising',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FooterText(
                      title: 'Business',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FooterText(
                      title: 'How Search Works',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FooterText(
                      title: 'Privacy',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FooterText(
                      title: 'Terms',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FooterText(
                      title: 'Settings',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
