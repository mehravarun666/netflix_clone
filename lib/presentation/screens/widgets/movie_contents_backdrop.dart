import 'package:flutter/material.dart';
import 'package:netflix/controller/screen_actions_controller/screen_navigation_controller/screen_navigation/individual_content_scrn_navigation.dart';
import 'package:netflix/model/movie.dart';
import 'package:netflix/presentation/screens/home_screen/widget/personal_category.dart';

class MovieContentsBackDrop extends StatelessWidget {
  final String title;
  final Future<List<Movie>>? movies;
  const MovieContentsBackDrop({required this.movies, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PersonalCategoryTitle(
                title: title,
              ),
        SizedBox(
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: FutureBuilder<List<Movie>>(
        future: movies,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator()); 
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No data available'));
          } else {
            List<Movie> movie = snapshot.data!;
            return PageView.builder(
              itemCount: movie.length,
              padEnds: false,
              controller: PageController(
                viewportFraction: 0.65,
                // initialPage: 1,
              ),
              itemBuilder: (context, index) {
                Movie movieDetails = movie[index];
                return 
                GestureDetector(
                  onTap: () => IndividualContentScrnNavigation().navigateToIndividualContentScrn(context, movieDetails),
                  child: Container(
                    margin: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(movieDetails.movieBackdrop, fit: BoxFit.cover)),
                  ),
                );
              },
            );
          }
        },
          ),
        ),
      ],
    )
;
  }
}