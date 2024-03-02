import 'package:get/get.dart';
import 'package:service/Models/checkout_model.dart';

class CheckoutController extends GetxController{


   List<CheckoutModel> itemsList=[

     CheckoutModel("Assets/images/picture1.png", "800 - 1,200 SFT", "5000", 1),
     CheckoutModel("Assets/images/picture2.png", "800 - 1,200 SFT", "5000", 1),
     CheckoutModel("Assets/images/picture1.png", "800 - 1,200 SFT", "5000", 1),
     CheckoutModel("Assets/images/picture2.png", "800 - 1,200 SFT", "5000", 1),
     CheckoutModel("Assets/images/picture1.png", "800 - 1,200 SFT", "5000", 1),
     CheckoutModel("Assets/images/picture2.png", "800 - 1,200 SFT", "5000", 1),
     CheckoutModel("Assets/images/picture1.png", "800 - 1,200 SFT", "5000", 1),
     CheckoutModel("Assets/images/picture2.png", "800 - 1,200 SFT", "5000", 1),

   ];

  void incrementQuantity(index){

    itemsList[index].quantity++;
    update();

  }

  void decrementQuantity(index){
    itemsList[index].quantity--;
    update();
  }



}