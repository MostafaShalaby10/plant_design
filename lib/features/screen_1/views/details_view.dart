import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_two/core/widgets/custom_text_widget.dart';

import 'shapes.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: Center(
        child: Stack(
          children: [
            Positioned(
              bottom: MediaQuery.of(context).size.height * .04,
              left: 140.w,
              child: ClipPath(
                clipper: SubShape(),
                child: Container(
                  alignment: Alignment.center,
                  height: 150.h,
                  width: 130.w,
                  padding: EdgeInsets.only(top: 60.h),
                  color: Colors.green[200],
                  child: const CustomTextWidget(
                    text: "X2",
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            const MainContainer(),

            Positioned(
              bottom: MediaQuery.of(context).size.height * .01,
              right: MediaQuery.of(context).size.width * .001,
              child: ClipPath(
                clipper: RightShape(),
                child: Container(
                  padding: EdgeInsets.only(right: 20.w),
                  alignment: Alignment.centerRight,
                  height: 190.h,
                  width: 170.w,
                  color: Colors.white,
                  child: const Icon(Icons.home),
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * .01,
              left: MediaQuery.of(context).size.width * .001,
              child: ClipPath(
                clipper: LefShape(),
                child: Container(
                  padding: EdgeInsets.only(left: 20.w),

                  alignment: Alignment.centerLeft,
                  height: 190.h,
                  width: 170.w,
                  color: Colors.white,
                  child: const Icon(Icons.person),
                ),
              ),
            ),

            Positioned(
              bottom: 0.h,
              left: MediaQuery.of(context).size.width * .2,
              child: ClipPath(
                clipper: BottomShape(),
                child: Container(
                  color: Colors.green[200],
                  width: 250.w,
                  height: 160.h,
                  alignment: Alignment.bottomCenter,
                  child: const Icon(Icons.lock),
                  // child: Text("dsa smdak"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainContainer extends StatefulWidget {
  const MainContainer({super.key});

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      fit: StackFit.expand,
      children: [
        ClipPath(
          clipper: MainShape(),
          child: Container(
            height: MediaQuery.of(context).size.height * .9,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(bottom: 140.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const CustomTextWidget(
                  text: "Strelitzia",
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                ),
                CustomTextWidget(
                  text: "Bird of paradise",
                  fontSize: 17,
                  color: Colors.grey[400],
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 20.h),
                const CustomTextWidget(
                  text: r"100$",
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * .01,
          child: Image.asset(
            "assets/plant.png",

            height: MediaQuery.of(context).size.height * .6,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * .42,
          left: MediaQuery.of(context).size.width * .6,
          child: CircleAvatar(
            backgroundColor: Colors.green[200],
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios_outlined),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5.h,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                },
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor:
                      index == 0 ? Colors.green[400] : Colors.green[100],
                  child: CustomTextWidget(
                    text: "M",
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: index == 0 ? Colors.black : Colors.black26,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor:
                      index == 1 ? Colors.green[400] : Colors.green[100],
                  child: CustomTextWidget(
                    text: "L",
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: index == 1 ? Colors.black : Colors.black26,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor:
                      index == 2 ? Colors.green[400] : Colors.green[100],
                  child: CustomTextWidget(
                    text: "XL",
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: index == 2 ? Colors.black : Colors.black26,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
