import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pso2wiki/view/indexPage/home.view.dart';

class IndexView extends StatefulWidget {
  const IndexView({super.key});

  @override
  State<IndexView> createState() => _IndexViewState();
}

class _IndexViewState extends State<IndexView> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Haro everynyan"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) => setState(() => currentIndex = value),
        children: [
          const HomeView(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Profile page"),
                Icon(Icons.person),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Settings page"),
                Icon(Icons.settings),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (value) => _pageController.animateToPage(
          value,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
        ),
        destinations: const [
          NavigationDestination(icon: FaIcon(FontAwesomeIcons.house), label: "Home"),
          NavigationDestination(icon: FaIcon(FontAwesomeIcons.shield), label: "Weapons"),
          NavigationDestination(icon: FaIcon(FontAwesomeIcons.shield), label: "Armor"),
        ],
      ),
    );
  }
}
