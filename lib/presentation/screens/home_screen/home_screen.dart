import 'package:flutter/material.dart';
import 'package:netflix/controller/api_controller/get_movie_data.dart';
import 'package:netflix/controller/api_controller/get_tv_data.dart';
import 'package:netflix/presentation/screens/home_screen/widget/select_category_widget.dart';
import 'package:netflix/presentation/screens/home_screen/widget/wallpaper.dart';
import 'package:netflix/presentation/screens/widgets/movie_contents.dart';
import 'package:netflix/presentation/screens/widgets/special_contens.dart';
import 'package:netflix/presentation/screens/widgets/tv_contents.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SelectCategoryWidget(),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Wallpaper(),
            ),
            MovieContents(
              title: 'Latest Movies',
              movies: MovieData().getTrendingMovies(),
            ),
            const SizedBox(
              height: 25,
            ),
            MovieContents(
              title: 'Top Rated Movies',
              movies: MovieData().getTopRatedMovies(),
            ),
            const SizedBox(
              height: 25,
            ),
            MovieContents(
              title: 'Trending Movies',
              movies: MovieData().getNowPlayingMovies(),
            ),
            const SizedBox(
              height: 25,
            ),
            const SpecialContents(title: 'Only on Netflix'),
            const SizedBox(
              height: 25,
            ),
            TvContents(
                title: 'Tranding Tv Shows', tvShows: TvData().topRatedTvSeries()),
            const SizedBox(
              height: 25,
            ),
            TvContents(
                title: 'Popular Tv Shows', tvShows: TvData().popularTvSeries()),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
