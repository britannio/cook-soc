import 'package:animations/animations.dart';
import 'package:cooksoc/features/auth/screens/profile_screen.dart';
import 'package:cooksoc/features/recipes/screens/recipes_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  void switchTab(int index) => setState(() => this.index = index);

  late final List<Widget> pages = [
    RecipesScreen(),
    Placeholder(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cook Soc'),
        centerTitle: true,
      ),
      body: PageTransitionSwitcher(
        transitionBuilder: (
          Widget child,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) {
          return FadeThroughTransition(
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            child: child,
          );
        },
        child: pages[index],
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}

class NavigationBar extends StatelessWidget {
  NavigationBar({Key? key}) : super(key: key);

  late final items = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: FaIcon(FontAwesomeIcons.pizzaSlice),
      label: 'Recipes',
    ),
    BottomNavigationBarItem(
      icon: FaIcon(FontAwesomeIcons.users),
      label: 'Events',
    ),
    BottomNavigationBarItem(
      icon: FaIcon(FontAwesomeIcons.user),
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final homeState = context.findAncestorStateOfType<_HomeScreenState>()!;

    return BottomNavigationBar(
      items: items,
      onTap: homeState.switchTab,
      currentIndex: homeState.index,
    );
  }
}
