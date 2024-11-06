import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin:const  EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(5.0),
      width: size.width*0.6,
      height: 300,
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(19),
              image: const DecorationImage(
                fit:BoxFit.cover,
                image: AssetImage(
                  AppMedia.hotelRoom
                )
              )
            )
          ),
          const SizedBox(height:8),
          Padding(
            padding: const EdgeInsets.only(left:15),
            child: Text(
              "Open space",
              style: AppStyles.headLineStyle1.copyWith(color: AppStyles.kakiColor)
            ),
          ),
          const SizedBox(height:5),
          Padding(
            padding: const EdgeInsets.only(left:15),
            child: Text(
              "London",
              style: AppStyles.headLineStyle3.copyWith(color: Colors.white)
            ),
          ),
          const SizedBox(height:5),
          Padding(
            padding: const EdgeInsets.only(left:15),
            child: Text(
              "\$25/night",
              style: AppStyles.headLineStyle2.copyWith(color: AppStyles.kakiColor)
            ),
          ),
        ]
      )
    );
  }
}