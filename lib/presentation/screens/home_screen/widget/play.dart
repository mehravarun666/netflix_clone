
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlayButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String text;
  IconData icon;
  PlayButton({
    required this.color,
    required this.textColor,
    required this.text,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 40,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            color,
          ),
        ),
        onPressed: () async {
          print('start');
          // ApiCall().getRecommedMovies();
          print('end');
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: textColor),
            Text(
              text,
              style: TextStyle(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
