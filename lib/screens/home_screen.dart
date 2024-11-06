import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/screens/widgets/hotel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body : ListView(
        children : [
          const SizedBox(height : 40),
          Container(
            padding : const EdgeInsets.symmetric(horizontal : 20  ),
            child : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children : [
                Row(
                  mainAxisAlignment : MainAxisAlignment.spaceBetween,
                  children : [
                      Column(
                        crossAxisAlignment : CrossAxisAlignment.start,
                        children : [
                            Text(
                              "Good morning",
                              style : AppStyles.headLineStyle3,
                            ),
                            const SizedBox(
                              height : 5
                            ),
                            Text(
                               "Book Tickets",
                                style : AppStyles.headLineStyle1,
                            )
                        ]
                      ),
                      Container (
                        width :50,
                        height : 50,
                        decoration : BoxDecoration(  
                          borderRadius : BorderRadius.circular(10),
                          image : const DecorationImage(
                            image: AssetImage(AppMedia.logo)
                          )
                        )
                      ),
                  ]
                ),
                const SizedBox(height : 25),
                Container(
                  padding : const EdgeInsets.symmetric(horizontal : 12, vertical : 12),
                  decoration : BoxDecoration(
                          color : const Color(0xFFF4F6FD),
                          borderRadius : BorderRadius.circular(10),
                      ),
                  child : const Row(
                  children : [
                      Icon(FluentSystemIcons.ic_fluent_search_regular,color : Color(0xFFBFC205)),
                      Text("search")
                  ]
                )
                ),
                const SizedBox(height : 40),
                AppDoubleText(
                  bigText: 'upcoming Flights',
                  smallText: 'View all',
                  func : ()=>Navigator.pushNamed(context,"/all_tickets"),
                ),
                const SizedBox(height : 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList.map((singleTicket)=>TicketView(ticket : singleTicket)).toList()
                  )
                ),
                const SizedBox(height : 40),
                AppDoubleText(
                  bigText: 'Hotels',
                  smallText: 'View all',
                  func : ()=>{
                    print("hotels here")
                  },
                ),
                const SizedBox(height:20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const Hotel(),
                      const Hotel(),
                      
                    ]
                  ),
                )
              ]
          )
          ),

        ]
      )
    );
  }
}