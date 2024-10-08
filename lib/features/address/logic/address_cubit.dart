import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snap_shop/core/networking/api_error_handler.dart';
import 'package:snap_shop/features/address/data/model/address_request_model.dart';
import 'package:snap_shop/features/address/data/model/address_response_model/address_response_model.dart';
import 'package:snap_shop/features/address/data/model/get_address_response_model/datum.dart';
import 'package:snap_shop/features/address/data/model/get_address_response_model/get_address_response_model.dart';
import 'package:snap_shop/features/address/data/repo/address_repo.dart';

part 'address_state.dart';
part 'address_cubit.freezed.dart';

class AddressCubit extends Cubit<AddressState> {
  static AddressCubit get(context) => BlocProvider.of(context);
  GetAddressResponseModel? addressResponseList;
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
    if (isClosed) return;
    emit(const AddressState.addAddressLoading());
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
        if (isClosed) return;
       
        emit(AddressState.addAddressSuccess(addressResponse));
      },
      failure: (error) {
        if (isClosed) return;
        emit(AddressState.addAddressError(
            error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  void emitGetAddressStates() async {
    if (isClosed) return;
    emit(const AddressState.addressLoading());
    final response = await _addressRepo.getAddresses();
    response.when(
      success: (getAddressResponse)
       {
        if (isClosed) return;
        addressResponseList = getAddressResponse;
        emit(AddressState.addressSuccess(data: getAddressResponse.data!.data!));
      },
      failure: (error) {
        if (isClosed) return;
        emit(AddressState.addressError(
            error: error));
      },
    );
  }
}
