import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/features/address/logic/address_cubit.dart';
import 'package:snap_shop/features/address/ui/widget/address_app_bar.dart';
import 'package:snap_shop/features/address/ui/widget/address_bloc_builder.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
    AddressCubit? _addressCubit;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // حفظ المرجع إلى الـ Cubit
    _addressCubit = context.read<AddressCubit>();
  }

  @override
  void dispose() {
    // غلق الـ Cubit هنا بدون الحاجة لاستخدام context
    _addressCubit?.close();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                verticalSpace(24),
                const AddressAppBar(),
                verticalSpace(24),
                const Expanded(
                  child: AddressBlocBuilder(),
                ),
              ],
            )),
      ),
    );
  }
}
