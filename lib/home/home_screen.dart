import 'package:flutter/material.dart';
import 'package:flutter_go1/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bodies = [
      const Center(
        child: Text('Hello From Home Screen'),
      ),
      const Center(
        child: Text('Hello From Favorite Screen'),
      ),
      const Center(
        child: Text('Hello From Settings Screen'),
      ),
    ];

    final indexBottomNavbar = ref.watch(indexBottomNavbarProvider);
    final username = ref.watch(usernameProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Salam, $username"),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Navigate to settings
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Navigate to profile
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Home'),
              onTap: () => Navigator.of(context).pop(),
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Navigate to settings
              },
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                // Navigate to profile
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottomNavbar,
        onTap: (value) {
          ref.read(indexBottomNavbarProvider.notifier).update((state) => value);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
      body: bodies[indexBottomNavbar],
    );
  }
}