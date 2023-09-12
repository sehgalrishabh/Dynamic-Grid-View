import 'package:dynamic_grid_view/dynamic_grid_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Dynamic GridView', home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            DynamicGridView(
              width: width,
              horizontalPadding: 16,
              dataSet: List<int>.filled(16, 0),
              child: (context, index) {
                return SizedBox(
                  child: Card(
                    clipBehavior: Clip.hardEdge,
                    child: Column(
                      children: [
                        Expanded(
                            child: Image.network(
                                "https://picsum.photos/200?${DateTime.now().millisecondsSinceEpoch.toString()}")),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.0),
                          child: Text(
                            "Lorem Ipsum is a dummy text, lorem ipsum",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
