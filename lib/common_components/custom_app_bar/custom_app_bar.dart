import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              /// profile image
              ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Container(
                  color: Colors.lightGreen,
                  child: Image.asset(
                    'assets/person.png',
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Morning!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Andrew Cabana',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),

          /// Menu
          const Icon(
            Icons.menu,
            color: Colors.grey,
            size: 30,
          ),
        ],
      ),
    );
  }
}
