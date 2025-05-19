import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_two/core/widgets/custom_text_widget.dart';
import 'package:task_two/features/screen_2/views/details_view_fruit.dart';

class ItemsViewFruit extends StatelessWidget {
  const ItemsViewFruit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],

      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: -40.w,
            top: -50.h,
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green, width: 2.w),
                    ),
                    child: CircleAvatar(
                      radius: 150.r,
                      backgroundColor: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 2.w),
                        ),
                        child: CircleAvatar(
                          radius: 100.r,
                          backgroundColor: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.green,
                                width: 2.w,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 50.r,
                              backgroundColor: Colors.transparent,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.r),
                                child: Image.asset(
                                  "assets/profile.jpg",
                                  fit: BoxFit.cover,
                                  width: 100.w,
                                  height: 100.h,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const CustomTextWidget(
                    text: "Exotic",
                    fontSize: 60,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  CustomTextWidget(
                    text: "fruits",
                    fontSize: 60,
                    fontWeight: FontWeight.w300,
                    color: Colors.green[200],
                  ),
                  SizedBox(height: 30.h),
                ],
              ),
            ),
          ),
          Positioned(
            top: 40.h,
            right: 10.w,
            child: Stack(
              alignment: Alignment.topCenter,
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 100.w,
                  height: 100.h,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: const CustomTextWidget(
                    text: "10 Products",
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Positioned(
                  top: -15.h,
                  child: CircleAvatar(
                    radius: 20.r,
                    backgroundColor: Colors.black,
                    child: const Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 380.h,
            right: 20.w,

            child: CustomTextWidget(
              text: "See more",
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: Colors.green[200],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.31,
            left: 30.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomContainer(),
                SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                const CustomContainer(),
              ],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.23,
            left: 30.w,
            child: Row(
              children: [
                const CustomTextWidget(
                  text: "Offers",
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.4),
                CustomTextWidget(
                  text: "See more",
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.green[200],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.1,
            left: 30.w,
            child: Container(
              width: MediaQuery.of(context).size.width * .85,
              height: 120.h,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100.r),
                  topRight: Radius.circular(25.r),
                  bottomLeft: Radius.circular(15.r),
                  topLeft: Radius.circular(15.r),
                ),
              ),
              child: Row(
                children: [
                  Image.asset("assets/guava.png"),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomTextWidget(
                        text: "Guava",
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                      CustomTextWidget(
                        text: "Premuim",
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.green[200],
                      ),
                    ],
                  ),
                  SizedBox(width: 25.w),

                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomTextWidget(
                        text: r"2.75$",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                      CustomTextWidget(
                        text: r"2.20",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            right: 40.w,
            bottom: 0.h,
            child: Stack(
              clipBehavior: Clip.none,

              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .9,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                ),
                Positioned(
                  top: -20.h,
                  right: 70.w,
                  child: Row(
                    spacing: 50.w,
                    children: [
                      CircleAvatar(
                        radius: 25.r,
                        child: Icon(Icons.home, color: Colors.black),
                        backgroundColor: Colors.grey[100],
                      ),
                      CircleAvatar(
                        radius: 25.r,
                        child: Icon(Icons.search, color: Colors.black),
                        backgroundColor: Colors.grey[100],
                      ),
                      CircleAvatar(
                        radius: 25.r,
                        child: Icon(
                          Icons.workspace_premium,
                          color: Colors.black,
                        ),
                        backgroundColor: Colors.grey[100],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          width: 150.w,
          height: 150.h,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(100.r),
              topRight: Radius.circular(25.r),
            ),
          ),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomTextWidget(
                text: "Pitaya",
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
              CustomTextWidget(
                text: "Premium",
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.green[200],
              ),
              const CustomTextWidget(
                text: r"20$",
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Positioned(
          top: -40.h,
          child: Image.asset("assets/dragon.png", width: 100.w),
        ),
        Positioned(
          top: 80.h,
          right: -5.w,
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsViewFruit(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_circle_right_rounded,
              size: 35,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
