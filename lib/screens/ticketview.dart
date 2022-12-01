 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/utils/app_layout.dart';
import 'package:ticket_booking/screens/utils/app_style.dart';
import 'package:ticket_booking/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return SizedBox(
      width:size.width ,
      height: 200,
    
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            /*
            showing blue part of the ticket 
            */



          Container(
            decoration: const BoxDecoration(
              color: Color( 0xFF526799),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(21),
              topRight: Radius.circular(21),
              ),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Row(
                children: [
                  Text('NEP',style: Styles.headLineStyle3 .copyWith(color: Colors.white),),
                 Expanded(child: Container()),

                 ThickContainer(),
                 Expanded(
                  child:Stack (
                    children: [ SizedBox(
                    height: 24,
                    child:LayoutBuilder(
                  
                      builder: (BuildContext context , BoxConstraints constraints ) {
                        print('the width is ${constraints.constrainWidth()}');
                        return  Flex(direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                        width: 3,height: 1,child:DecoratedBox(decoration: BoxDecoration(
                          color: Colors.white
                        )) ,
                  
                      ),
                        
                        ),
                      
                      ); 
                  
                       },
                      
                    ) ,
                    
                                   ),
                                    Center(child: Transform.rotate(angle: 1.5, child:Icon(Icons.local_airport_rounded , color:Colors.white),)), 
                                   ],
                   
                  )),

               


                 ThickContainer(),
                 Expanded(child: Container()),
                  Text('USA',style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                ],
              ),
              const Gap(3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,child: Text('Nepal',style: Styles.headLineStyle4.copyWith(color:Colors.white)),
                  ),
                  Text('12M 30M',style:Styles.headLineStyle4.copyWith(color: Colors.white) ,),
                  SizedBox(
                    width: 100,child: Text('United states ', textAlign: TextAlign.end, style: Styles.headLineStyle4.copyWith(color:Colors.white)),
                  ),


                ],
              ),
            
            
            
            ]),
          ),


          /*
          showing orange part of the ticket        
           */

          Container(
            color: Styles.orangeColor,
            child: Row(children:  [
              SizedBox(
                height: 20,
                width: 10,
                child: DecoratedBox(
                  decoration:BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )
                ) ,
                ),
              ),

              Expanded(
                child: LayoutBuilder(builder: (BuildContext , BoxConstraints ) { 
                  return Flex(
                    direction:Axis.horizontal,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     mainAxisSize: MainAxisSize.max,
                     children: List.generate(5, (index) => 
                     SizedBox(
                      width:5 ,height: 1,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white

                        ),
                      ),

                     ),
                     ),
                     

                     
                     );
                 },)
                       
              ),


                SizedBox(
                height: 20,
                width: 10,
                child: DecoratedBox(
                  decoration:BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),

                  )

                ) ,

                ),

              ),
            ]),

          ),


        ],),
      ),
    );
  }
}