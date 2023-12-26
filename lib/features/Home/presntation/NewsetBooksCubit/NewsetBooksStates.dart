import 'package:coursee/features/Home/data/models/BookModel.dart';
import 'package:equatable/equatable.dart';

abstract class NewsetBooksState extends Equatable
{
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

class NewsetBooksInitial extends NewsetBooksState {}

class NewsetBooksLoading extends NewsetBooksState {}

class NewsetBooksFailure extends NewsetBooksState {
  final String errMsg;

   NewsetBooksFailure(this.errMsg);
}

class NewsetBooksSuccess extends NewsetBooksState {
   final List<BookModel> books;

  NewsetBooksSuccess(this.books);
}