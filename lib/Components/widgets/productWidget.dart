import 'package:flutter/material.dart';
import 'package:handilng_money_app/Components/widgets/CustomText.dart';
import 'package:handilng_money_app/bloc/itemCubit.dart';
import 'package:handilng_money_app/model/transactionModel.dart';
import 'package:handilng_money_app/utils/Colors.dart';
class productWidget extends StatelessWidget {
  final transModel trans;
  const productWidget({super.key,required this.trans});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade300

      ),
      child: ListTile(
        contentPadding:const EdgeInsets.all(20),
        title: TextCustom(text: trans.Product ?? "error Product" , fontWeight: FontWeight.w500 ,size:18, color: Colors.black),
        trailing: TextCustom(text: r"- $ "+trans.productPrcie.toString() , fontWeight: FontWeight.w700 ,size:20, color: Colors.black),
      ),
    );
  }
}
