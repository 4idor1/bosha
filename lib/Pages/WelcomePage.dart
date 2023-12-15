import 'package:flutter/material.dart';
import 'package:flutter_kitap_bar/Components/PrimaryButton.dart';
import 'package:flutter_kitap_bar/Controller/AuthController.dart';
import 'package:flutter_kitap_bar/Pages/HomePage/HomePage.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 400,
          padding: const EdgeInsets.all(30),
          color: Theme.of(context).colorScheme.primary,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Image.asset(
                      "Assets/Images/book.png",
                      width: 350,
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Text(
                      "Kitap-Bar",
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(
                              color: Theme.of(context).colorScheme.background),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Flexible(
                      child: Text(
                        "Здесь вы можете найти лучшую книгу для вас, прочитать, а так же послушать книгу.",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: Theme.of(context).colorScheme.background),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Введение",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      "n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(10),
          child: PrimaryButton(
            btnName: "ВОЙТИ",
            ontap: () {
              authController.loginWithEmail();
            },
          ),
        )
      ],
    ));
  }
}
