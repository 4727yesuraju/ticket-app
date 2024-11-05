import 'package:flutter/material.dart';
import 'package:ticket_app/base/button_nav_bar.dart';
import 'package:ticket_app/screens/all_tickets.dart';

void main() { //main entry point
  runApp(const MyApp()); //framework entry point
}



class MyApp extends StatelessWidget { //stateless means no activity or dead
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {  //when you inherit any class must have a build method
    return MaterialApp(
         debugShowCheckedModeBanner: false,
         routes : {
            "/" : (context)=>const ButtonNavBar(),
            "/all_tickets" : (context)=>const AllTickets()
         }
      );
  }
}

