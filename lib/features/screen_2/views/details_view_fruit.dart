import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/custom_text_widget.dart';

class DetailsViewFruit extends StatefulWidget {
  const DetailsViewFruit({super.key});

  @override
  State<DetailsViewFruit> createState() => _DetailsViewFruitState();
}

class _DetailsViewFruitState extends State<DetailsViewFruit> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Stack(
        children: [
          Center(child: Image.asset("assets/dragonnn.png")),
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
            top: 40.h,
            left: 10.w,
            child: Column(
              spacing: 10.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_circle_left_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                CustomTextWidget(
                  text: "Premuim",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.green[200],
                ),
                const CustomTextWidget(
                  text: "Exotic fruits",
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
                const CustomTextWidget(
                  text: "Pitaya",
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                MaterialButton(
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    borderSide: BorderSide(color: Colors.green[200]!),
                  ),
                  onPressed: () {},
                  child: CustomTextWidget(
                    text: "Nutritional",
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.green[200],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20.h,
            right: 30.w,
            child: Container(
              width: 80.w,
              height: 120.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Colors.white,
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart_rounded),
                  CustomTextWidget(
                    text: "Add to order",
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -130.h,
            left: -100.w,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white),
                  ),
                  child: CircleAvatar(
                    radius: 160.r,
                    backgroundColor: Colors.transparent,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 100.r,
                      child: const CustomTextWidget(
                        text: r"2.25$",
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -20.h,
                  right: 140.w,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: CircleAvatar(
                      radius: 20.r,
                      backgroundColor:
                          index == 0 ? Colors.white : Colors.grey[400],
                      child: const CustomTextWidget(
                        text: "1",
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 25.h,
                  right: 40.w,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: CircleAvatar(
                      radius: 20.r,
                      backgroundColor:
                          index == 1 ? Colors.white : Colors.grey[400],
                      child: const CustomTextWidget(
                        text: "5",
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 120.h,
                  right: -15.w,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: CircleAvatar(
                      radius: 20.r,
                      backgroundColor:
                          index == 2 ? Colors.white : Colors.grey[400],
                      child: const CustomTextWidget(
                        text: "10",
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (index == 0)
            Positioned(
              bottom: 130.h,
              left: 70.w,
              child: Transform.rotate(
                angle: 0,
                child: Container(
                  width: 10.w,
                  height: 70.h,
                  color: Colors.white,
                ),
              ),
            ),
          if (index == 1)
            Positioned(
              bottom: 100.h,
              left: 140.w,
              child: Transform.rotate(
                angle: 180,
                child: Container(
                  width: 10.w,
                  height: 70.h,
                  color: Colors.white,
                ),
              ),
            ),
          if (index == 2)
            Positioned(
              bottom: 30.h,
              left: 190.w,
              child: Transform.rotate(
                angle: 80,
                child: Container(
                  width: 10.w,
                  height: 70.h,
                  color: Colors.white,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
