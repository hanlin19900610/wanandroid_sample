import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

import '../../../../lib.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: navigationShell.currentIndex,
        onTap: (int index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
        items: [
          BottomNavigationBarItem(
            label: S.of(context).home,
            icon: const Icon(Icons.home_outlined),
            activeIcon: const Icon(Icons.home),
            tooltip: S.of(context).home,
          ),
          BottomNavigationBarItem(
            label: S.of(context).nav,
            icon: const Icon(Icons.navigation_outlined),
            activeIcon: const Icon(Icons.navigation),
            tooltip: S.of(context).nav,
          ),
          BottomNavigationBarItem(
            label: S.of(context).project,
            icon: const Icon(Icons.eco_outlined),
            activeIcon: const Icon(Icons.eco),
            tooltip: S.of(context).project,
          ),
          BottomNavigationBarItem(
            label: S.of(context).mine,
            icon: const Icon(Icons.person_2_outlined),
            activeIcon: const Icon(Icons.person_2),
            tooltip: S.of(context).mine,
          ),
        ],
      ),
    );
  }
}
