import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:juice_app/page1.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Find Out Best Juice", style: myStyle(25.sp, Colors.black, FontWeight.bold),),

        actions: [
          Icon(Icons.search, color: Colors.black54,),
          SizedBox(width: 8.w,),
          Image.asset("images/icon.png"),
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          //padding: EdgeInsets.symmetric(horizontal: 15.w),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/bg1.jpg"), fit: BoxFit.cover),
          ),

          child: Column(
            children: [
              Image.asset("images/cartoon.png"),

              Padding(
                padding:  EdgeInsets.only(top: 70.h, bottom: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10.w),
                      height: 160.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.r),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.w,
                        ),
                      ),
                      child: Center(child: Image.asset("images/orange.png", width: 130,),),
                    ),

                    Container(
                      margin: EdgeInsets.only(right: 10.w),
                      padding: EdgeInsets.only(left: 10.w,right: 10.w, top: 15.h, bottom: 15.h),
                      height: 160.h,
                      width: 205.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.r),
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
                              Text("Orange Juice", style: myStyle(18.sp, Colors.black, FontWeight.bold),),

                              Container(
                                padding: EdgeInsets.only(left: 5.w, top: 5.h, right: 5.w, bottom: 5.h),
                                height: 28.h,
                                width: 70.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Colors.green,
                                ),
                                child: Center(child: Text("64.9 kcal", style: myStyle(12.sp, Colors.black, FontWeight.bold),)),
                              ),
                            ],
                          ),
                          Text("Enjoy the freshness when starting your morning activities.", style: myStyle(12.sp, Colors.black),),

                          Container(
                            padding: EdgeInsets.only(left: 5.w, top: 5.h, right: 5.w, bottom: 5.h),
                            height: 40.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Colors.amber,
                              border: Border.all(
                                color: Colors.black,
                                width: 1.w,
                              ),
                            ),
                            child: Center(child: Text("Add", style: myStyle(16.sp, Colors.black, FontWeight.bold),)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.w),
                    height: 160.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.r),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.w,
                      ),
                    ),
                    child: Center(child: Image.asset("images/grape.png", width: 130,),),
                  ),

                  Container(
                    margin: EdgeInsets.only(right: 10.w),
                    padding: EdgeInsets.only(left: 10.w,right: 10.w, top: 15.h, bottom: 15.h),
                    height: 160.h,
                    width: 205.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.r),
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
                            Text("Grape Juice", style: myStyle(18.sp, Colors.black, FontWeight.bold),),

                            Container(
                              padding: EdgeInsets.only(left: 5.w, top: 5.h, right: 5.w, bottom: 5.h),
                              height: 28.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.green,
                              ),
                              child: Center(child: Text("60.2 kcal", style: myStyle(12.sp, Colors.black, FontWeight.bold),)),
                            ),
                          ],
                        ),
                        Text("Drink this fresh grape juice makes you forget the tiring activities", style: myStyle(12.sp, Colors.black),),

                        Container(
                          padding: EdgeInsets.only(left: 5.w, top: 5.h, right: 5.w, bottom: 5.h),
                          height: 40.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: Colors.amber,
                            border: Border.all(
                              color: Colors.black,
                              width: 1.w,
                            ),
                          ),
                          child: Center(child: Text("Add", style: myStyle(16.sp, Colors.black, FontWeight.bold),)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50.h,)
            ],
          ),
        ),
      ),
    );
  }
}
