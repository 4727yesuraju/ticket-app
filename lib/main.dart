import 'package:flutter/material.dart';
import 'package:ticket_app/base/button_nav_bar.dart';

void main() { //main entry point
  runApp(const MyApp()); //framework entry point
}

//every class is a widget

class MyApp extends StatelessWidget { //stateless means no activity or dead
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {  //when you inherit any class must have a build method
    return const MaterialApp(
         debugShowCheckedModeBanner: false,
         home:ButtonNavBar(),
      );
  }
}

// class MyHomePage extends StatefulWidget { //stateful means having a activities
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   void _decrementCounter(){
//     setState(() {
//        _counter--;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//    return Scaffold(
//       appBar: AppBar(
//             backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//             title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(                                                                                                                               mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'counter:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children : [
    //         FloatingActionButton(
    //         onPressed: _decrementCounter,
    //         tooltip: 'decrement',
    //         child: const Icon(Icons.remove),
    //       ),   
    //       FloatingActionButton(
    //         onPressed: _incrementCounter,
    //         tooltip: 'Increment',
    //         child: const Icon(Icons.add),
    //       ),
//         ]
//       )  
//       );
//   }
// }
