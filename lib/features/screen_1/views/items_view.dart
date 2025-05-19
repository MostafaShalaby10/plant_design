import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_two/core/widgets/custom_text_widget.dart';
import 'package:task_two/features/screen_2/views/items_view_fruit.dart';

import 'details_view.dart';
import 'shapes.dart';

class ItemsView extends StatelessWidget {
  const ItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white),
          ),
        ],
        title: const CustomTextWidget(
          text: "Items",
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemBuilder:
                      (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DetailsView(),
                              ),
                            );
                          },
                          child: const CustomContainer(),
                        ),
                      ),
                  itemCount: 3,
                ),
              ),
            ],
          ),
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
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ItemsViewFruit(),
                  ),
                );
              },
              child: ClipPath(
                clipper: BottomShape(),
                child: Container(
                  color: Colors.white,
                  width: 250.w,
                  height: 160.h,
                  alignment: Alignment.bottomCenter,
                  child: const Icon(Icons.lock),
                  // child: Text("dsa smdak"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomContainer extends StatefulWidget {
  const CustomContainer({super.key});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .18,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: Row(
        children: [
          Image.asset("assets/plant.png"),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RatingBar.builder(
                itemSize: 20,
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemBuilder:
                    (context, _) => const Icon(Icons.star, color: Colors.amber),
                onRatingUpdate: (rating) {},
              ),
              const CustomTextWidget(
                text: "Banana tree",
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
              CustomTextWidget(
                text: r"57$",
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.green[900],
              ),
              Row(
                spacing: 5.w,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green[200],
                    radius: 15.r,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                      icon: const Icon(Icons.add, size: 15),
                    ),
                  ),
                  CustomTextWidget(
                    text: counter.toString(),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green[200],
                    radius: 15,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (counter > 1) {
                            counter--;
                          }
                        });
                      },
                      icon: const Icon(Icons.remove, size: 15),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          ClipPath(
            clipper: RightChapeOfContainer(),
            child: Container(
              padding: EdgeInsets.only(right: 20.w),
              alignment: Alignment.center,
              height: 90.h,
              width: 60.w,
              color: Colors.green[200],
              child: const Icon(Icons.lock, color: Colors.black, size: 16),
            ),
          ),
        ],
      ),
    );
  }
}
