import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/theming/colors.dart';
import 'package:snap_shop/features/layout/ui/widgets/custom_sign_out.dart';

import '../logic/layout_cubit.dart';

class SouqLayout extends StatelessWidget {
  final String? name;
  const SouqLayout({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocConsumer<LayoutCubit, LayoutState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = LayoutCubit.get(context);
          return Scaffold(
            
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: ColorsManager.mainColor,
              unselectedItemColor: Colors.grey,
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeBottomNavBar(index);
              },
              items: cubit.bottomItem,
            ),
          );
        },
      ),
    );
  }
}
