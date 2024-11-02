import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_file_fourth.dart';
import 'package:ticket_app/base/widgets/text_file_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; 
    return SizedBox(
      width : size.width * 0.85,
      height : 179,
      child : Container( 
        margin : const  EdgeInsets.only(right : 16),
        child : Column(
          children: [
            Container(
                padding : const EdgeInsets.all(16),
                decoration : BoxDecoration(
                  color : AppStyles.ticketBlue,
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21))
                ),
                child : Column(
                  children : [
                    Row(
                      children : [
                          const TextFileThird(text : "NYC"),
                          Expanded(child : Container()),
                          const BigDot(),
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
                        const TextFileThird(text : "LDN"),
                      ]
                    ),
                    const SizedBox(height : 3),
                    Row(
                      children : [
                        const SizedBox(
                          width : 100,
                          child: TextFileFourth(text : "New York"),
                        ),
                          Expanded(child : Container()),
                          const TextFileFourth(text : "8H 30M"),
                          Expanded(child : Container()),
                        const SizedBox(
                          width : 100,
                          child: TextFileFourth(text : "London",align : TextAlign.end),
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
                child : const Column(
                  children : [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children : [
                         Column(
                           children : [
                              TextFileThird(text : "1 May"),
                              SizedBox(height : 5),
                              TextFileThird(text : "DATE")
                           ]
                         ),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                           children : [
                              TextFileThird(text : "1 May"),
                              SizedBox(height : 5),
                              TextFileThird(text : "DATE")
                           ]
                         ),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                           children : [
                              TextFileThird(text : "1 May"),
                              SizedBox(height : 5),
                              TextFileThird(text : "DATE")
                           ]
                         ),
                         /*  Expanded(child : Container()),
                          Text(
                          "1 MAY",
                          style : AppStyles.headLineStyle3.copyWith(color : Colors.white)
                          ),
                          Expanded(child : Container()),
                        Text(
                          "23",
                          style : AppStyles.headLineStyle3.copyWith(color : Colors.white)
                          ), */
                      ] 
                    ),
                    /* const SizedBox(height : 3), */
                    /* Row(
                      children : [
                        Text(
                          "Date",
                          style : AppStyles.headLineStyle3.copyWith(color : Colors.white)
                          ),
                          Expanded(child : Container()),
                          Text(
                          "Departure time",
                          style : AppStyles.headLineStyle3.copyWith(color : Colors.white)
                          ),
                          Expanded(child : Container()),
                        Text(
                          "Number",
                          style : AppStyles.headLineStyle3.copyWith(color : Colors.white)
                          ),
                      ]
                    ) */
                  ]
              )
            )
          ]
        )
      )
    );
  }
}