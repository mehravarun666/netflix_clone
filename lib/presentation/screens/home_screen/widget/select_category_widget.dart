import 'package:flutter/material.dart';

class SelectCategoryWidget extends StatelessWidget {
  const SelectCategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.white),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
            ),
            child: const Text(
              'TV Shows',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.white),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
            ),
            onPressed: () {},
            child: const Text(
              'Movies',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.white),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
            ),
            onPressed: () {},
            child: const Row(
              children: [
                Text(
                  'Categories',
                  style: TextStyle(color: Colors.white),
                ),
                Icon(Icons.arrow_drop_down_outlined, color: Colors.white,)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
