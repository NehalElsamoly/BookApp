// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/book_model/book_model.dart';
import '../../../data/repo/home_detail_repo.dart';


part 'newest_state.dart';

class NewestCubit extends Cubit<NewestState> {
  NewestCubit(
    this.homeRepo,
  ) : super(NewestInitial());

  final HomeDetailRepo homeRepo;

  Future<void> fetchNewestBook() async {
    emit(NewestLoading());
    var data = await homeRepo.fetchNewestBooks();

    data.fold((l) {
      emit(NewestFaile(error: l.errMessage));
    }, (r) {
      emit(NewestSuccess(books: r));
    });
  }
}
