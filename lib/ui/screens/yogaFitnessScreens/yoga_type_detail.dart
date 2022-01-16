import 'package:yoga_app/data/dummy_data.dart';
import 'package:yoga_app/ui/widgets/WogaWidget/yoga_type_item.dart';
import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: use_key_in_widget_constructors
class YogaTypeDetailScreen extends StatelessWidget {
  static const int mainColor = 0xff624FC0;
  static const int usedGrayColor = 0xffC4C4C4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (context.locale == Locale('en')) {
            context.setLocale(Locale('ar'));
          } else {
            context.setLocale(Locale('en'));
          }
        },
        backgroundColor: Color(mainColor),
        child: const Icon(Icons.language),
      ),
      body: SingleChildScrollView(
          child: Container(
        width: double.infinity,
        // height: 230,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // top image
            Container(
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? 230.h
                  : 330.h,
              width: double.infinity,
              child: Stack(
                children: [
                  //top image
                  Container(
                    height: MediaQuery.of(context).orientation ==
                            Orientation.portrait
                        ? 230.h
                        : 330.h,
                    width: double.infinity,
                    color: Colors.amber,
                    child: Image.network(
                      'https://images.unsplash.com/photo-1593811167565-4672e6c8ce4c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80',
                      fit: BoxFit.cover,
                    ),
                  ),

                  // top shadow
                  Container(
                    padding: const EdgeInsets.only(bottom: 30),
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        end: Alignment.bottomCenter,
                        begin: Alignment.topCenter,
                        colors: <Color>[
                          // Colors.black.withAlpha(0),
                          Colors.black45,
                          Colors.black26,
                          Colors.black87,
                        ],
                      ),
                    ),
                  ),

                  // bottom text
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    // color: Colors.red,
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                      'yoga_advanced'.tr(),
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    alignment: Alignment.bottomCenter,
                  ),

                  // top header
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 16),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: Color(mainColor),
                        )),
                  ),
                ],
              ),
            ),

            // list item
            Container(
                margin:
                    EdgeInsets.only(left: 12, right: 12, top: 16, bottom: 12),
                child: Column(
                  children: yogaTypeItems.map((e) {
                    return YogaTypeItemModelWidget(e);
                  }).toList(),
                )),

            // YogaTypeItemModelWidget
          ],
        ),
      )),
    );
  }
}
