import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/screens/search/widgets/app_tickets_tab.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height:40),
          Text(
            "What are\nyou looking for?", 
             style: AppStyles.headLineStyle1.copyWith(fontSize: 24)
           ),
           const SizedBox(height:20),
           const AppTicketsTab(),
        ]
      )
    );
  }
}