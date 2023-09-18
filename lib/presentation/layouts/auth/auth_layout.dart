import 'package:flutter/material.dart';

import 'widgets/custom_background.dart';
import 'widgets/custom_title.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView(
        children: const [
          _DesktopBody(),
           Text('AuthLayout'),
        ],
      )
    );
  }
}

class _DesktopBody extends StatelessWidget {
  const _DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      color: Colors.red,
      child: Row(
        children: [
          //img background
          const CustomBackground(),
          //view container
          Container(
            width: 500,
            height: double.infinity,
            color: Colors.black,
            child: const
            Column(
              children: [
                CustomTitle(),
                SizedBox(height: 50),
                Expanded(child: )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
