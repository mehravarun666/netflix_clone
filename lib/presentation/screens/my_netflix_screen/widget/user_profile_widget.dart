import 'package:flutter/material.dart';

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset("assets/img/Varun.png",height: 80,width: 80,)
          ),
        const SizedBox(height: 5,),
      const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('VARUN DEVELOPER', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),

        ],
      )
        ],

      ),
    );
  }
}