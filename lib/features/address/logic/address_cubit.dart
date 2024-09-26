import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snap_shop/features/address/data/model/address_request_model.dart';
import 'package:snap_shop/features/address/data/repo/address_repo.dart';

part 'address_state.dart';
part 'address_cubit.freezed.dart';

class AddressCubit extends Cubit<AddressState> {
  final AddressRepo _addressRepo;
  AddressCubit(this._addressRepo) : super(const AddressState.initial());

  final nameController = TextEditingController();
  final detailsController = TextEditingController();
  final cityController = TextEditingController();
  final latitudeController = TextEditingController();
  final longitudeController = TextEditingController();
  final notesController = TextEditingController();
  final regionController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitAddressStates() async {
    emit(const AddressState.addressLoading());
    final response = await _addressRepo.addAddress(
      AddressRequestModel(
        name: nameController.text.trim(),
        details: detailsController.text.trim(),
        city: cityController.text.trim(),
        latitude: double.tryParse(latitudeController.text.trim()),
        longitude: double.tryParse(longitudeController.text.trim()),
        notes: notesController.text.trim(),
        region: regionController.text.trim(),
      ),
    );

    response.when(
      success: (addressResponse) {
        emit(AddressState.addressSuccess(addressResponse));
      },
      failure: (error) {
        emit(AddressState.addressError(
            error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
