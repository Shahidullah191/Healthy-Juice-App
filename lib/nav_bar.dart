import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:juice_app/page1.dart';
import 'package:juice_app/page2.dart';
import 'package:juice_app/page3.dart';

class BottomNavBarDemo extends StatefulWidget {
  const BottomNavBarDemo({Key? key}) : super(key: key);

  @override
  _BottomNavBarDemoState createState() => _BottomNavBarDemoState();
}

class _BottomNavBarDemoState extends State<BottomNavBarDemo> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  int selectedItem = 2;
  // selectedIconTheme: IconThemeData(size: 30),
  // unselectedIconTheme: IconThemeData(size: 24),

  PageController pageController = PageController(initialPage: 0);

  List<Widget> pages = [
    Page2(),
    Page3(),
    Page1(),
  ];

  void onPageChange(int index) {
    setState(() {
      selectedItem = index;
    });
  }

  final GlobalKey<FormState> _fromkey = GlobalKey();

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,

      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: onPageChange,
      ),
      bottomNavigationBar: Container(
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50),),
        //   //color: Colors.red,
        // ),
        //height: 100,

        padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
        child: Container(
          margin: EdgeInsets.only( top: 5.h),

          //padding: EdgeInsets.only(left: 30,right: 30),
          height: 100.h,
          width: double.infinity,
          child: BottomAppBar(
            //color: Colors.white.withOpacity(0.9),
            elevation: 0,

            child: Container(
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(80.r),
                      topLeft: Radius.circular(80.r),
                      bottomRight: Radius.circular(20.r),
                      bottomLeft: Radius.circular(20.r)),
                  border: Border.fromBorderSide(
                      BorderSide(color: Colors.black, width: 2.w))),
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: 8.h,
                  top: 8.h,
                ),
                child: Row(
                  //mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MaterialButton(
                      color: Color(0xf8e76c08),
                      height: 70.h,
                      minWidth: 45.w,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.r),
                          side: BorderSide(color: Colors.black, width: 2.w)),
                      onPressed: () {
                        setState(() {
                          selectedItem = 0;
                          pageController!.jumpToPage(0);
                        });
                      },
                      child: Icon(
                        Icons.card_giftcard,
                        color: Colors.black,
                        size: 20.h,
                      ),
                    ),
                    MaterialButton(
                      color: Colors.white,
                      height: 70.h,
                      minWidth: 45.w,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.r),
                          side: BorderSide(color: Colors.black, width: 2.w)),
                      onPressed: () {
                        setState(() {
                          selectedItem = 1;
                          pageController!.jumpToPage(1);
                        });
                      },
                      child: Icon(
                        Icons.water_drop_outlined,
                        color: Colors.black,
                        size: 20.h,
                      ),
                    ),
                    MaterialButton(
                      color: Colors.white,
                      height: 70.h,
                      minWidth: 45.w,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.r),
                          side: BorderSide(color: Colors.black, width: 2.w)),
                      onPressed: () {
                        setState(() {
                          selectedItem = 2;
                          pageController!.jumpToPage(2);
                        });
                      },
                      child: Icon(
                        Icons.message_rounded,
                        color: Colors.black,
                        size: 20.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
