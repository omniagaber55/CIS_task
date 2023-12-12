import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      color: Color(0xffDFE3EC),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "Images/home.png",
              width: 30,
              height: 30,
              color: Color(0xff000FFF),
            ),
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
            Icon(
              Icons.person_outlined,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
