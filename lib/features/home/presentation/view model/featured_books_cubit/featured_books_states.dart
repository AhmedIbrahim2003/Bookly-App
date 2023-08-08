import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

abstract class FeaturedBooksStates{}
// initial state
class FeaturedBooksInitState extends FeaturedBooksStates{}
//get data states
class FeaturedBooksGetLoadingState extends FeaturedBooksStates{}
class FeaturedBooksGetSuccessState extends FeaturedBooksStates{
  final List<BookModel> books;

  FeaturedBooksGetSuccessState(this.books);
}
class FeaturedBooksGetErrorState extends FeaturedBooksStates{
  final String errorMessage;

  FeaturedBooksGetErrorState(this.errorMessage);
}