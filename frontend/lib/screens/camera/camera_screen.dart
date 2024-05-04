// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'body_scan.dart';
// import 'gallery_screen.dart';

// class CameraScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             // 로고 이미지
//             Image.asset('lib/assets/images/logo.jpg', height: 180, fit: BoxFit.contain),
//             Text(
//               'Match up!',
//               style: TextStyle(fontSize: 60, fontFamily: "Timmana", fontWeight: FontWeight.w300),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 60), // 텍스트와 버튼 사이의 여백을 늘립니다.
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center, // 버튼을 가운데로 정렬합니다.
//               children: <Widget>[
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(right: 8.0), // 오른쪽 버튼과의 여백
//                     child: ElevatedButton(
//                       child: Text('체형 측정하기'),
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color(0xFFBBBBEE), // 배경색
//                         foregroundColor: Color(0xFF000000),
//                         padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                         textStyle: TextStyle(fontSize: 17),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                       ),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => BodyScanScreen()),
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0), // 왼쪽 버튼과의 여백
//                     child: ElevatedButton(
//                       child: Text('갤러리'),
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color(0xFFBBBBEE), // 배경색
//                         foregroundColor: Color(0xFF000000),
//                         padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                         textStyle: TextStyle(fontSize: 17),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                       ),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => GalleryScreen()),
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'body_scan.dart';
import 'gallery_screen.dart';

class CameraScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04), // Responsive padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // 로고 이미지
            Image.asset(
              'lib/assets/images/logo.jpg',
              height: screenHeight * 0.25, // Responsive height
              fit: BoxFit.contain,
            ),
            Text(
              'Match up!',
              style: TextStyle(
                fontSize: screenWidth * 0.15, // Responsive font size
                fontFamily: "Timmana",
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: screenHeight * 0.08), // Responsive spacing
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: screenWidth * 0.02), // Responsive padding
                    child: ElevatedButton(
                      child: Text('체형 측정하기'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFBBBBEE),
                        foregroundColor: Color(0xFF000000),
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.08, // Responsive horizontal padding
                          vertical: screenHeight * 0.02, // Responsive vertical padding
                        ),
                        textStyle: TextStyle(
                          fontSize: screenWidth * 0.04, // Responsive font size
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(screenWidth * 0.05), // Responsive border radius
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BodyScanScreen()),
                        );
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02), // Responsive padding
                    child: ElevatedButton(
                      child: Text('갤러리'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFBBBBEE),
                        foregroundColor: Color(0xFF000000),
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.08, // Responsive horizontal padding
                          vertical: screenHeight * 0.02, // Responsive vertical padding
                        ),
                        textStyle: TextStyle(
                          fontSize: screenWidth * 0.04, // Responsive font size
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(screenWidth * 0.05), // Responsive border radius
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GalleryScreen()),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
