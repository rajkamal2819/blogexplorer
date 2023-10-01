import 'package:blogexplorer/models/model.dart';
import 'package:flutter/material.dart';

class DetailsBlogScreen extends StatelessWidget {
  final Blog list;
  final int index;

  const DetailsBlogScreen(this.list, this.index, {super.key});

  // Define properties to receive blog data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blog Detail"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20.0, // Add some spacing between the title and image
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0), // Add side margins to the text
                child: Text(
                  list.title!,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ), // Display the blog title with larger text and bold, centered horizontally
              const SizedBox(
                height: 10.0, // Add some spacing between the title and image
              ),
              SizedBox(
                width: 300, // Adjust the width of the image as needed
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Hero(
                    tag: 'image_animation$index',
                    child: Image.network(
                      list.imageUrl!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ), // Display the blog image with rounded corners and proper aspect ratio, centered horizontally
              const SizedBox(
                height:
                    10.0, // Add some spacing between the image and description
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 16.0), // Add side margins to the description
                child: Text(
                  "In the small town of Hawkins, Indiana, strange occurrences unfold when a young "
                  "boy mysteriously disappears. His friends embark on a quest to find him and "
                  "uncover a series of supernatural events, government conspiracies, and a"
                  " parallel dimension known as the Upside Down. "
                  "Stranger Things is a nostalgic journey back to the '80s filled"
                  " with thrilling mysteries and a group of endearing kids.\n\n"
                  "Stranger Things is a nostalgic journey back to the '80s filled"
                  " with thrilling mysteries and a group of endearing kids.\n\n"
                  "Explore the life of Queen Elizabeth II as The Crown takes"
                  " you through the reign of the British monarch. This critically "
                  "acclaimed series delves into the political and personal challenges"
                  " faced by the Queen and her family as they navigate the turbulent waters of the 20th century. "
                  "With stunning performances and exquisite production, it's a royal drama of epic proportions.",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black87,
                  ),
                ),
              ), // Display the description text below the image
              const SizedBox(
                height:
                    20.0, // Add some spacing between the description and the end of the screen
              ),
            ],
          ),
        ),
      ),
    );
  }
}
