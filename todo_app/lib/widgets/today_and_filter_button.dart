import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_app/utilities/theme.dart';

class TodayAndFilterButton extends StatelessWidget {
  const TodayAndFilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Today", style: Theme.of(context).textTheme.displayMedium),
        // GestureDetector(
        //   onTap: () {},
        //   child: Container(
        //     height: MediaQuery.of(context).size.height * 0.04,
        //     width: MediaQuery.of(context).size.width * 0.25,
        //     padding: EdgeInsets.symmetric(
        //       horizontal: MediaQuery.of(context).size.width * 0.05,
        //     ),
        //     decoration: BoxDecoration(
        //       color: blackColor,
        //       borderRadius: BorderRadius.circular(
        //         MediaQuery.of(context).size.width,
        //       ),
        //     ),
        //     child: Expanded(
        //       child: SizedBox(
        //         width: MediaQuery.of(context).size.width * 0.5,
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceAround,
        //           children: [
        //             Text(
        //               "Filter",
        //               style: Theme.of(context).textTheme.displaySmall!.copyWith(
        //                 color: whiteColor,
        //                 fontSize: 13,
        //               ),
        //             ),
        //             SvgPicture.asset(
        //               "assets/icons/filter.svg",
        //               height: MediaQuery.of(context).size.height * 0.014,
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
