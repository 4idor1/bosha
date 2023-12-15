import 'package:flutter/material.dart';
import 'package:flutter_kitap_bar/Config/Colors.dart';
import 'package:flutter_kitap_bar/Pages/ProfilePage/ProfilePage.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          "Assets/Icons/dashboard.svg",
          height: 30,
        ),
        Text(
          "Kitap-Bar",
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(color: Theme.of(context).colorScheme.background),
        ),
        InkWell(
          onTap: (){
            Get.to( const ProfilePage());
          },
          child: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.background,
              child: const Text("B", style: TextStyle(color: primaryColor))),
        )
      ],
    );
  }
}
