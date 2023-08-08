import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/presentation/view%20model/featured_books_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitState());
  static FeaturedBooksCubit get(context) => BlocProvider.of(context);

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksGetLoadingState());
    var results = await homeRepo.fetchFeaturedBook();
    results.fold(
      (failuer) {
        emit(FeaturedBooksGetErrorState(failuer.errorMessage));
      },
      (books) {
        emit(FeaturedBooksGetSuccessState(books));
      },
    );
  }
}
