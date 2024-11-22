import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Controller/constants/color.dart';

class ContainertwoMobile extends StatefulWidget {
  const ContainertwoMobile({super.key});

  @override
  State<ContainertwoMobile> createState() => _ContainertwoMobileState();
}

class _ContainertwoMobileState extends State<ContainertwoMobile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      color: AppColor.lightbgColor,
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            'My Services',
            style: GoogleFonts.inconsolata(
                color: Colors.black, fontSize: 42, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ColumnWidget(
              text1: 'Flutter for Cross-Platform Design',
              text2:
              'I specialize in building cross-platform applications using Flutter, ensuring consistent designs and optimal performance.'),
          ColumnWidget(
              text1: 'Dart for Backend',
              text2:
              'I use Dart for backend logic and server-side operations, enabling smooth integration with frontend services.'),
          ColumnWidget(
              text1: 'Firebase for Database',
              text2:
              'I integrate Firebase for real-time databases, user authentication, and secure data storage.'),
          //SizedBox(height: 10),
          //ColumnWidget(
              //text1: 'API Integration',
              //text2:
            //  'I integrate third-party APIs into apps for enhanced functionality and data synchronization.'),
          //ColumnWidget(
             // text1: 'GetX and BLoC State Management',
//              text2:
//              'I utilize GetX and BLoC for efficient state management, making apps more scalable and maintainable.'),
  //        ColumnWidget(
    //          text1: 'Mentorship for Flutter',
      //        text2:
        //      /'I offer mentorship to developers looking to learn Flutter and improve their skills in mobile development.'),
        ],
      ),
    );
  }
}

class ColumnWidget extends StatelessWidget {
  String text1;
  String text2;

  ColumnWidget({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(30),
     // width: width * 0.25,
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
              child: Image.asset('lib/assets/icon.png'),
            ),
          ),
          SizedBox(height: 5),
          Text(
            text1,
            style: GoogleFonts.inconsolata(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            text2,
            style: GoogleFonts.inconsolata(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
