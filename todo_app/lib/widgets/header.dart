import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          "assets/icons/trans_logo.svg",
          height: MediaQuery.of(context).size.height * 0.035,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'settings');
          },
          child: SvgPicture.asset(
            "assets/icons/hamburger.svg",
            height: MediaQuery.of(context).size.height * 0.025,
          ),
        ),
      ],
    );
  }
}
