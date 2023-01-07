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
      debugShowCheckedModeBanner: false,
      title: 'Wisata Bandung',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(fontFamily: 'Oxygen');

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
                'https://idetrips.com/wp-content/uploads/2022/04/hobbiton-farmhouse-lembang.jpg'),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                'Farm Hourse Lembang',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Oxygen'),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.calendar_today),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'Open Everyday',
                        style: textStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.access_time_sharp),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        '09:00-21:00',
                        style: textStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.money),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'Rp 30.000',
                        style: textStyle,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Taman hiburan dengan bangunan bergaya Eropa, kostum Belanda untuk disewa, kebun binatang mini & resto trendi. Taman hiburan dengan bangunan bergaya Eropa, kostum Belanda untuk disewa, kebun binatang mini & resto trendi.',
                textAlign: TextAlign.center,
                style: textStyle,
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      child: Image.asset('assets/images/farmhouse2.jpeg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      child: Image.asset('assets/images/farmhouse1.jpeg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        child: Image.asset('assets/images/farmhouse.jpeg')),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
