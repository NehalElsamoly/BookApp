// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/book_model/book_model.dart';
import '../../../data/repo/home_detail_repo.dart';

part 'images_state.dart';

class ImagesCubit extends Cubit<ImagesState> {
  ImagesCubit(
    this.homeRepo,
  ) : super(ImagesInitial());

  final HomeDetailRepo homeRepo;

  Future<void> fetchImageBook() async {
    emit(ImagesLoading());
    var data = await homeRepo.fetchImageBooks();

    data.fold((l) {
      emit(ImagesFaile(error: l.errMessage));
    }, (r) {
      emit(ImagesSuccess(r));
    });
  }
}
