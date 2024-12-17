import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLaout;
  final Widget webScreenLaout;

  const ResponsiveLayout({super.key,required this.mobileScreenLaout,required this.webScreenLaout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){

        if(constraints.maxWidth > 900){
          return webScreenLaout;

        }
        return mobileScreenLaout;
      });
  }
}