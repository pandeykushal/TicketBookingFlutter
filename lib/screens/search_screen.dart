import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/utils/app_layout.dart';
import 'package:ticket_booking/screens/utils/app_style.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size= AppLayout.getSize(context);
    return  Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getScreenwidth(20),vertical: AppLayout.getHeight(20)),
        children: [
           Gap(AppLayout.getHeight(40)),
        
        
           Text(' what are \n you lloking for',style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getScreenwidth(35)),),
            Gap(AppLayout.getHeight(40)),
            Container(
              child: Row(
                children: [
                  Container(

                    width: size.width*.44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                     decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left:Radius.circular(AppLayout.getHeight(50))),
                color: Colors .white
                     ),
                     child: Center(child: Text('Airline Ticket')),




                  )
                ],

              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50),),
                color: const Color(0xFFF4F6FD)

              ),
            ),


        ],

      ),
    );
    
  }
}