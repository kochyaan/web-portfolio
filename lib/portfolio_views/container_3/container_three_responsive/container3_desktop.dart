import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Controller/constants/color.dart';

class ContainerthreeDesktop extends StatefulWidget {
  const ContainerthreeDesktop({super.key});

  @override
  State<ContainerthreeDesktop> createState() => _ContainerthreeDesktopState();
}

class _ContainerthreeDesktopState extends State<ContainerthreeDesktop> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      color: AppColor.darkbgColor,
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'My Projects',
            style: GoogleFonts.inconsolata(
                color: Colors.white, fontSize: 42, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          // Displaying project details in rows with columns
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProjectWidget(
                  projectName: 'Gold App',
                  projectDetails:
                  'An eCommerce Flutter app built for cross-platform mobile development, featuring gold measurement app for gold smiths to easily convert their gold ratio into cash.'),
              ProjectWidget(
                  projectName: 'Facebook clone',
                  projectDetails:
                  'A basic Facebook clone with splash screen and clone of facebook application.'),
              ProjectWidget(
                  projectName: 'Countdown application',
                  projectDetails:
                  'An application for pray countdown app for increment and decrement.'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProjectWidget(
                  projectName: 'Toodo App',
                  projectDetails:
                  'A Flutter Application with get start screen login screen registration screen and welcome screen, push notifications, and Firebase backend.'),
              ProjectWidget(
                  projectName: 'Web portfolio',
                  projectDetails:
                  'A portfolio website designed using Flutter Web to showcase my skills, projects, and expertise in mobile development.'),
              ProjectWidget(
                  projectName: 'Dart learning App',
                  projectDetails:
                  'An Application of Flutter about dart learning with splash screen, Onboarding screen, home screen with basic dart  course'),
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final String projectName;
  final String projectDetails;

  ProjectWidget({super.key, required this.projectName, required this.projectDetails});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500),
                border: Border.all(color: AppColor.greenPrimaryColor, width: 7)),
            child: Center(
              child: Icon(
                Icons.developer_mode, // Icon representing the project
                color: AppColor.greenPrimaryColor,
                size: 50,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            projectName,
            style: GoogleFonts.inconsolata(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            projectDetails,
            style: GoogleFonts.inconsolata(
                color: Color(0xff767676), fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
