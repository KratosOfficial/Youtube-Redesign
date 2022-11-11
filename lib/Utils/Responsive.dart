import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  const ResponsiveLayout(
      {Key? key,
        required this.desktopScaffold,
        required this.mobileScaffold,
        required this.tabletScaffold})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if(constraints.maxWidth < 500){
        return mobileScaffold;
      }else if(constraints.maxWidth < 1100){
        return tabletScaffold;
      }else{
        return desktopScaffold;
      }
    });
  }
}
