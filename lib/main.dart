import 'package:flutter/material.dart';

void main() {
  //runApp실행되면 애 가 그림 그리는 메서드
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //여기 생성자 자리 중괄호로 선택적 매개변수인데 지금은 지우자  const 오류나는데 지금 모르는 코드는 지우자!
  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Woman", style: TextStyle(fontSize: 16)),
                  Text("Kids", style: TextStyle(fontSize: 16)),
                  Text("Shoes", style: TextStyle(fontSize: 16)),
                  Text("Bag", style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            Expanded(
              child: Image.asset(
                "assets/bag.jpeg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 2),
            Expanded(
              child: Image.asset(
                "assets/cloth.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
