
import 'package:flutter/material.dart';

class MoreLikeThisWidget extends StatelessWidget {
  const MoreLikeThisWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        SizedBox(height: 40,),
        Divider(
          color: Color.fromARGB(235, 61, 61, 61),
        ),
        Positioned(
          top: 3,
          left: 10,
          right: 0,
          child: Divider(
              thickness: 5,
              endIndent: 280,
              color: Color.fromRGBO(244, 67, 54, 1)),
        ),
        Positioned(
            top: 25, left: 20, right: 0, child: Text('More Like This', style: TextStyle(color: Color.fromARGB(255, 240, 240, 240) ,fontWeight: FontWeight.w600),))
      ],
    );
  }
}
