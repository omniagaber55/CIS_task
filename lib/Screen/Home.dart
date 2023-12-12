import 'package:cistask/component/Bottom_navbar.dart';
import 'package:cistask/component/_containerIcons.dart';
import 'package:cistask/component/_containerSales.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Home",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 28, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
              child: Column(
                children: [
                  Container(
                    height: 110,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xff000FFF),
                        borderRadius: BorderRadius.circular(6)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Bose Home Speaker",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "USD 279",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Image.asset(
                              "Images/rsz_21capture-removebg-preview.png",
                              width: 90,
                              height: 90,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoundIconButton(
                          icon: Icons.menu_rounded, text: "Categories"),
                      RoundIconButton(
                        icon: Icons.star_border_rounded,
                        text: "Favourites",
                      ),
                      RoundIconButton(
                        icon: Icons.wallet_giftcard,
                        text: "Gifts",
                      ),
                      RoundIconButton(
                          icon: Icons.person_outlined, text: "Best selling"),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      "Sales",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 230,
              color: Color(0xffF1F1F1),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Sales(
                          text: "SmartPhones",
                          image: "Images/rsz_1capture-removebg-preview.png"),
                      Sales(
                          text: "Monitors",
                          image: "Images/rsz_11capture-removebg-preview.png"),
                    ],
                  ),
                ],
              ),
            ),
            BottomNavBar(),
          ],
        ),
      ),
    );
  }
}
