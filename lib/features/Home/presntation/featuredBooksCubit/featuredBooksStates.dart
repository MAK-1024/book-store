import 'package:coursee/features/Home/data/models/BookModel.dart';
import 'package:equatable/equatable.dart';

abstract class FeaturedBooksState extends Equatable
{
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMsg;

   FeaturedBooksFailure(this.errMsg);
}

class FeaturedBooksSuccess extends FeaturedBooksState {
   final List<BookModel> books;

  FeaturedBooksSuccess(this.books);
}