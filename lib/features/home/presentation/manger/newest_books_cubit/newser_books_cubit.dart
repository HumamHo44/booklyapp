import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'newser_books_state.dart';

class NewserBooksCubit extends Cubit<NewserBooksState> {
  NewserBooksCubit() : super(NewserBooksInitial());
}
