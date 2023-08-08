import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';

abstract class NewestBooksStates {}

// initial state
class NewestBooksInitState extends NewestBooksStates {}

//get data states
class NewestBooksGetLoadingState extends NewestBooksStates {}

class NewestBooksGetSuccessState extends NewestBooksStates {
  final List<BookModel> books;

  NewestBooksGetSuccessState(this.books);
}

class NewestBooksGetErrorState extends NewestBooksStates {
  final String errorMessage;

  NewestBooksGetErrorState(this.errorMessage);
}
