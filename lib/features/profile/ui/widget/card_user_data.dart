import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/features/profile/logic/profile_cubit.dart';

import '../../../../core/theming/styles.dart';

class CardOfUserData extends StatelessWidget {
  const CardOfUserData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.grey.shade200,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 16.w, vertical: 16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${ProfileCubit.get(context).profileModelList?.data?.name}",
                  style: TextStyles.font16BlackBold,
                ),
                verticalSpace(8),
                Row(
                  children: [
                    Text(
                      "${ProfileCubit.get(context).profileModelList?.data?.email}",
                      style:
                          TextStyles.font14LightGreyRegular,
                    ),
                    const Spacer(),
                    GestureDetector(
                      child: Text(
                        "Edit",
                        style: TextStyles
                            .font16MainColorMedium,
                      ),
                    ),
                  ],
                ),
                verticalSpace(8),
                Text(
                  "${ProfileCubit.get(context).profileModelList?.data?.phone}",
                  style: TextStyles.font14LightGreyRegular,
                ),
              ],
            ),
          ),
        ),
      );
  }
}
