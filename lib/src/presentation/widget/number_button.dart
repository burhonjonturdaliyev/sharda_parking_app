import 'package:flutter/material.dart';
import 'package:sharda_parking_app/src/functions/checking_number.dart';

class NumberButtonWidget extends StatelessWidget {
  const NumberButtonWidget(
      {super.key, required this.onPressed, required this.title});
  final void Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 2)),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                minimumSize: Size(width, 75)),
            onPressed: onPressed,
            child: Row(
              children: [
                Text(
                  title.substring(0, 2),
                  style: TextStyle(
                      fontSize: width * .1,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: width * .035,
                ),
                Container(
                  width: 2,
                  height: 75,
                  color: Colors.black,
                ),
                SizedBox(
                  width: width * .035,
                ),
                Text(
                  AllFunction().carNumber(title),
                  style: TextStyle(
                      fontSize: width * .1,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: width * .035,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "UZ",
                      style: TextStyle(
                          fontSize: width * .05,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      "assets/flag.png",
                      width: width * .07,
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
