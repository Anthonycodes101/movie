import 'package:movie_ui/constants/color.dart';
import 'package:movie_ui/controller/cart_controller.dart';
import 'package:movie_ui/models/products.dart';
import 'package:movie_ui/models/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class DrinkProducts extends StatelessWidget {


  DrinkProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Flexible(
            child: GridView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                childAspectRatio: 0.55,
                mainAxisSpacing: 0,
              ),
              itemCount: products.length,
              itemBuilder: (context,index){
                SizedBox(
                  height: 500,
                );
                return productcard( index: index,);
              },
            ),
          ),
        ),
      ),
    );
  }
}

class productcard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;
  productcard({
    Key? key,
    required this.index
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 100,
          backgroundImage: NetworkImage(products[index].imageUrl),

        ),
        SizedBox(height: 12,),

        Text(products[index].name,
          style: TextStyle(
            color: isDarkMode ? jWhiteColor : jSecondaryColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        Text('\$${products[index].price}',
          style: TextStyle(
            color: isDarkMode ? jWhiteColor : jSecondaryColor,
            fontSize: 12,
          ),
        ),
        Visibility(
          visible: false,
          child: ElevatedButton(
            onPressed: () {
              cartController.addProductToCart(products[index]);
            },
            style: ElevatedButton.styleFrom(
              primary: isDarkMode ? jWhiteColor : jSecondaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child:
            Text('Add to Cart',
              style: TextStyle(
                color: isDarkMode ? jSecondaryColor : jSecondaryColor,
                fontSize: 12,
              ),
            ),
          ),
        ),
        Visibility(child:
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    cartController.addProductToCart(products[index]);
                  },
                  icon: Icon(Icons.add),
                ),
                Obx(() {
                  return Text('${cartController.products[products[index]]}');
                }),
                IconButton(
                  onPressed: () {
                    cartController.removeProductFromCart(products[index]);
                  },
                  icon: Icon(Icons.remove),
                ),
              ],
            ),
        ),



        SizedBox(height: 5,),

      ],
    );
  }
}
