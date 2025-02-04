import 'package:flutter/material.dart';
import 'package:netflix/model/tv_show.dart';
import 'package:netflix/presentation/screens/home_screen/widget/personal_category.dart';

class TvContents extends StatelessWidget {
  final Future<List<TvShow>>? tvShows;
  final String title;
  const TvContents({required this.title, required this.tvShows, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PersonalCategoryTitle(
                title: title,
              ),
        SizedBox(
          height: 170,
          width: MediaQuery.of(context).size.width,
          child: FutureBuilder<List<TvShow>>(
        future:  tvShows ,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator()); // Show a loading indicator while waiting for data.
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No data available'));
          } else {
            List<TvShow> tvShow = snapshot.data!;
            return PageView.builder(
              itemCount: tvShow.length,
              padEnds: false,
              controller: PageController(
                viewportFraction: 0.3,
                // initialPage: 1,
              ),
              itemBuilder: (context, index) {
                TvShow tvShowDetails = tvShow[index];
                String poster = tvShowDetails.tvShowPoster;
                return Container(
                  margin: const EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(poster, fit: BoxFit.cover)),
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