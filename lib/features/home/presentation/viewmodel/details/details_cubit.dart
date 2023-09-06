import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';

import '../../../data/model/book_model/book_model.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit() : super(DetailsInitial());

  change({required BookModel book}) {
    emit(DetailsLoading());
    emit(DetailsChange(bookModel: book));
  }

  closepage() {
    emit(DetailsInitial());
  }
}
