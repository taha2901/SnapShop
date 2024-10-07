import 'package:flutter/material.dart';
import 'package:snap_shop/features/address/logic/address_cubit.dart';
import 'package:snap_shop/features/address/ui/widget/address_list_view_item.dart';

class AddressListView extends StatelessWidget {
  const AddressListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return AddressListViewItem(
          addressDataList:
              AddressCubit.get(context).addressResponseList!.data!.data![index],
        );
      },
      itemCount:
          AddressCubit.get(context).addressResponseList?.data?.data?.length ??
              0,
    );
  }
}
