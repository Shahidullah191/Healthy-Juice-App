import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:juice_app/page1.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 220.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.cyanAccent.withOpacity(0.1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Image.asset("images/balender2.png"),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.w),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Choose fruit to mix",
                        style: myStyle(
                          14.sp,
                          Colors.black,
                          FontWeight.bold
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 8, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.w,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset("images/tomato.png"),
                                  Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                            ),
                            Container(
                              height: 50.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.w,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset("images/vage.png"),
                                  Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                            ),

                            Container(
                              height: 50.h,
                              width: 100.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.w,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset("images/lemon.png"),
                                  Icon(Icons.keyboard_arrow_down),
                                ],
                              ),

                            ),
                          ],
                        ),
                      ),

                      Text(
                        "Add Sweetener",
                        style: myStyle(
                          14.sp,
                          Colors.black,
                          FontWeight.bold
                        ),
                      ),
                      Text(
                        "Size in teaspoon",
                        style: myStyle(
                          10.sp,
                          Colors.black,
                        ),
                      ),

                      Padding(
                        padding:  EdgeInsets.only(top: 8, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.w,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Sugar",
                                    style: myStyle(
                                        14.sp,
                                        Colors.black,
                                        FontWeight.bold
                                    ),
                                  ),
                                  Icon(Icons.keyboard_arrow_down),
                                ],
                              ),
                            ),

                            Container(
                              height: 30.h,
                              width: 30.w,
                              decoration: BoxDecoration(
                                color: Colors.amberAccent,
                                shape: BoxShape.circle
                              ),
                              child: Icon(Icons.remove),
                            ),

                            Container(
                              height: 50.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1.w,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "2",
                                    style: myStyle(
                                        14.sp,
                                        Colors.black,
                                        FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              height: 30.h,
                              width: 30.w,
                              decoration: BoxDecoration(
                                  color: Colors.amberAccent,
                                  shape: BoxShape.circle
                              ),
                              child: Icon(Icons.add),
                            ),

                          ],
                        ),
                      ),

                      Text(
                        "Add Notes",
                        style: myStyle(
                            14.sp,
                            Colors.black,
                            FontWeight.bold
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.only(left: 15.w, top: 15.w),
                        alignment: Alignment.topLeft,
                        height: 80.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1.w,
                          ),
                        ),
                        child: Text(
                          "I want the taste of the juice",
                          style: myStyle(
                              14.sp,
                              Colors.black54,
                          ),
                        ),
                      ),

                      Padding(
                        padding:  EdgeInsets.only(bottom: 25.w),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "0/100",
                            style: myStyle(
                              12.sp,
                              Colors.black,
                            ),
                          ),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.only(left: 15.w, top: 15.h, right: 15.w, bottom: 15.h),
                        alignment: Alignment.topLeft,
                        height: 110.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1.w,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total Calories",
                                  style: myStyle(
                                    12.sp,
                                    Colors.black,
                                  ),
                                ),
                                Text(
                                  "Total Price: 85",
                                  style: myStyle(
                                    16.sp,
                                    Colors.black,
                                    FontWeight.bold
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "165 kcal",
                                  style: myStyle(
                                    14.sp,
                                    Colors.black,
                                    FontWeight.bold
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(left: 5.w, top: 5.h, right: 5.w, bottom: 5.h),
                                  height: 40.h,
                                  width: 150.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: Colors.amber,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1.w,
                                    ),
                                  ),
                                  child: Center(child: Text("Mix and Pay", style: myStyle(16.sp, Colors.black, FontWeight.bold),)),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20.h,),

                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
