import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/core/theming/styles.dart';
import 'package:snap_shop/core/widget/custom_show_toast.dart';
import 'package:snap_shop/features/address/logic/address_cubit.dart';
import 'package:snap_shop/features/address/ui/widget/address_app_bar.dart';
import 'package:snap_shop/features/address/ui/widget/attributes_of_address.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddressCubit, AddressState>(
      listener: (context, state) {
        state.maybeWhen(
          addressLoading: () {
            const Center(
              child: CircularProgressIndicator(),
            );
          },
          addressSuccess: (data) {
           showToast(msg: 'Succesfully', state: ToastStates.SUCCESS);
          },
          addressError: (error) {
           showToast(msg: 'Failed', state: ToastStates.ERROR);
          },
          orElse: () {},
        );
      },
      buildWhen: (previous, current) =>
          current is AddAddressLoading ||
          current is AddAddressSuccing ||
          current is AddAddressError,
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
              child: Column(
                children: [
                  verticalSpace(24),
                  const AddressAppBar(),
                  verticalSpace(34),
                  const AttributesOfAddress(),
                  const Spacer(),
                  Container(
                    width: double.infinity,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorsManager.mainColor,
                    ),
                    child: TextButton(
                      onPressed: () {
                        if (context
                            .read<AddressCubit>()
                            .formKey
                            .currentState!
                            .validate()) {
                          context.read<AddressCubit>().emitAddressStates();
                        }
                      },
                      child: Text(
                        'Save Address',
                        style: TextStyles.font16WhiteSemiBold,
                      ),
                    ),
                  ),
                  verticalSpace(24),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

