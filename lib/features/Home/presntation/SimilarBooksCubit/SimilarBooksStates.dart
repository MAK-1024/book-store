import 'package:coursee/features/Home/data/models/BookModel.dart';
import 'package:equatable/equatable.dart';

abstract class SimilarBooksState extends Equatable
{
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksFailure extends SimilarBooksState {
  final String errMsg;

   SimilarBooksFailure(this.errMsg);
}

class SimilarBooksSuccess extends SimilarBooksState {
   final List<BookModel> books;

  SimilarBooksSuccess(this.books);
}