import 'package:flutter/material.dart';
import 'package:resume/features/home/ui/main_screen.dart';
import 'package:resume/features/home/ui/secod_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  /// Next Page Function
  void onNextPage(int page) {
    pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: PageView(
          controller: pageController,
          scrollDirection: Axis.vertical,
          children: [
            /// First View
            MainScreen(
              nextPage: () => onNextPage(1),
            ),

            /// Second View
            SecondScreen(
              nextPage: () => onNextPage(0),
            ),
          ],
        ),
      ),
    );
  }
}
