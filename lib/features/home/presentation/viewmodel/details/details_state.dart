// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'details_cubit.dart';

abstract class DetailsState extends Equatable {
  const DetailsState();

  @override
  List<Object> get props => [];
}

class DetailsInitial extends DetailsState {}

class DetailsLoading extends DetailsState {}

class DetailsChange extends DetailsState {
  final BookModel bookModel;
  const DetailsChange({
    required this.bookModel,
  });
}
