import 'package:flutter/material.dart';
import 'package:handilng_money_app/Components/widgets/CustomText.dart';
import 'package:handilng_money_app/model/itemModel.dart';
import 'package:handilng_money_app/utils/Colors.dart';
import 'package:handilng_money_app/utils/appImages.dart';

class itemWidget extends StatelessWidget {
  final itemModel item;
  final void Function()? onTap;
  const itemWidget({ required this.item, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.grey
        ),
        child: ListTile(
        leading: Image.asset(item.urlImage ?? appImages.error ,),
            title:TextCustom(text: item.category ?? "Empty Category", color: Colors.grey, size: 18, fontWeight: FontWeight.bold) ,
        subtitle:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextCustom(text:"\$21 \$" + "${item.itemMoneyLimit}", color: Colors.black, size: 20, fontWeight: FontWeight.bold),
            TextCustom(text: r"-$379", color: Color.fromARGB(255, 241, 45, 45), size: 15, fontWeight: FontWeight.bold),

          ],
        ) ,

        ),
      ),
    );
  }
}