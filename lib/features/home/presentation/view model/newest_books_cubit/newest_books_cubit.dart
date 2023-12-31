import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'newest_books_states.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitState());
  static NewestBooksCubit get(context) => BlocProvider.of(context);

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(GetNewestBooksLoadingState());
    var results = await homeRepo.fetchNewestBook();
    results.fold(
      (failuer) {
        emit(GetNewestBooksErrorState(failuer.errorMessage));
      },
      (books) {
        emit(GetNewestBooksSuccessState(books));
      },
    );
  }
}
