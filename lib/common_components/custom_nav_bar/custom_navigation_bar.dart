import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({
    super.key,
    required this.currentIndex,
    this.onTap,
  });

  final int currentIndex;
  final Function(int)? onTap;

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          bottom: 20,
          left: 15,
          right: 15,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BottomNavigationBar(
              elevation: 50,
              backgroundColor: Colors.deepPurple.shade400,
              type: BottomNavigationBarType.fixed,
              currentIndex: widget.currentIndex,
              selectedItemColor: Colors.lightGreen,
              onTap: widget.onTap,
              selectedLabelStyle: const TextStyle(
                fontSize: 12,
                color: Colors.lightGreen,
                fontWeight: FontWeight.w500,
                fontFamily: 'Inter',
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontFamily: 'Inter',
              ),
              unselectedItemColor: Colors.white,
              items: const [
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.home,
                    size: 30,
                  ),
                  icon: Padding(
                    padding: EdgeInsets.all(7),
                    child: Icon(
                      Icons.home,
                      size: 30,
                    ),
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.person,
                    size: 30,
                  ),
                  icon: Padding(
                    padding: EdgeInsets.all(7),
                    child: Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  label: "Support",
                ),
                BottomNavigationBarItem(
                  activeIcon: SizedBox(),
                  icon: SizedBox(
                    width: 20,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.history,
                    size: 40,
                  ),
                  icon: Padding(
                    padding: EdgeInsets.all(7),
                    child: Icon(
                      Icons.history,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  label: "History",
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.people,
                    size: 30,
                    color: Colors.white,
                  ),
                  icon: Padding(
                    padding: EdgeInsets.all(7),
                    child: Icon(
                      Icons.people,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  label: "More",
                ),
              ],
            ),
          ),
        ),

        /// Send Money button
        Positioned(
          bottom: 26,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/send_money_main_screen');
                },
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.lightGreen,
                      ),
                      child: Center(
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.keyboard_double_arrow_up_sharp,
                              size: 35,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Center(
                child: Text(
                  "Send Money",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
