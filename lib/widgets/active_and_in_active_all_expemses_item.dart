import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../generated/assets.dart';
import '../models/all_expenses_itme_model.dart';
import '../utils/app_styles.dart';
import 'all_expenses_item_headr.dart';

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xff4EB7F2),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: const Color(0xffAAAAAA)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imageColor: const Color(0xffFFFFFF),
            backgroundColor: const Color(0xffFFFFFF).withOpacity(.1),
            icon: Assets.wightArrow,
            image: allExpensesItemModel.image,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleSemiBold16(context)
                .copyWith(color: const Color(0xffFFFFFF)),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14(context)
                .copyWith(color: const Color(0xffFFFFFF)),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            allExpensesItemModel.price,
            maxLines: 1,
            style: AppStyles.styleSemiBold24(context)
                .copyWith(color: const Color(0xffFFFFFF)),
          ),
        ],
      ),
    );
  }
}

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: const Color(0xffAAAAAA)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            icon: Assets.imagesArrowDown,
            image: allExpensesItemModel.image,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            allExpensesItemModel.price,
            maxLines: 1,overflow:TextOverflow.ellipsis ,
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}
