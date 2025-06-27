import 'package:flutter/material.dart';
import 'package:peer_support_app/screens/support_detail_screen.dart';

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
          _buildCommunityCard(context, 'Machine Learning'),
          _buildCommunityCard(context, 'Virtual Reality'),
          _buildCommunityCard(context, 'Entrepreneurial Minds'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your future logic here
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
    );
  }

  Widget _buildCommunityCard(BuildContext context, String title) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SupportDetailScreen(communityName: title),
            ),
          );
        },
      ),
    );
  }
}
