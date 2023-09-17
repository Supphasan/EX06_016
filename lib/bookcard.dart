import 'package:flutter/material.dart';
import 'package:flutter_application_8_9_66/book.dart';

class BookCard extends StatelessWidget {
  final Book book;
  final Function delete;
  const BookCard({super.key, required this.book, required this.delete});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenwidth,
      child: Card(
        elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 1.0, 
            child: Image.asset(
              book.cover,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              book.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(book.author),
          ),
          IconButton(
            onPressed: () {
              delete();
            },
            icon: const Icon(
              Icons.delete_outline,
              size: 24,
              color: Colors.blue,
            ),
          ),
        ],
      ),),
    );
  }
}
