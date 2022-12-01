import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/ticketview.dart';
import 'package:ticket_booking/screens/utils/app_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Styles.bgColor,
    body: ListView(
      children: [
        const Gap(40),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children:  [
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                       Text(
                    'Goodmorning',style: Styles.headLineStyle3,
                  ),
                 const Gap(5),


                  Text(
                    'Book Tickets',style: Styles.headLineStyle1,
                  ),
                    ],
                  ),
                  
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                      fit:BoxFit.cover,

                      image: AssetImage(
                      "assets/images/plane.png"
                      )
                      )
                    )
                  )
                ],

              ),
               const Gap(25),
               Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF4F6FD)
                ),
                padding: EdgeInsets.symmetric(horizontal: 12 , vertical: 12),
                 child: Row(
              children: [
                  const Icon(FluentSystemIcons.ic_fluent_search_regular,color:Color(0xFFBFC205)),
                  Text('search',
                  style: Styles.headLineStyle4,
                  )
              ],
            ),
               ),
               const Gap(40),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Upcomming Fligts',style: Styles.headLineStyle2,),
                  
                  InkWell (
                    onTap: (){
                      print('you are tapped');
                    },
                    child: Text('View all',
                    style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                    ),
                    ),
                  
                ],
               ),
           
            ],
          ),
        ),
        const Gap(16),

        
        TicketView(),
      
      ],
      
    ),
      
    );
  }
}