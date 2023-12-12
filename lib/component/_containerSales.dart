import 'package:flutter/material.dart';

class Sales extends StatelessWidget {
  final String text;
  final String image;

  const Sales({Key? key, required this.text, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 200,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                width: 50,
                height: 20,
                color: Color(0xff000FFF).withOpacity(.1),
                child: Center(
                  child: const Text(
                    "-50%",
                    style: TextStyle(
                      color: Color(0xff000FFF),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Image.asset(image),
          SizedBox(
            height: 35,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 22, color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
