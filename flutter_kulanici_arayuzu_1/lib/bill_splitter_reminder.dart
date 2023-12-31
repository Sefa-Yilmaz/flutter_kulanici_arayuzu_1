import 'package:flutter/material.dart';
import 'package:flutter_kulanici_arayuzu_1/colors.dart';
import 'package:flutter_kulanici_arayuzu_1/reminder_appbar.dart';
import 'package:flutter_kulanici_arayuzu_1/reminder_left_container.dart';
import 'package:flutter_kulanici_arayuzu_1/reminder_rigth_container.dart';

class BillSplitterReminder extends StatelessWidget {
  const BillSplitterReminder({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 15, 25, 6),
          child: Column(
            children: [
              const RaminderAppBar(),
              const SizedBox(height: 15),
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: size.height * 0.15,
                        width: size.width,
                        decoration: BoxDecoration(
                          color: darkBackgroundColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            width: size.width * 0.5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Sajonm!',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'Previously you set 10 reminders for your bills',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ClipPath(
                        clipper: CustomClipperDesign(),
                        child: Container(
                          height: size.height * 0.67,
                          width: size.height,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: darkBackgroundColor,
                          ),
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Last Reminders',
                                style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 11),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  LastReminderLeftContainer(),
                                  LastReminderRigthContainer()
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: Container(
                      height: size.height * 0.2,
                      width: size.width * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: primaryColor,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Reminders',
                            style: TextStyle(
                              color: darkBackgroundColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.calendar_month,
                              color: darkBackgroundColor,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.06,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: backgroundColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                ),
                                child: const Text(
                                  'See All',
                                  style: TextStyle(
                                      fontSize: 12, color: primaryColor),
                                )),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomClipperDesign extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double h = size.height;
    double w = size.width;

    path.lineTo(0, h);
    path.lineTo(w, h);
    path.lineTo(w, 45);
    path.lineTo(w / 1.3, 45);
    path.quadraticBezierTo(w / 1.4, 40, w / 1.4, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
