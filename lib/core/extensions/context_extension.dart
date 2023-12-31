
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_1/core/common/app/providers/tab_provider.dart';

extension ContextExtension on BuildContext{

  ThemeData get getTheme{
    return Theme.of(this);
  }

  MediaQueryData get getMediaQuery{
    return MediaQuery.of(this);
  }

  Size get size => getMediaQuery.size;
  double get height => size.height;
  double get width => size.width;


  TabNavigator get tabNavigator => read<TabNavigator>();

  void pushTab(Widget tab){
    return tabNavigator.push(TabItem(child: tab));
  }

  void popTab(){
    return tabNavigator.pop();
  }

}
