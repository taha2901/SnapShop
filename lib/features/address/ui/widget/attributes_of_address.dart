import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/helpers/spacing.dart';
import 'package:snap_shop/core/widget/app_text_form_field.dart';
import 'package:snap_shop/features/address/logic/address_cubit.dart';

class AttributesOfAddress extends StatelessWidget {
  const AttributesOfAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AddressCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            validator: (p0) {
              if (p0!.isEmpty) {
                return 'Name is required';
              }
            },
              hintText: 'Name',
              borderRadius: BorderRadius.circular(10),
              controller: context.read<AddressCubit>().nameController),
          verticalSpace(18),
          Row(
            children: [
              Expanded(
                child: AppTextFormField(
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return 'Phone is required';
                    }
                  },
                    hintText: 'Ragion',
                    borderRadius: BorderRadius.circular(10),
                    controller: context.read<AddressCubit>().regionController),
              ),
              horizontalSpace(18),
              Expanded(
                child: AppTextFormField(
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return 'City is required';
                    }
                  },
                    hintText: 'City',
                    borderRadius: BorderRadius.circular(10),
                    controller: context.read<AddressCubit>().cityController),
              ),
            ],
          ),
          verticalSpace(18),
          AppTextFormField(
              validator: (p0) {
                if (p0!.isEmpty) {
                  return 'Address is required';
                }
              },
              hintText: 'Details',
              borderRadius: BorderRadius.circular(10),
              controller: context.read<AddressCubit>().detailsController),
          verticalSpace(18),
          Row(
            children: [
              Expanded(
                child: AppTextFormField(
                    validator: (p0) {
                      
                    },
                    hintText: 'Latitude',
                    borderRadius: BorderRadius.circular(10),
                    controller:
                        context.read<AddressCubit>().latitudeController),
              ),
              horizontalSpace(18),
              Expanded(
                child: AppTextFormField(
                    validator: (p0) {
                      
                    },
                    hintText: 'Longitude',
                    borderRadius: BorderRadius.circular(10),
                    controller:
                        context.read<AddressCubit>().longitudeController),
              ),
            ],
          ),
          verticalSpace(18),
          AppTextFormField(
              validator: (p0) {
                if (p0!.isEmpty) {
                  return 'Notes is required';
                }
              },
              hintText: 'Notes',
              borderRadius: BorderRadius.circular(10),
              controller: context.read<AddressCubit>().notesController),
        ],
      ),
    );
  }
}
