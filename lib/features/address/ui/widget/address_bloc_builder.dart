import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/networking/api_error_handler.dart';
import 'package:snap_shop/features/address/logic/address_cubit.dart';
import 'package:snap_shop/features/address/ui/widget/address_list_view.dart';

class AddressBlocBuilder extends StatelessWidget {
  const AddressBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressCubit, AddressState>(
        buildWhen: (previous, current) =>
            current is AddressLoading ||
            current is AddressSuccing ||
            current is AddressError,
        builder: (context, state) {
          return state.maybeWhen(
            addressLoading: () => setUpLoading(),
            addressSuccess: (addressDataList) {
              return setUpSuccess(addressDataList);
            },
            // addressError: (error) => setupError(),
            orElse: () => const SizedBox.shrink(),
          );
        });
  }

  Widget setupError(ErrorHandler error) {
    return Center(
        child: Scaffold(
            body:
                Center(child: Text('Error: ${error.apiErrorModel.message}'))));
  }

  Widget setUpSuccess(addressDataList) {
    return AddressListView(
      addressDataList: addressDataList,
    );
  }

  Widget setUpLoading() {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
