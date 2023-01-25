import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
          width: 35.w,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                    height: 50.h,
                    width: 50.h,
                    child: FloatingActionButton(
                      onPressed: () => controller.increment(),
                      // label: const Text('Add'),
                      child: Icon(
                        Icons.add,
                        size: 24.r,
                      ),
                    )),
                Container(
                    height: 50.h,
                    width: 50.h,
                    child: FloatingActionButton(
                      onPressed: () => controller.decrement(),
                      // label: const Text('Add'),
                      child: Icon(
                        Icons.remove,
                        size: 24.r,
                      ),
                    )),
              ])),
      appBar: AppBar(
        toolbarHeight: 55.h * ScreenUtil().scaleHeight,
        title: Text(
          'HomeScreen',
          style: TextStyle(fontSize: 20.sp),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Obx(
        () => Text(
          'HomeScreen is working ${controller.count}',
          style: TextStyle(fontSize: 14.sp),
        ),
      )),
    );
  }
}
