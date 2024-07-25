import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/core/constants/text_styles.dart';

import '../../core/core.dart';



class CategoriesSction extends StatefulWidget {
  const CategoriesSction({super.key});

  @override
  State<CategoriesSction> createState() => _CategoriesSctionState();
}

class _CategoriesSctionState extends State<CategoriesSction> {
    int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return   SizedBox(
                height: screenHeight * 0.09,
                width:screenWidth ,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (ctx, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            _selectedIndex = index;
                           
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(
                              top: 10, bottom: 15, right: 10),
                          padding:const EdgeInsets.only(left: 20, right: 20,top: 10, bottom: 10),
                         
                          decoration: BoxDecoration(
                            color: _selectedIndex == index
                                ? primaryColor
                                : scaffoldColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color:Colors.black45 )
                          ),
                          child: Center(
                            child: 
                            //TO-DO:put category name from API here 
                            Text("All",
                            style:TextStyles.largeBold
                            .copyWith(
                             color:  _selectedIndex == index
                             ?Colors.white
                             :Colors.black
                             ),
                            softWrap: true,
                            textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      );
                    }),
              );
  }
}