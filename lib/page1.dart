import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:juice_app/nav_bar.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  void initState() {
    Timer(Duration(seconds: 5),()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>BottomNavBarDemo())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size; 
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bg1.jpg"),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40.w),
              padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
              height:ScreenUtil().setHeight(300),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 2.w, color: Colors.black),
                borderRadius: BorderRadius.circular(18.r),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("images/balender1.png",height: 130.h,),
                  Text("Making juice", style: myStyle(20.sp, Colors.black, FontWeight.bold),),
                  Text("Your juice will be delivered by our deliverye", style: myStyle(12.sp, Colors.black,),),
                  Text("and your juice will be finished in time", style: myStyle(12.sp, Colors.black,),),

                  Container(
                    padding: EdgeInsets.only(left: 8.w, top: 8.h, right: 8.w, bottom: 8.h),
                    height: 40.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      border: Border.all(width: 2.w, color: Colors.black),
                      color: Colors.amber,
                    ),
                    child: Center(child: Text("10 : 20", style: myStyle(16.sp, Colors.black, FontWeight.bold),)),
                  ),
                ],
              ),
            ),

            SizedBox(height: 18.h,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 40.w),
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              height: 130.h,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(width: 2.w, color: Colors.black),
                borderRadius: BorderRadius.circular(18.r),
                color: Colors.white,
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Image.asset("images/emoji.png", height: 60.h,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hi I'm Josh", style: myStyle(16.sp, Colors.black, FontWeight.bold),),
                            Text("1234 JK", style: myStyle(12.sp, Colors.black,FontWeight.w700)),
                          ],
                        ),
                      SizedBox(width: 18.w,),
                      Container(
                        padding: EdgeInsets.only(left: 8.w, top: 8.h, right: 8.w, bottom: 8.h),
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2.w, color: Colors.black),
                          shape: BoxShape.circle,
                          color: Colors.purple,
                        ),
                        child: Center(child: Icon(Icons.call)),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 8.w, top: 8.h, right: 8.w, bottom: 8.h),
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2.w, color: Colors.black),
                          shape: BoxShape.circle,
                          color: Colors.purple,
                        ),
                        child: Center(child: Icon(Icons.message_outlined)),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h,),
                  Text("Position: waiting for juice", style: myStyle(12.sp, Colors.black, ),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

myStyle(double fs, Color clr, [FontWeight? fw]){
  return TextStyle(fontSize: fs, color: clr, fontWeight: fw);
}
