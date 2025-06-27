import 'package:flutter/material.dart';

class SupportCommunityScreen extends StatelessWidget {
  const SupportCommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Support Community'),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: [
          _buildCommunityCard('Machine Learning'),
          _buildCommunityCard('Virtual Reality'),
          _buildCommunityCard('Entrepreneurial Minds'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
    );
  }

  Widget _buildCommunityCard(String title) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {},
      ),
    );
  }
}
