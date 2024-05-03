import 'package:flutter/cupertino.dart';

import '../generated/assets.dart';
import '../models/all_expenses_itme_model.dart';
import 'all_expenses_itme.dart';

class AllExpensesListView extends StatefulWidget {
   AllExpensesListView({super.key, required this.isActive});
   bool isActive;


   @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

class _AllExpensesListViewState extends State<AllExpensesListView> {
  int selectedAllExpensesItem = 0;
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,100'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,500'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;

        var value = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                widget.isActive = true;
               selectedAllExpensesItem = e.key;
                setState(() {
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensesItem(allExpensesItemModel: value, isActive: selectedAllExpensesItem == index,),
              ),
            ),
          );
        } else {
          return Expanded(
              child: GestureDetector(
                  onTap: (){
                    widget.isActive = true;
                    selectedAllExpensesItem = e.key;
                    setState(() {
                    });
                  },
                  child: AllExpensesItem(allExpensesItemModel: value, isActive: selectedAllExpensesItem == index,)));
        }
      }).toList(),
    );
  }
}
