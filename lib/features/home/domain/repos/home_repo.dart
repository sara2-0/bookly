import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, BookEntity>> fetchFeaturedBooks();
  Future<Either<Failure, BookEntity>> fetchNewestBooks();
}
