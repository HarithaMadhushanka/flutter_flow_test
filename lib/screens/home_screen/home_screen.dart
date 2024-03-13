import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flow_test/common_components/custom_app_bar/custom_app_bar.dart';
import 'package:flutter_flow_test/common_components/custom_card_warousel/custom_card_carousel.dart';
import 'package:flutter_flow_test/common_components/custom_nav_bar/custom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  /// App Bar
                  const CustomAppBar(),

                  const SizedBox(
                    height: 30,
                  ),

                  /// Card Carousel
                  const CustomCardCarousel(),

                  const SizedBox(
                    height: 20,
                  ),

                  /// Grid View
                  SizedBox(
                    width: double.infinity,
                    height: 230,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                      ),
                      itemCount: gridItemsList.isNotEmpty
                          ? gridItemsList[0].length
                          : 0,
                      itemBuilder: (context, index) {
                        final player =
                            gridItemsList[0].entries.elementAt(index);
                        return buildGridItem(player.key, player.value);
                      },
                    ),
                  ),

                  /// Carousel Slider
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 140,
                      enableInfiniteScroll: false,
                      padEnds: true,
                      viewportFraction: 0.95,
                    ),
                    carouselController: carouselController,
                    items: _slidersList.map((item) => item).toList(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const CustomNavigationBar(
        currentIndex: 0,
      ),

      /// Bottom Navigation Bar
    );
  }
}

/// sliders list
List<Widget> _slidersList = [
  Container(
    width: double.infinity,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.blueGrey.withOpacity(0.7),
      borderRadius: BorderRadius.circular(20),
    ),
  ),
  Container(
    width: double.infinity,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.blueGrey.withOpacity(0.3),
      borderRadius: BorderRadius.circular(20),
    ),
  ),
];

/// grid items list
List<Map<String, IconData>> gridItemsList = [
  {
    "Make transfers": Icons.keyboard_double_arrow_up_rounded,
    "Make Payments": Icons.credit_card_outlined,
    "Pay Bills": Icons.edit_note,
    "Schedule Payments": Icons.format_align_left_rounded,
    "Loans": Icons.handshake_outlined,
    "My Account": Icons.person_pin,
  },
];

/// builds the gridview
Widget buildGridItem(String label, IconData iconData) {
  return Card(
    elevation: 2.0,
    color: Colors.blueGrey,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 40.0,
          color: Colors.white,
        ),
        const SizedBox(height: 8.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 12.0,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}
