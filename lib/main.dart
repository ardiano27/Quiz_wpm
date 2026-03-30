import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz WPA"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(10),
          mainAxisSpacing: 10,
          crossAxisSpacing: 20,
          children: List.generate(10, (index) {
            int row = index ~/ 2;
            int col = index % 2;
            String gambar = (row + col) % 2 == 0
                ? "https://picsum.photos/seed/picsum/200/300"
                : "https://picsum.photos/id/237/200/300";
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[300],
                image: DecorationImage(
                  image: NetworkImage(gambar),
                  fit: BoxFit.cover,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
