
import 'package:flutter/material.dart';

class IconBar extends StatelessWidget {
  const IconBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.add_rounded),
            SizedBox(height: 5,),
            Text('My List',style: TextStyle(fontSize: 10, color: Color.fromRGBO(238, 238, 238, 1)),)
          ],
        ),
        Column(
          children: [
            Icon(Icons.thumb_up_off_alt),
             SizedBox(height: 5,),
            Text('Rate',style: TextStyle(fontSize: 10, color: Color.fromRGBO(238, 238, 238, 1)),)
          ],
        ),
        Column(
          children: [
            Icon(Icons.share_rounded),
             SizedBox(height: 5,),
            Text('Share',style: TextStyle(fontSize: 10, color: Color.fromRGBO(238, 238, 238, 1)),)
          ],
        )
      ],
    );
  }
}
