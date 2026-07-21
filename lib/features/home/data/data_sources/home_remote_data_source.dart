import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utiles/api_service.dart';
import 'package:bookly_app/core/utiles/functions/save_books.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(
      endpoint:
          'volumes?Filtering=free-ebooks&q=programming&key=${apiService.apiKey}',
    );
    List<BookEntity> books = getBookList(data);
    saveBooksData(books, kFeaturedBooks);

    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(
      endpoint:
          'volumes?Filtering=free-ebooks&q=programmingi&Sorting=newest&key=${apiService.apiKey}',
    );
    List<BookEntity> books = getBookList(data);
    saveBooksData(books, kNewestBooks);

    return books;
  }

  List<BookEntity> getBookList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}
