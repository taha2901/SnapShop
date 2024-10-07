import 'package:flutter/material.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/features/address/ui/widget/address_app_bar.dart';
import 'package:snap_shop/features/address/ui/widget/address_bloc_builder.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
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
