
import 'package:dartz/dartz.dart';
import 'package:untitled8/errors/failure.dart';

import '../model/book_model/book_model.dart';

abstract class HomeDetailRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchImageBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category});
}
