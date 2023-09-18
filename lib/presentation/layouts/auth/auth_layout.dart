import 'package:flutter/material.dart';

import 'widgets/custom_background.dart';
import 'widgets/custom_title.dart';

class AuthLayout extends StatelessWidget {


  final Widget child;
  const AuthLayout({Key? key, required this.child});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView(
        children:  [
          _DesktopBody(child: child,),
           const Text('AuthLayout'),
        ],
      )
    );
  }
}

class _DesktopBody extends StatelessWidget {

  final Widget child;

  const _DesktopBody({super.key, required this.child});





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
            child:
            Column(
              children: [
                const SizedBox(height: 30),
                const CustomTitle(),
                const SizedBox(height: 50),
               Expanded(child:child )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
