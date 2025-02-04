import 'package:flutter/material.dart';
import 'package:netflix/controller/api_controller/get_movie_data.dart';
import 'package:netflix/model/movie.dart';
import 'package:netflix/presentation/screens/new_and_hot_screen/widget/new.dart';
import 'package:netflix/presentation/screens/new_and_hot_screen/widget/new_items_widget.dart';

class NewAndHotScrn extends StatelessWidget {

  const NewAndHotScrn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Column(
        children: [
            const SizedBox(
          height: 50,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
               SelectOptionsWidget(title: '🍿 Coming Soon'),
               SelectOptionsWidget(title: "🔥 Everyone's Watching"),
               SelectOptionsWidget(title: '🎮 Games'),
               SelectOptionsWidget(title: '🔝 Top Tv Shows'),   
                SelectOptionsWidget(title: '🔝 Top Tv Movies'),   
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20, 
        ),
          FutureBuilder(
              future: MovieData().getTrendingMovies(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(
                    child: Center(
                      child: Text('No data available'),
                    ),
                  );
                } else {
                  List<Movie> movie = snapshot.data!;
                  return Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          
                          return NewItemsWidget(movie: movie[index],);
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                              height: 20,
                            ),
                        itemCount: movie.length),
                  );
                }
              }),
        ],
      )
    );
  }
}
