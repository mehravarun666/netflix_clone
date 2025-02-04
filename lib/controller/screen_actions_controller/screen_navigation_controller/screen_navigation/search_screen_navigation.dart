import 'package:flutter/material.dart';
import 'package:netflix/presentation/screens/search_screen/search_screen.dart';

import '../screen_transitions/right_to_left.dart';

class ScreenNavigationCntrl{
  _navigateToSearchScreen(BuildContext context){
      Navigator.of(context).push(rightToLeft(SearchScreen()));
  }
  navigateToSearchScreen(BuildContext context){
    _navigateToSearchScreen(context);
  }
}
