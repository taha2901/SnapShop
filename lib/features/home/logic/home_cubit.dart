import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/helpers/local_notify.dart';
import 'package:snap_shop/features/home/data/repo/home_repo.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void getCategories() async {
    if (isClosed) return;
    emit(const HomeState.categoriesLoading());
    final response = await _homeRepo.getCategories();
    response.when(success: (categoriesResponseModel) {
      if (isClosed) return;
      emit(HomeState.categoriesSuccess(
          categoriesDataList:
              categoriesResponseModel.categoriesData!.categoriesDataList!));
    }, failure: (errorHandler) {
      if (isClosed) return;
      emit(HomeState.categoriesError(errorHandler: errorHandler));
    });
  }

  void getProducts() async {
    if (isClosed) return;
    emit(const HomeState.productsLoading());

    final response = await _homeRepo.getProducts();
    response.when(success: (productsResponseModel) {
      if (isClosed) return;

      sendNotification();
      emit(HomeState.productsSuccess(
          productsDataList: productsResponseModel.data?.products ?? []));
    }, failure: (errorHandler) {
      if (isClosed) return;
      emit(HomeState.productsError(errorHandler: errorHandler));
    });
  }

  void getCategoriesDetails(int categoryId) async {
    if (isClosed) return;
    emit(const HomeState.categoriesDetailsLoading());
    final response = await _homeRepo.getCategoriesDetails(categoryId);

    response.when(
      success: (categoriesDetailsResponseModel) {
        if (isClosed) return;
        emit(HomeState.categoriesDetailsSuccess(
          categoriesDetialsDataList: categoriesDetailsResponseModel
              .categoriesDetailsData?.categoriesDetailsDataList,
        ));
      },
      failure: (errorHandler) {
        if (isClosed) return;
        emit(HomeState.categoriesDetailsError(errorHandler: errorHandler));
      },
    );
  }

  final azkar = [
    "سُبْحَانَ اللَّهِ",
    "صلي علي النبي",
    "الْحَمْدُ لِلَّهِ",
    "اللهُ أَكْبَرُ",
    "اللهم صلي وسلم وبارك علي سيدنا محمد",
    "لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلُّ شَيْءِ قَدِيرِ.",
    "سُبْحَانَ اللَّهِ",
    "اللهم صلي وسلم وبارك علي سيدنا محمد",
    "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ",
    "اللهم صلي وسلم وبارك علي سيدنا محمد",
    "سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ",
    "اللهم صلي وسلم وبارك علي سيدنا محمد",
    "سُبْحَانَ اللهِ العَظِيمِ وَبِحَمْدِهِ",
    "اللهم صلي وسلم وبارك علي سيدنا محمد",
    "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ ، سُبْحَانَ اللَّهِ الْعَظِيمِ",
    "اللهم صلي وسلم وبارك علي سيدنا محمد",
    "لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ",
    "اللهم صلي وسلم وبارك علي سيدنا محمد",
    "الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ",
    "اللهم صلي وسلم وبارك علي سيدنا محمد",
    "الْلَّهُم صَلِّ وَسَلِم وَبَارِك عَلَى سَيِّدِنَا مُحَمَّد",
    "اللهم صلي وسلم وبارك علي سيدنا محمد",
    "أستغفر الله",
    "اللهم صلي وسلم وبارك علي سيدنا محمد",
    "سُبْحَانَ الْلَّهِ، وَالْحَمْدُ لِلَّهِ، وَلَا إِلَهَ إِلَّا الْلَّهُ، وَالْلَّهُ أَكْبَرُ",
    "اللهم صلي وسلم وبارك علي سيدنا محمد",
    "لَا إِلَهَ إِلَّا اللَّهُ",
    "اللهم صلي وسلم وبارك علي سيدنا محمد",
    "الْلَّهُ أَكْبَرُ",
    "اللهم صلي وسلم وبارك علي سيدنا محمد",
  ];

  void sendNotification() {
    final Random random = Random();
    final int randomIndex = random.nextInt(azkar.length);
    final String randomAzkar = azkar[randomIndex];

    NotificationService().scheduleRepeatingNotification(
      body: randomAzkar,
    );
    emit(const HomeState.sendNotification());
  }
}
