
import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/features/wish_list/models/product.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/text_styles.dart';

// import '../../../../core/core.dart';


class ProductTile extends StatefulWidget {
  const ProductTile({
    super.key,
    required this.screenHeight,
    required this.product,
    required this.screenWeidth,
  });

  final double screenHeight;
  final double screenWeidth;
  final Product product;

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
                image: DecorationImage(
                 image: NetworkImage(widget.product.images![0]),
                 fit: BoxFit.cover,
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
          Flexible(
          flex: 2,
        child: Padding(
          padding:const EdgeInsets.only(left:8.0, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 20, maxWidth: 120),
                    child: Text(
                      widget.product.title??"",
                      style: TextStyles.largeMedium,
                      softWrap: true,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
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
             Text("\$ ${widget.product.price} ",
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

