import 'package:movie_ui/controller/cart_controller.dart';
import 'package:movie_ui/models/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CartScreen extends StatelessWidget {
  final CartController controller = Get.find();
   CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.products.length,
          itemBuilder: (context, index) {
            return CartScreenCard(
              controller: controller,
              index: index,
              product: controller.products.keys.toList()[index],
              quantity: controller.products.values.toList()[index],
            );
          },
        );
      }),
    );
  }
}
 class CartScreenCard extends StatelessWidget {
   final cartController = Get.put(CartController());


   final CartController controller;
  final Product product;
  final int index;
  final int quantity;
    CartScreenCard({
      Key? key,
      required this.controller,
      required this.index,
      required this.product,
      required this.quantity}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Padding(padding: EdgeInsets.all(10),
     child: Row(
       children: [
         CircleAvatar(
           radius: 70,
           backgroundImage: NetworkImage(product.imageUrl),
         ),
         SizedBox(width: 10,),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
              Text(product.name,style: TextStyle(fontSize: 20),),
              Text('Quantity: $quantity',style: TextStyle(fontSize: 20),),
              Text('Price: \$${product.price}',style: TextStyle(fontSize: 20),),
              SizedBox(height: 10,),

            ],
         ),
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
       ],
     ),
     );
   }
 }
