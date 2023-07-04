
import 'package:movie_ui/models/products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  //add a dict to store the products in the cart
var _Products = {}.obs;

void addProductToCart(Product products){
  if (_Products.containsKey(products)){
    _Products[products] += 1;
  }
  else{
    _Products[products] = 1;

  }
  Get.snackbar('Product Added',
      'You have added ${products.name} to your cart',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.transparent,
      duration: const Duration(seconds: 2),);

}

void removeProductFromCart(Product products){
  if (_Products.containsKey(products) && _Products[products] == 1){
    _Products.removeWhere((key, value) => key == products);
  } else {
    _Products[products] -= 1;
  }

  Get.snackbar('Product Removed',
      'You have removed ${products.name} from your cart',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.transparent,
      duration: const Duration(seconds: 2),);

}

get products => _Products;

}
