import 'package:flutter/material.dart';

void main() {
  runApp(
    const IDCard(),
  );
}

class IDCard extends StatelessWidget {
  const IDCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: 'ID Card', home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text(
          'ID Card',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'san-serif',
            color: Color.fromARGB(255, 224, 208, 28),
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('images/Reza.jpg'),
            ),
            const Text(
              'Reza Merzaie',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.cyan,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'serif'),
            ),
            Text('Full Stack Devoloper',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade900,
                  fontFamily: 'sans-serif',
                )),
            Card(
              color: Colors.white,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                child: Row(
                  children: [
                    Icon(
                      Icons.call,
                      color: const Color(0xffdc13b0),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Text('+93 767462053')
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Color(0xffdc13b0),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Text('ghrezam97@gmail.com')
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                child: Row(
                  children: [
                    Icon(
                      Icons.account_circle,
                      color: const Color(0xffdc13b0),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Text('Nangarhar, Afghanistan')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
