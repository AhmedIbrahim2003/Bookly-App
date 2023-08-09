import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

abstract class FeaturedBooksStates{}
// initial state
class FeaturedBooksInitState extends FeaturedBooksStates{}
//get data states
class GetFeaturedBooksLoadingState extends FeaturedBooksStates{}
class GetFeaturedBooksSuccessState extends FeaturedBooksStates{
  final List<BookModel> books;

  GetFeaturedBooksSuccessState(this.books);
}
class GetFeaturedBooksErrorState extends FeaturedBooksStates{
  final String errorMessage;

  GetFeaturedBooksErrorState(this.errorMessage);
}