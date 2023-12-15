import 'package:flutter/material.dart';
import 'package:flutter_kitap_bar/Config/Colors.dart';
import 'package:flutter_kitap_bar/Pages/BookPage/BookPages.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BookActionBtn extends StatelessWidget {
  final String bookUrl;
  const BookActionBtn({super.key, required this.bookUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(14)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        InkWell(
          onTap: () {
            Get.to(BookPage(bookUrl: bookUrl,));
          },
          child: Row(
            children: [
              SvgPicture.asset("Assets/Icons/book.svg"),
              const SizedBox(
                width: 20,
              ),
              Text(
                "Читать",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: backgroundColor, letterSpacing: 1.2),
              )
            ],
          ),
        ),
        Container(
          width: 3,
          height: 20,
          decoration: BoxDecoration(
              color: backgroundColor, borderRadius: BorderRadius.circular(10)),
        ),
        Row(
          children: [
            SvgPicture.asset("Assets/Icons/playe.svg"),
            const SizedBox(
              width: 20,
            ),
            Text(
              "Слушать",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: backgroundColor, letterSpacing: 1.2),
            )
          ],
        )
      ]),
    );
  }
}
