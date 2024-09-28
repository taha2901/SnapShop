// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:snap_shop/core/networking/api_error_handler.dart';
// import 'package:snap_shop/features/profile/logic/profile_cubit.dart';
// import 'package:snap_shop/features/profile/ui/profile_screen.dart';

// class ProfileBlocBuilder extends StatelessWidget {
//   const ProfileBlocBuilder({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ProfileCubit, ProfileState>(
//         buildWhen: (previous, current) =>
//             current is ProfileLoading ||
//             current is ProfileSuccess ||
//             current is ProfileError,
//         builder: (context, state) {
//           return state.maybeWhen(
//             profileLoading: () => setUpLoading(),
//             profileSuccess: (profileData) {
//               return setUpSuccess(profileData);
//             },
//             profileError: (error) => setupError(error),
//             orElse: () => const SizedBox.shrink(),
//           );
//         });
//   }

//   Widget setupError(ErrorHandler error) {
//     return Center(
//         child: Scaffold(
//             body:
//                 Center(child: Text('Error: ${error.apiErrorModel.message}'))));
//   }

//   Widget setUpSuccess(profileData) {
//     return ProfileScreen(
//     );
//   }

//   Widget setUpLoading() {
//     return const Scaffold(body: Center(child: CircularProgressIndicator()));
//   }
// }
