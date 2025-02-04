import 'package:flutter/material.dart';
import 'package:netflix/controller/screen_actions_controller/screen_navigation_controller/screen_navigation/search_screen_navigation.dart';
import 'package:netflix/model/movie.dart';
import 'package:netflix/presentation/screens/individual_content_screen/widget/elevated_button_widget.dart';
import 'package:netflix/presentation/screens/individual_content_screen/widget/icon_bar_widget.dart';
import 'package:netflix/presentation/screens/individual_content_screen/widget/more_like_this_widget.dart';


class IndividualContentScrn extends StatelessWidget {
  final Movie movie;

  const IndividualContentScrn({required this.movie, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_rounded)),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: InkWell(
                onTap: () =>
                    ScreenNavigationCntrl().navigateToSearchScreen(context),
                child: const Icon(Icons.search)),
          ),
        ],
      ),
      body: ListView(
        children: [
          Image.network(
            movie.movieBackdrop,
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.movieName,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButtonWidget(
                  color: Color.fromARGB(255, 240, 240, 240),
                  textColor: Colors.black,
                  iconData: Icons.play_arrow_sharp,
                  text: 'Play',
                  movie: movie,
                ),
                const SizedBox(
                  height: 7,
                ),
                ElevatedButtonWidget(
                  color: Color.fromARGB(235, 61, 61, 61),
                  textColor: Colors.white,
                  iconData: Icons.download,
                  text: 'Download',
                  movie: movie,
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  movie.movieOverview,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 30,
                ),
                const IconBar(),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
          MoreLikeThisWidget(),
          // Expanded(
          //   child: GridView.builder(
          //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 2,
          //         crossAxisSpacing: 8.0,
          //         mainAxisSpacing: 8.0,
          //       ),
          //       itemCount: 10,
          //       itemBuilder: (context, index) {
          //         return Container(
          //           color: Colors.amber,
          //           width: 100,
          //           height: 100,
          //         );
          //       }),
          // )
        ],
      ),
    );
  }
}
