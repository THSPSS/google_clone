import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/widgets/footer_text.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      child: const Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text('Korea'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    FooterText(title: 'Advertising'),
                    FooterText(title: 'Business'),
                    FooterText(title: 'About'),
                    FooterText(title: 'How Search Works'),
                  ],
                ),
                Row(
                  children: [
                    FooterText(title: 'Privacy'),
                    FooterText(title: 'Terms'),
                    FooterText(title: 'Settings'),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
