import 'package:flutter/material.dart';

class SupportCommunityScreen extends StatelessWidget {
  const SupportCommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: const Text(
          'Support Community',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            CommunityCard(
              title: 'Machine Learning',
              description: 'Join discussions and projects on AI & data science.',
            ),
            CommunityCard(
              title: 'Virtual Reality',
              description: 'Explore VR tools, games, and immersive education.',
            ),
            CommunityCard(
              title: 'Entrepreneurial Minds',
              description: 'Network with startup founders and idea builders.',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add community logic or navigation here
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.teal,
        tooltip: 'Create New Community',
      ),
    );
  }
}

class CommunityCard extends StatelessWidget {
  final String title;
  final String description;

  const CommunityCard({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        title: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            description,
            style: const TextStyle(fontSize: 14, color: Colors.black54),
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 18),
        onTap: () {
          // Navigate to community details
        },
      ),
    );
  }
}
