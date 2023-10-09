import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            titleSpacing: 0,
            actions: [
              const Icon(
                Icons.search,
              ),
              const Icon(Icons.menu),
              Container(
                margin: const EdgeInsets.only(right: 8),
                child: const Icon(Icons.add_alert),
              )
            ],
            centerTitle: true,
            leadingWidth: 200,
            leading: const Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Text(
                      "금호동3가",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
          ),
          body: SizedBox(
            height: 200,
            child: Row(
              children: [
                Flexible(flex: 1, child: Image.asset('umr.jpg')),
                const Flexible(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '우마루 UMR100 (건어물동생 우마루짱 인싸버전 포함)',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        Text('성동구'),
                        Text("210,000원"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Icon(Icons.favorite_outline), Text('4')],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
