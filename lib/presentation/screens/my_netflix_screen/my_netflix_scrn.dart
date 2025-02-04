import 'package:flutter/material.dart';
import 'package:netflix/controller/api_controller/get_movie_data.dart';
import 'package:netflix/presentation/screens/my_netflix_screen/widget/user_action_widget.dart';
import 'package:netflix/presentation/screens/my_netflix_screen/widget/user_profile_widget.dart';
import 'package:netflix/presentation/screens/widgets/movie_contents.dart';
import 'package:netflix/presentation/screens/widgets/movie_contents_backdrop.dart';

class MyNetflixScrn extends StatelessWidget {
  const MyNetflixScrn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          const UserProfileWidget(),
          const SizedBox(height: 25,),
          const UserActionWidget( title: 'Notifications', color: Colors.red, icon: Icons.notifications,),
            const SizedBox(
            height: 15,
          ),
            const UserActionWidget( title: 'Downloads', color: Color.fromARGB(255, 87, 89, 240), icon: Icons.download_rounded,),
             const SizedBox(
              height: 25,
            ),
            MovieContents(
              title: " TV Shows & Movies You've Liked",
              movies: MovieData().getNowPlayingMovies(),
            ),
            const SizedBox(
              height: 25,
            ),
               MovieContentsBackDrop(
              title: "Trailers You've Watched",
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
            
        ],
      ),
    ));
  }
}

