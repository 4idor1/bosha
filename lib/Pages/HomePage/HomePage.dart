import 'package:flutter_kitap_bar/Components/BookCard.dart';
import 'package:flutter_kitap_bar/Components/BookTitle.dart';
import 'package:flutter_kitap_bar/Components/MyDrawer.dart';
import 'package:flutter_kitap_bar/Controller/BookController.dart';
import 'package:flutter_kitap_bar/Models/Data.dart';
import 'package:flutter_kitap_bar/Pages/BookDetails/BookDetails.dart';
import 'package:flutter_kitap_bar/Pages/HomePage/Widgets/MyInputTextField.dart';
import 'package:flutter_kitap_bar/Pages/Homepage/Widgets/AppBar.dart';
import 'package:flutter_kitap_bar/Pages/Homepage/Widgets/CategoryWidger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    BookController bookController = Get.put(BookController());
    bookController.getUserBook();
    return Scaffold(
      drawer: myDrawer,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              color: Theme.of(context).colorScheme.primary,
              // height: 500,
              child: Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          HomeAppBar(),
                          SizedBox(height: 50),
                          Row(
                            children: [
                              Text(
                                "Привет! ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                    ),
                              ),
                              Text(
                                "Боша",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                    ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  "Время читать книги и получать знания!",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          MyInputTextField(),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                "Topics",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                    ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: categoryData
                                  .map(
                                    (e) => CategoryWidget(
                                        iconPath: e["icon"]!,
                                        btnName: e["lebel"]!),
                                  )
                                  .toList(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "В Тренде",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Obx(
                        () => Row(
                          children: bookController.bookData
                              .map(
                                (e) => BookCard(
                                  title: e.title!,
                                  coverUrl: e.coverUrl!,
                                  ontap: () {
                                    Get.to(BookDetails(
                                      book: e,
                                    ));
                                  },
                                ),
                              )
                              .toList(),
                        ),
                      )),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "В ваших интересах",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Obx(() => Column(
                        children: bookController.bookData
                            .map(
                              (e) => BookTitle(
                                ontap: () {
                                  Get.to(BookDetails(book: e));
                                },
                                title: e.title!,
                                coverUrl: e.coverUrl!,
                                author: e.author!,
                                price: e.price!,
                                rating: e.rating!,
                                totalRating: 12,
                              ),
                            )
                            .toList(),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
