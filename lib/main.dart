import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyButton(),
        ),
      ),
    ),
  );
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('MyButton was tapped!');
      },
      child: Column(
        children: [
          const SizedBox(
            height: 170.0,
          ),
          Container(
            height: 60.0,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(horizontal: 40.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your name',
              ),
            ),
          ),
          Container(
            height: 60.0,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(horizontal: 40.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your email',
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            height: 50.0,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(horizontal: 40.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: const Color.fromARGB(255, 0, 192, 106),
            ),
            child: const Center(
              child: Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
