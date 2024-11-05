import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_file_fourth.dart';
import 'package:ticket_app/base/widgets/text_file_third.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> ticket;
  final bool wholeScreen;
  const TicketView({super.key,required this.ticket,this.wholeScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; 
    return SizedBox(
      width : size.width * 0.85,
      height : 179,
      child : Container( 
        margin :EdgeInsets.only(right : wholeScreen == true ? 0 : 16),
        child : Column(
          children: [
            Container(
                padding :  const EdgeInsets.all(16),
                decoration : BoxDecoration(
                  color : AppStyles.ticketBlue,
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21))
                ),
                child : Column(
                  //ticket top
                  children : [
                    Row(
                      children : [
                          TextFileThird(text : ticket['from']['code']),
                          Expanded(child : Container()),
                          const BigDot(),
                          //plane icons
                          Expanded(child : Stack(
                            children: [
                              const SizedBox(
                                height : 24,
                                child:AppLayoutbuilderWidget(randomDivider: 6,),
                              ),
                              Center(child : Transform.rotate(angle : 1.57,
                              child : const Icon(Icons.local_airport_rounded,color : Colors.white)),)
              
                            ],
                          )),
                          const BigDot(),
                          Expanded(child : Container()),
                          TextFileThird(text : ticket['to']['code']),
                      ]
                    ),
                    const SizedBox(height : 3),
                    Row(
                      children : [
                        SizedBox(
                          width : 100,
                          child: TextFileFourth(text : ticket['from']['name']),
                        ),
                          Expanded(child : Container()),
                          TextFileFourth(text : ticket['flying_time']),
                          Expanded(child : Container()),
                        SizedBox(
                          width : 100,
                          child: TextFileFourth(text : ticket['to']['name'],align : TextAlign.end),
                        ),
                      ]
                    )
                  ]
              )
            ),
            //circles and dots
            Container(
              color : AppStyles.ticketOrange,
              child : const Row(
                children: [
                   BigCircle(isRight : false),
                   Expanded(
                    child:AppLayoutbuilderWidget(randomDivider: 16 ,width : 6),
                   ),
                   BigCircle(isRight : true),
                ],
              )
            ),
            Container(
                padding : const EdgeInsets.all(16),
                decoration :  BoxDecoration(
                  color : AppStyles.ticketOrange,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21),bottomRight: Radius.circular(21))
                ),

                //bottom ticket
                child : Column(
                  children : [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children : [
                         AppColumnTextLayout(topText: ticket['date'], bottomText: "DATE",alignment: CrossAxisAlignment.start),
                         AppColumnTextLayout(topText: ticket['departure_time'], bottomText: "Departure time",alignment: CrossAxisAlignment.center),
                         AppColumnTextLayout(topText: ticket['number'].toString(), bottomText: "Number",alignment: CrossAxisAlignment.end)
                      ] 
                    ),
                  ]
              )
            )
          ]
        )
      )
    );
  }
}