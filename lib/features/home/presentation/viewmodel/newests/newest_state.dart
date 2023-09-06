// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'newest_cubit.dart';

abstract class NewestState extends Equatable {
  const NewestState();

  @override
  List<Object> get props => [];
}

class NewestInitial extends NewestState {}

class NewestLoading extends NewestState {}

class NewestSuccess extends NewestState {
  final List<BookModel> books;

  const NewestSuccess({required this.books});
}

class NewestFaile extends NewestState {
  final String error;
  const NewestFaile({
    required this.error,
  });
}
