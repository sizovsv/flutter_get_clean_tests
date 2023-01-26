import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'controllers/home.controller.dart';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';

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
                ElevatedButton(
                    child: Text('Open route'),
                    onPressed: () {
                      Get.toNamed("/info");
                    })
              ])),
      appBar: AppBar(
        // toolbarHeight: 55.h,
        title: Text(
          'HomeScreen',
          style: TextStyle(fontSize: 20.sp),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: StyleProvider(
          style: Style(),
          child: ConvexAppBar(
            height: 45.h,
            top: -20.h,
            curveSize: 100.r,
            cornerRadius: 24.r,
            shadowColor: Color.fromARGB(255, 30, 28, 28),
            style: TabStyle.fixedCircle,
            initialActiveIndex: 1,
            items: [
              TabItem(icon: Icons.home),
              TabItem(icon: Icons.search, title: 'Search'),
              TabItem(icon: Icons.menu)
            ],
          )),
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

class Style extends StyleHook {
  @override
  double get activeIconSize => 32.r;

  @override
  double get activeIconMargin => 3.h;

  @override
  double get iconSize => 32.r;

  @override
  TextStyle textStyle(Color color, String? fontFamily) {
    return TextStyle(fontSize: 7.sp, color: color, fontFamily: fontFamily);
  }
}
