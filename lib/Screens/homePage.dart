import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handilng_money_app/Components/widgets/CustomText.dart';
import 'package:handilng_money_app/Components/widgets/itemWidget.dart';
import 'package:handilng_money_app/Screens/itemPageView.dart';
import 'package:handilng_money_app/bloc/itemCubit.dart';
import 'package:handilng_money_app/bloc/itemStates.dart';
import 'package:handilng_money_app/model/itemModel.dart';
import 'package:handilng_money_app/utils/Colors.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = itemCubit.get(context);
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        title: TextCustom(
            text: "Hi Ziad",
            color: Colors.grey.shade800,
            size: 30,
            fontWeight: FontWeight.w300),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.account_tree_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.account_balance_wallet_rounded,
                color: Colors.black,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextCustom(
                text: "You've already spent",
                color: Colors.grey.shade700,
                size: 25,
                fontWeight: FontWeight.w500),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 248, 248, 248),
                  border: Border.all(width: 1, color: Colors.grey)),
              child:  TextCustom(
                  text:  " 1 123,0",
                  color:const  Color.fromARGB(255, 0, 0, 0),
                  size: 23,
                  fontWeight: FontWeight.bold),
            ),

            const SizedBox(
              height: 20,
            ),
            //Text(itemCubit.get(context).data["itemData"][0]["money_budget"].toString()),
            Expanded(
                child: BlocConsumer<itemCubit, itemStates>(
              builder: (context, state) {
                return ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return itemWidget(
                      onTap: () {
                        cubit.changeIndex(index);
                        Navigator.push(context, MaterialPageRoute(builder:  (context) => deatailsPage(),));
                      },
                      item: itemModel(
                          urlImage: cubit.data["itemData"][index]["urlImage"],
                          category: cubit.data["itemData"][index]["Category"],
                          itemMoneyLimit: cubit.data["itemData"][index]
                              ["money_budget"]),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
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
