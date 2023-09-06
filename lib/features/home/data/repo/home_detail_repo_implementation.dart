// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:untitled8/errors/failure.dart';
import 'package:untitled8/features/home/data/model/book_model/book_model.dart';

import '../../../../core/api_services.dart';
import 'home_detail_repo.dart';

class HomeDetailRepoImplementation implements HomeDetailRepo {
  ApiServices apiServices;
  HomeDetailRepoImplementation({
    required this.apiServices,
  });
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      final data = await apiServices.getServices(
          endPoint:
              "volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming");

      List<BookModel> newsBooks = [];
      for (var item in data['items']) {
        newsBooks.add(BookModel.fromJson(item));
      }
      return right(newsBooks);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchImageBooks() async {
    try {
      final data = await apiServices.getServices(
          endPoint: "volumes?Filtering=free-ebooks&q=kids");

      List<BookModel> newsBooks = [];
      for (var item in data['items']) {
        newsBooks.add(BookModel.fromJson(item));
      }
      return right(newsBooks);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      final data = await apiServices.getServices(
          endPoint: "volumes?Sorting=newest&q=$category");

      List<BookModel> newsBooks = [];
      for (var item in data['items']) {
        newsBooks.add(BookModel.fromJson(item));
      }
      return right(newsBooks);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
