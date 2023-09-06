// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/book_model/book_model.dart';
import '../../../data/repo/home_detail_repo.dart';

part 'similar_state.dart';

class SimilarCubit extends Cubit<SimilarState> {
  SimilarCubit(
    this.homeRepo,
  ) : super(SimilarInitial());

  final HomeDetailRepo homeRepo;

  Future<void> fetchSimilarBooks({required BookModel bookModel}) async {
    emit(SimilarLoading());
    var data = await homeRepo.fetchSimilarBooks(
        category: bookModel.volumeInfo!.categories!.isNotEmpty
            ? bookModel.volumeInfo!.categories![0]
            : bookModel.volumeInfo!.title!);

    data.fold((l) {
      emit(SimilarFaile(error: l.errMessage));
    }, (r) {
      emit(SimilarSuccess(books: r));
    });
  }

  Future<void> onClickSimilar({required BookModel bookModel}) async {
    await fetchSimilarBooks(bookModel: bookModel);
  }
}
