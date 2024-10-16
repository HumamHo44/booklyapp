part of 'newser_books_cubit.dart';

sealed class NewserBooksState extends Equatable {
  const NewserBooksState();

  @override
  List<Object> get props => [];
}

final class NewserBooksInitial extends NewserBooksState {}

final class NewserBooksLoading extends NewserBooksState {}

final class NewserBooksSuccess extends NewserBooksState {
  final List<BookModel> books;

  const NewserBooksSuccess(this.books);
}

final class NewserBooksFailure extends NewserBooksState {
  final String errMessage;

  const NewserBooksFailure(this.errMessage);
}
