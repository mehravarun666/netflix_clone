import 'package:flutter/material.dart';
import 'package:netflix/model/movie.dart';

class SearchResultsTile extends StatelessWidget {
  final Movie movie;
  const SearchResultsTile({required this.movie, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: ListTile(
        leading: SizedBox(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  movie.movieBackdrop,
                  height: 150,
                  width: 100,
                  fit: BoxFit.fill,
                ))),
        title: Text(
          movie.movieName,
          overflow: TextOverflow.fade,
        ),
        trailing: const CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(Icons.play_arrow_rounded)),
      ),
    );
  }
}
