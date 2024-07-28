
import 'package:flutter/material.dart';

import '../../../../core/constants/text_styles.dart';
import '../../../../core/core.dart';


class ProductTile extends StatefulWidget {
  const ProductTile({
    super.key,
    required this.screenHeight,
    required this.screenWeidth,
  });

  final double screenHeight;
  final double screenWeidth;

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  bool isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.screenHeight * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: Container(
              padding:const EdgeInsets.all(15),
              width:widget.screenWeidth ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: primaryColor,
                image:const DecorationImage(
                 image: AssetImage("assets/images/brown-jacket.jpg"),
                 fit: BoxFit.fill,
               ), 
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                            setState(() {
                              isFavorited = !isFavorited;
                            });
                          },
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: secondColor.withOpacity(0.8),
                      child: Icon(
                        isFavorited ? Icons.favorite : Icons.favorite_border,
                        color: primaryColor,),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
          flex: 2,
        child: Padding(
          padding:const EdgeInsets.only(left:8.0, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 const Text(
                    "Brown Jacket",
                    style: TextStyles.largeMedium,
                    softWrap: true,
                  ),
                  Row(
                    children: [
                     const Icon(Icons.star, color: Colors.yellow, size: 20),
                      Text("4.5",
                       style: TextStyles.smallMedium
                       .copyWith(color: Colors.black45),)
                    ],
                  )
                ],
              ),
             const SizedBox(height: 8,),
            const Text("\$ 83.97 ",
                style: TextStyles.xLargeBold)
            ],
          ),
        ),
      ),
           
        ],
      ),
    );
  }
}

