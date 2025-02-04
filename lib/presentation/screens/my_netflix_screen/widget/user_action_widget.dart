import 'package:flutter/material.dart';

class UserActionWidget extends StatelessWidget {
  final String title;
  final Color color;
  final IconData icon;

  const UserActionWidget({
    required this.title, required this.icon, required this.color
    ,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(icon, color: Colors.white,),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
           title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_rounded,))
        ],
      ),
    );
  }
}
