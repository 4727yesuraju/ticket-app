import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/app_tickets_tab.dart';
import 'package:ticket_app/screens/search/widgets/find_tickets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
           const SizedBox(height:25),
           const AppTextIcon(icon:Icons.flight_takeoff_rounded, text: "Departure"),
           const SizedBox(height:20),
           const AppTextIcon(icon:Icons.flight_land_rounded, text: "Arrival"),
           const SizedBox(height:25),
           const FindTickets(),
           const SizedBox(height:40),
            AppDoubleText(
                  bigText: 'upcoming Flights',
                  smallText: 'View all',
                  func : ()=>Navigator.pushNamed(context,"/all_tickets"),
            ),
            const SizedBox(height:15),
            Row(
              children: [
                Container(
                  padding : const EdgeInsets.symmetric(horizontal:15, vertical:15),
                  width: size.width*.42,
                  height:390,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color:Colors.green.shade200,
                        blurRadius: 1,
                        spreadRadius: 1
                      )
                    ]
                  ),
                  child: Column(
                    children : [
                      Container(
                        height:190,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            fit:BoxFit.cover,
                            image: AssetImage(
                              AppMedia.planeSit
                            )
                          )
                        ),
                      ),
                      SizedBox(height:12),
                      Text(
                        "20% discount on the earlyl booking of this flight. Don't miss out",
                        style : AppStyles.headLineStyle2
                      )

                    ]
                  )
                ),
                Column(
                  children: [
                    Container(
                      width: size.width*.44, 
                      height: 195,
                      decoration: BoxDecoration(
                        color: const Color(0xFF3A8888),
                        borderRadius: BorderRadius.circular(18)
                      ),               )
                  ]
                ),
              ]
            )
        ]
      )
    );
  }
}