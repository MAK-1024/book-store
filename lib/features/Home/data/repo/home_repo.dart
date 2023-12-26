import 'package:dartz/dartz.dart';

import '../../../../core/Errors/failures.dart';
import '../models/BookModel.dart';

abstract class HomeRepo
{
  Future<Either<Failure,List<BookModel>>>fetchNewsetBooks();

  Future<Either<Failure,List<BookModel>>>fetchFeaturedBox();

  Future<Either<Failure,List<BookModel>>>fetchSimilardBox({required String cate});

}