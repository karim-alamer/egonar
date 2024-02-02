import 'package:flutter/material.dart';

class PodcastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Podcast Programs'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildHeader(title: 'Top Picks', description: 'Must-listen episodes'),
            SizedBox(height: 16),
            buildPodcastList(),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({required String title, required String description}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          description,
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget buildPodcastList() {
    return Column(
      children: List.generate(
        5, // Replace with the number of podcast programs you want to display
        (index) {
          return PodcastCard(
            title: 'Podcast Title $index',
            description: 'Description of Podcast $index',
            imageUrl: 'https://placekitten.com/200/200', // Replace with actual image URLs
          );
        },
      ),
    );
  }
}

class PodcastCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const PodcastCard({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            imageUrl,
            height: 150,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}