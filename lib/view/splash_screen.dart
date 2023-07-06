import 'package:flutter/material.dart';
import 'package:nft_app/view/navi_page.dart/main_page.dart';
import 'package:nft_app/widgets/large_text.dart';
import 'package:nft_app/widgets/responsive_button.dart';
import 'package:nft_app/widgets/text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "wp1.png",
    "wp2.png",
    "wp3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/' + images[index],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 300,
                          child: AppLargeText(
                            text: "Discover NFTs from Top Creators",
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 250,
                          child: AppText(
                            text:
                                "Buy and sell art with Millions of users all over the globe",
                            color: Color.fromARGB(217, 255, 255, 255),
                            size: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: (() {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: ((context) => MainPage()),
                              ),
                            );
                          }),
                          child: ResponsiveButton(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          margin: const EdgeInsets.only(bottom: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDots
                                ? Colors.white
                                : Colors.white38,
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
