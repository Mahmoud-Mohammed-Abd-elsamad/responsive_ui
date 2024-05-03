import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

import '../generated/assets.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 3,scrollDirection: Axis.horizontal,itemBuilder: (BuildContext context,index){
        return const IntrinsicWidth(child: UserInfoListTile(image:Assets.imagesAvatar2, title: 'Josua Nunito', subTile: 'Josh Nunito@gmail.com',));
      }),
    );
  }
}
