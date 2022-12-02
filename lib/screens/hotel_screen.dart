import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/utils/app_layout.dart';
import 'package:ticket_booking/screens/utils/app_style.dart';

class HotelScreen extends StatelessWidget {
  final Map< String ,dynamic>hotel;
  const HotelScreen({Key? key, required this.hotel}): super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size =AppLayout.getSize(context);
        return Container(
          width: Size.width*0.6,
          height: AppLayout.getHeight(350),
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 17),
          margin: const EdgeInsets.only(right: 17,top: 5),
          decoration: BoxDecoration(
            color: Styles.primaryColor,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 10,



              ),
            ]

          ),
          child: Column(children: [
            Container(
              height: AppLayout.getHeight(180),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
               image:DecorationImage(
                fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/one.png"

                  )),
              ),

            ),
            const Gap(10),
            Text(
              hotel['places'],
            style: Styles.headLineStyle2.copyWith(color: Styles.hotelcolor),
            ),

            const Gap(5),
             Text(
              hotel['destiantion'],
            style: Styles.headLineStyle3.copyWith(color:Colors.white),
            ),
            const Gap(8),
             Text(
              '\$${hotel['prise']}/night',
            style: Styles.headLineStyle3.copyWith(color:Styles.hotelcolor),
            ),


          ]
          ),
        );
        
  }
}