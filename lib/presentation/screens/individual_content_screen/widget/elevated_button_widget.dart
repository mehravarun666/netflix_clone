import 'package:flutter/material.dart';
import 'package:netflix/controller/api_controller/get_trailer_data.dart';
import 'package:netflix/model/movie.dart';
import 'package:netflix/model/trailer.dart';
import 'package:netflix/presentation/screens/play_trailer_screen/play_trailer_screen.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final Color color;
  final Color textColor;
  final IconData iconData;
  final String text;
  final Movie movie;
  const ElevatedButtonWidget({
    required this.color,
    required this.textColor,
    required this.iconData,
    required this.text,
    required this.movie,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              color,
            ),
            shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(5))),
            fixedSize:
                const MaterialStatePropertyAll(Size(double.infinity, 50))),
        onPressed: () async {
          Trailer? trailer =
              await TrailerData().fetchMovieData(movie.id);

          if (trailer != null && trailer.site == 'YouTube') {
            // ignore: use_build_context_synchronously
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PlayTrailer(
                          url: trailer.key,
                        )));
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: textColor,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 15.5,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ));
  }
}
