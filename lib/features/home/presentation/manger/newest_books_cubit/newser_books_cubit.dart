import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newser_books_state.dart';

class NewserBooksCubit extends Cubit<NewserBooksState> {
  NewserBooksCubit(this.homeRepo) : super(NewserBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewserBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(NewserBooksFailure(failure.errMessage));
      },
      (books) {
        emit(NewserBooksSuccess(books));
      },
    );
  }
}
