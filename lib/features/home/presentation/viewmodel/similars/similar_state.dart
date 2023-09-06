part of 'similar_cubit.dart';

abstract class SimilarState extends Equatable {
  const SimilarState();

  @override
  List<Object> get props => [];
}

class SimilarInitial extends SimilarState {}

class SimilarLoading extends SimilarState {}

class SimilarSuccess extends SimilarState {
  final List<BookModel> books;

  const SimilarSuccess({required this.books});
}

class SimilarFaile extends SimilarState {
  final String error;
  const SimilarFaile({
    required this.error,
  });
}
