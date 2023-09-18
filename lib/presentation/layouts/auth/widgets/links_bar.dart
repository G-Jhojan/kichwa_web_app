import 'package:flutter/material.dart';
import 'package:kichwa_web_app/config/ui/buttons/link_text.dart';

class LinksBar extends StatelessWidget {
  const LinksBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return  Container(
      height: size.height * 0.05,
       color: Colors.black,
      child: const Wrap(
        children: [
          LinkText(text: 'About'),
          LinkText(text: 'Help Center'),
          LinkText(text: 'Privacy Policy'),
          LinkText(text: 'Cookie Policy'),
          LinkText(text: 'Blog'),
          LinkText(text: 'Status'),
          LinkText(text: 'Carrers'),
          LinkText(text: 'Brands'),
          LinkText(text: 'Advertiding'),
          LinkText(text: 'Services'),
          LinkText(text: 'About'),
          LinkText(text: 'About'),
          LinkText(text: 'About'),
          LinkText(text: 'About'),
        ],
      )
    );
  }
}
