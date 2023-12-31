import 'package:flutter/material.dart';
import 'package:flutter_kulanici_arayuzu_1/colors.dart';

class RaminderAppBar extends StatelessWidget {
  const RaminderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: size.height * 0.07,
          width: size.width * 0.14,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: darkBackgroundColor,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const Icon(
            Icons.arrow_back_ios,
            color: primaryColor,
          ),
        ),
        Row(
          children: const [
            Text(
              'Reminders',
              style: TextStyle(
                color: primaryColor,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 10),
            Icon(
              Icons.more_vert,
              color: primaryColor,
            )
          ],
        )
      ],
    );
  }
}
