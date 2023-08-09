import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

abstract class NewestBooksStates {}

// initial state
class NewestBooksInitState extends NewestBooksStates {}

//get data states
class GetNewestBooksLoadingState extends NewestBooksStates {}

class GetNewestBooksSuccessState extends NewestBooksStates {
  final List<BookModel> books;

  GetNewestBooksSuccessState(this.books);
}

class GetNewestBooksErrorState extends NewestBooksStates {
  final String errorMessage;

  GetNewestBooksErrorState(this.errorMessage);
}
