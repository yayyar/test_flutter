import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  final String assetName = 'assets/svg/undraw_jogging_re_k28i.svg';
  final Widget svgIcon =
      SvgPicture.asset('assets/svg/undraw_jogging_re_k28i.svg',
          // color: Colors.red,
          width: 20,
          semanticsLabel: 'Jogging');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.yellow,
        // appBar: AppBar(
        //   title: const Text('HomeView'),
        //   centerTitle: true,
        // ),
        body: SafeArea(
      child: PageView(
        // controller: controller,
        // onPageChanged: (page) => {print(page.toString())},
        pageSnapping: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      SvgPicture.asset('assets/svg/undraw_jogging_re_k28i.svg',
                          // color: Colors.red,
                          width: 400,
                          semanticsLabel: 'Jogging')),
              const SizedBox(
                height: 20,
              ),
              const Text('Description'),
            ],
          ),
          Container(
              color: Colors.white,
              child:
                  SvgPicture.asset('assets/svg/undraw_nature_fun_re_iney.svg',
                      // color: Colors.red,
                      semanticsLabel: 'Jogging')),
        ],
      ),
    ));
  }
}
