import 'package:flutter/material.dart';
import 'package:netflix/controller/api_controller/get_movie_data.dart';
import 'package:netflix/presentation/screens/home_screen/widget/play.dart';


class Wallpaper extends StatelessWidget {
  const Wallpaper({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: MovieData().getTrendingWallpaper(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else if (!snapshot.hasData || snapshot.data == null) {
          return const Center(
            child: Text('No wallpaper available'),
          );
        } else {
          
          String wallpaperUrl = snapshot.data!;
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(wallpaperUrl),
              ),
              Positioned(
                top: 480,
                left: 5,
                right: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PlayButton(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      textColor: const Color.fromRGBO(0, 0, 0, 1),
                      text: 'Play',
                      icon: Icons.play_arrow,
                    ),
                    GestureDetector(
                      onTap: () {
                        //  IndividualContentScrnNavigation().navigateToIndividualContentScrn(context, movie) 
                      },
                      child: PlayButton(
                        color: Colors.grey.withOpacity(0.4),
                        textColor: const Color.fromRGBO(255, 255, 255, 1),
                        text: 'My List',
                        icon: Icons.check,
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        }
      },
    );
  }
}
