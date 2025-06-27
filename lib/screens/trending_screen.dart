import 'package:flutter/material.dart';

class TrendingScreen extends StatelessWidget {
  const TrendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trending')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Trending Posts'),
            const SizedBox(height: 20),

            // ✅ Test button to go to /support route
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/support');
              },
              child: const Text('Go to Support Community'),
            ),
          ],
        ),
      ),
    );
  }
}
