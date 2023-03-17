//THE COUNTER INCREMENT AND DECREMENT PROGRAM

// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Counter(),
//         ),
//       ),
//     ),
//   );
// }

// class Counter extends StatefulWidget {
//   const Counter({super.key});

//   @override
//   State<Counter> createState() => _CounterState();
// }

// class _CounterState extends State<Counter> {
//   int _counter = 40;
//   void _increment() {
//     setState(() {
//       _counter--;
//     });
//   }

//   void _reset() {
//     setState(() {
//       int countNewValue = 40;
//       _counter = countNewValue;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text("Counter value: $_counter"),
//         const SizedBox(height: 20),
//         ElevatedButton(
//           onPressed: _increment,
//           child: const Text('Decrement'),
//         ),
//         const SizedBox(width: 15),
//         ElevatedButton(
//           style: ButtonStyle(
//             backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
//           ),
//           onPressed: _reset,
//           child: const Text('Reset'),
//         )
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Counter(),
        ),
      ),
    ),
  );
}

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({required this.count, super.key});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Text('Count: $count');
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: _increment,
          child: const Text('Increment'),
        ),
        ElevatedButton(
          onPressed: _reset,
          child: const Text('Reset'),
        ),
        const SizedBox(height: 10),
        CounterDisplay(count: _counter),
      ],
    );
  }
}
