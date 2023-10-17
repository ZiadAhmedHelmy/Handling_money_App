
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handilng_money_app/Components/widgets/itemWidget.dart';
import 'package:handilng_money_app/Components/widgets/productWidget.dart';
import 'package:handilng_money_app/bloc/itemStates.dart';
import 'package:handilng_money_app/model/itemModel.dart';
import 'package:handilng_money_app/bloc/itemCubit.dart';
import 'package:handilng_money_app/model/transactionModel.dart';
import 'package:handilng_money_app/utils/Colors.dart';
class deatailsPage extends StatelessWidget {
  const deatailsPage({super.key});

  @override
  Widget build(BuildContext context) {

    var cubit = itemCubit.get(context);
    var cubitTransList = cubit.data["itemData"][cubit.CurrentIndex]["transactions"];

    List list = cubitTransList;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.grey,
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
      ),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           children: [
             itemWidget(
             onTap: () {},
               item: itemModel(
            urlImage: cubit.data["itemData"][cubit.CurrentIndex]["urlImage"],
            category: cubit.data["itemData"][cubit.CurrentIndex]["Category"],
            itemMoneyLimit: cubit.data["itemData"][cubit.CurrentIndex]
            ["money_budget"]),
          ),

             Expanded(
                 child: BlocConsumer<itemCubit, itemStates>(
                   builder: (context, state) {
                     return ListView.separated(
                       physics: const BouncingScrollPhysics(),
                       itemCount: list.length,
                       itemBuilder: (context, index) {
                       return productWidget(trans: transModel(Product: cubitTransList[index]["product"], productPrcie:cubitTransList[index]["value"]));
                       }, separatorBuilder: (context, index) => const SizedBox(height: 15,)
                     );
                   },
                   listener: (context, state) {},
                 ))

           ],
         ),
       ),
    );
  }
}
