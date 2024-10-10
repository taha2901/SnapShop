import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/core/helpers/local_notify.dart';
import 'package:snap_shop/features/home/data/model/categories/categories_response_model.dart';
import 'package:snap_shop/features/home/data/model/categories_details_response_model/categories_details_response_model.dart';
import 'package:snap_shop/features/home/data/model/products/product.dart';
import 'package:snap_shop/features/home/data/model/products/products_response_model.dart';
import 'package:snap_shop/features/home/data/repo/home_repo.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  static HomeCubit get(context) => BlocProvider.of(context);
  CategoriesResponseModel? categoriesDataList;
  CategoriesDetailsResponseModel? categoriesDetailsDataList;
  ProductsResponseModel? productsDataList;
  final HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(const HomeState.initial());

  void getCategories() async {
    if (isClosed) return;
    emit(const HomeState.categoriesLoading());
    final response = await homeRepo.getCategories();
    response.when(success: (categoriesResponseModel) {
      if (isClosed) return;

      // حفظ البيانات في المتغير داخل الكيوبيت
      categoriesDataList = categoriesResponseModel;

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

    final response = await homeRepo.getProducts();
    response.when(success: (productsResponseModel) {
      if (isClosed) return;
      productsDataList = productsResponseModel;

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
    final response = await homeRepo.getCategoriesDetails(categoryId);

    response.when(
      success: (categoriesDetailsResponseModel) {
        if (isClosed) return;
        categoriesDetailsDataList = categoriesDetailsResponseModel;
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

  List<ProductDataList> filteredProductss = [];

  void filterProducts({required String input}) {
    if (productsDataList?.data?.products != null) {
      filteredProductss = productsDataList!.data!.products!
          .where((element) =>
              element.name!.toLowerCase().startsWith(input.toLowerCase()))
          .toList();
      emit(HomeState.homeFilteredState());
    }
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
