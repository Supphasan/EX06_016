import 'package:flutter/material.dart';
import 'package:flutter_application_8_9_66/bookcard.dart';
import 'book.dart';

class listdata extends StatefulWidget {
  const listdata({super.key});

  @override
  State<listdata> createState() => _listdataState();
}

class _listdataState extends State<listdata> {

   List<Book> books = [
    Book(
        name: 'Flutter is easy',
        author: 'Pattaraporn',
        cover:
            'assets/images/python.jpg'),
            
    Book(
      author: 'Micheal',
      name: 'HTML and CSS',
      cover:
          'assets/images/python.jpg'),
    Book(
      name: 'Data Science',
      author: 'Somchai',
      cover:
          'assets/images/python.jpg'),
    Book(
      name: 'React Native',
      author: 'Peter',
      cover:
          'assets/images/python.jpg'),
  ];


  // List<Book> books = [
  //   Book(name: 'A', author: 'Aant'),
  //   Book(name: 'B', author: 'Bbrid'),
  //   Book(name: 'C', author: 'Ccat'),
  //   Book(name: 'D', author: 'DDoggy'),
  // ];

  // List<String> books = [
  //   'Flutter is easy',
  //   'HTML and CSS',
  //   'Data Science',
  //   'No am lie'
  //   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Data'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          mainAxisSpacing: 16.0, 
          crossAxisSpacing: 16.0, 
        ),
        itemCount: books.length, 
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 4.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.asset(
                    books[index].cover,
                    // fit: BoxFit.cover,
                  ),
                  ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    books[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Author: ${books[index].author}'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
