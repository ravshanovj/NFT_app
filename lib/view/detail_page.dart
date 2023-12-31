import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nft_app/widgets/large_text.dart';
import 'package:nft_app/widgets/responsive_button.dart';
import 'package:nft_app/widgets/tag_container.dart';
import 'package:nft_app/widgets/text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var starCount = 4;


  @override
  Widget build(BuildContext context) {
    var tags = {
      "vrAR.png": "Visual",
      "3d.png": "3D",
      "abstract.png": "Artist",
      "portrait.png": "Ape",
      "gif.png": "NFT"
    };

    //

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              //top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 420,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/ape2.jpeg"), fit: BoxFit.cover),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 70,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Iconsax.arrow_left,
                      size: 28,

                      // color: Colors.white,
                    ),
                  ),

                  //sizedbox
                  const SizedBox(
                    width: 240,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.heart5,
                        size: 28,
                        color: Colors.redAccent,

                        // color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 380,
              child: Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),

                //

                child: Container(
                  margin: const EdgeInsets.only(left: 20, top: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                            text: "Bougie Ape",
                            color: Colors.black87,
                          ),
                          Row(
                            children: [
                              const Image(image: AssetImage("images/eth.png")),
                              const SizedBox(
                                width: 10,
                              ),
                              AppLargeText(
                                text: "2.4",
                                color: Colors.black54,
                              ),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                      //

                      Row(
                        children: [
                          const Icon(
                            Iconsax.profile_2user,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          AppText(text: "Ape Club")
                        ],
                      ),
                      const SizedBox(height: 16),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Wrap(
                            children: List.generate(
                              5,
                              (index) {
                                return Icon(
                                  Iconsax.star1,
                                  color: index < starCount
                                      ? Colors.yellow[700]
                                      : Colors.grey[300],
                                );
                              },
                            ),
                          ),
                          const SizedBox(width: 14),
                          AppText(
                            text: "4.2",
                          ),
                        ],
                      ),

                      //

                      const SizedBox(height: 25),

                      Container(
                        // margin: EdgeInsets.only(left: 20),
                        child: AppLargeText(
                          text: "Description",
                          size: 22,
                        ),
                      ),

                      //

                      const SizedBox(
                        height: 10,
                      ),

                      //

                      const Text(
                        "Lorem ipsum and a little more of text helps designers save time but it doesn't in this case as I am typing this myself.",
                        style: TextStyle(
                            height: 1.4, fontSize: 16, color: Colors.black54),
                      ),

                      //

                      const SizedBox(
                        height: 20,
                      ),

//

                      const Row(
                        children: [
                          TagWidget(text: "Visual"),
                          TagWidget(text: "3D"),
                          TagWidget(text: "NFT"),
                        ],
                      ),

                      //

                      const SizedBox(
                        height: 28,
                      ),

                      FullWidthButton(
                        color: Colors.blue,
                        text: "Place a bid",
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
