import 'package:flutter/material.dart';
import 'package:snap_shop/features/address/data/model/get_address_response_model/datum.dart';
import 'package:snap_shop/features/address/ui/widget/address_list_view_item.dart';

class AddressListView extends StatelessWidget {
  final List<AddressDataList> addressDataList;
  const AddressListView({
    super.key,
    required this.addressDataList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return AddressListViewItem(
          addressDataList: addressDataList[index],
        );
      },
      itemCount: addressDataList.length,
    );
  }
}
