import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/features/address/data/model/get_address_response_model/datum.dart';

class AddressListViewItem extends StatelessWidget {
  final AddressDataList addressDataList;
  const AddressListViewItem({
    super.key,
    required this.addressDataList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        height: 100.h,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                  '${addressDataList.name} ${addressDataList.region} ${addressDataList.city} ${addressDataList.details}',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyles.font15Blackmedium),
              const Spacer(),
              Text('Edit', style: TextStyles.font12MainColorMedium),
            ],
          ),
        ),
      ),
    );
  }
}
