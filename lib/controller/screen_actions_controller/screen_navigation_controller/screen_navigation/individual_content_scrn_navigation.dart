import 'package:flutter/material.dart';
import 'package:netflix/model/movie.dart';
import 'package:netflix/presentation/screens/individual_content_screen/individual_content_scrn.dart';

import '../screen_transitions/right_to_left.dart';

class IndividualContentScrnNavigation{
  _navigateToIndividualContentScrn(BuildContext context, Movie movie){
      Navigator.of(context).push(rightToLeft(IndividualContentScrn(movie: movie,)));
  }
  navigateToIndividualContentScrn(BuildContext context, Movie movie){
    _navigateToIndividualContentScrn(context, movie);
  }
}