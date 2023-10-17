import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handilng_money_app/bloc/itemStates.dart';
import 'package:handilng_money_app/utils/appImages.dart';

class itemCubit extends Cubit<itemStates> {

   itemCubit() : super(intiitemState());
   static itemCubit get(context) => BlocProvider.of(context);
   int CurrentIndex = 0 ;
   var data = <String , dynamic >{
      "itemData" :[
         {
            "Category" : "Groceries",
            "urlImage": appImages.groceries,
            "money_budget":250,
            "transactions" : [
               {
                  "product" : "fvvv",
                  "value" : 9.99,
               },
               {
                  "product" : "A7a",
                  "value" : 9.99,
               },
               {
                  "product" : "tesco",
                  "value" : 9.99,
               },
               {
                  "product" : "tesco",
                  "value" : 9.99,
               }


            ]
         }, {
            "Category" : " Groceries",
            "money_budget":400,
            "urlImage": appImages.groceries,
            "money_left" : 21,
            "transactions" : [
               {
                  "product" : "tesco",
                  "value" : 9.99,
               },
               {
                  "product" : "tesco",
                  "value" : 9.99,
               },
               {
                  "product" : "tesco",
                  "value" : 9.99,
               },
               {
                  "product" : "tesco",
                  "value" : 9.99,
               }


            ]
         }, {
            "Category" :  "Groceries",
            "money_budget":400,
            "urlImage": appImages.groceries,
            "transactions" : [
               {
                  "product" : "tesco",
                  "value" : 9.99,
               },
               {
                  "product" : "tesco",
                  "value" : 9.99,
               },
               {
                  "product" : "tesco",
                  "value" : 9.99,
               },
               {
                  "product" : "tesco",
                  "value" : 9.99,
               }


            ]
         }, {
            "Category" :  "Groceries",
            "urlImage": appImages.groceries,
            "money_budget":400,
            "money_left" : 21,
            "transactions" : [
               {
                  "product" : "tesco",
                  "value" : 9.99,
               },
               {
                  "product" : "tesco",
                  "value" : 9.99,
               },
               {
                  "product" : "tesco",
                  "value" : 9.99,
               },
               {
                  "product" : "tesco",
                  "value" : 9.99,
               }


            ]
         }, {
            "Category" : "Groceries",
            "urlImage": appImages.groceries,
            "money_budget":400,
            "transactions" : [
               {
                  "product" : "tesco",
                  "value" : 9.99,
               },
               {
                  "product" : "tesco",
                  "value" : 9.99,
               },
               {
                  "product" : "tesco",
                  "value" : 9.99,
               },
               {
                  "product" : "tesco",
                  "value" : 9.99,
               }


            ]
         }, {
            "Category" : "Groceries",
            "urlImage": appImages.groceries,
            "money_budget":400,
           
            "transactions" : [
               {
                  "product" : "tesco",
                  "value" : 9.99,
               },
               {
                  "product" : "tesco",
                  "value" : 9.99,
               },
               {
                  "product" : "tesco",
                  "value" : 9.99,
               },
               {
                  "product" : "tesco",
                  "value" : 9.99,
               }


            ]
         }
      ]
   };
   double spentMoney = 0;
   
    void SpentMoney(double value){
       spentMoney+=value;
       emit(spentMoneyChangeState());
    }

  void changeIndex(int index){
     CurrentIndex = index;
     emit(indexChangeState());
  }
   
   
}