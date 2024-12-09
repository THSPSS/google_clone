import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/widgets/footer_text.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

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
                    child: Text('Korea',
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
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
