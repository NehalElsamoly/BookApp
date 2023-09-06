part of 'images_cubit.dart';

abstract class ImagesState extends Equatable {
  const ImagesState();

  @override
  List<Object> get props => [];
}

class ImagesInitial extends ImagesState {}

class ImagesLoading extends ImagesState {}

class ImagesSuccess extends ImagesState {
  final List<BookModel> books;

  const ImagesSuccess(this.books);
}

class ImagesFaile extends ImagesState {
  final String error;
  const ImagesFaile({
    required this.error,
  });
}
