
import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/core/constants/text_styles.dart';
import 'package:trailing_e_commerce_app/core/core.dart';


// ignore: must_be_immutable
class ProductShowSection extends StatelessWidget {
const  ProductShowSection({
    super.key,
   
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWeidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenHeight,
      child: GridView.builder(
        primary: false,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 
               (itemWidth / itemHeight * 1.2),
              // : (itemWidth / itemHeight * 1),
          // controller: ScrollController(keepScrollOffset: false),
          // shrinkWrap: true,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) {
      
          return SizedBox(
            height: screenHeight * 0.2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    padding:const EdgeInsets.all(15),
                    width:screenWeidth ,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: primaryColor,
                      image:const DecorationImage(
                       image: AssetImage("assets/images/brown-jacket.webp"),
                       fit: BoxFit.cover,
                     ), 
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: secondColor.withOpacity(0.8),
                          child:const Icon(Icons.favorite_border, color: primaryColor,),
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
            // Expanded(
            //     flex: 1,
            //     child: Text("83 \$",
            //         style: TextStyles.xLargeBold))
              ],
            ),
          );
        },
      ),
    );
  }
}

// class ContanerShape extends StatelessWidget {
//   const ContanerShape({
//     super.key,
//     required this.productProvider,
//     required this.screenHeight,
//     required this.screenWeidth,
//     required this.product,
//     required this.isDown,
//   });

//   final ProdictViewModel productProvider;
//   final double screenHeight;
//   final double screenWeidth;
//   final Product product;
//   final bool isDown;
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.pushNamed(
//           context,
//           '/detial_product',
//           arguments: {'argument': product},
//         );
//       },
//       child: SizedBox(
//         height: screenHeight * 0.2,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Expanded(
//               flex: 10,
//               child: CustomDownContainer(
//                 width: screenWeidth,
//                 height: screenHeight * 5,
//                 image: product.image,
//                 borderRadius:const BorderRadius.only(
//                     bottomLeft: Radius.circular(20),
//                     bottomRight: Radius.circular(20)),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     IconButton(
//                         onPressed: () {},
//                         icon: const Icon(
//                           IconlyLight.heart,
//                           color: primaryColor,
//                         ))
//                   ],
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Text(
//                 product.title ?? "",
//                 style: Theme.of(context).textTheme.titleSmall,
//                 softWrap: true,
//               ),
//             ),
//             Expanded(
//                 flex: 2,
//                 child: Text("${product.price} \$",
//                     style: Theme.of(context).textTheme.titleSmall))
//           ],
//         ),
//       ),
//     );
//   }
// }
