import 'package:bloc/bloc.dart';
import 'package:coursee/features/Home/data/repo/home_repo.dart';

import 'SimilarBooksStates.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState>
{

  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;


  Future<void> fetchSimilarBooks({required String cate}) async
  {
    emit(SimilarBooksLoading());
    
    
    var result = await homeRepo.fetchSimilardBox(cate: cate);
    
    result.fold((failure)
    {
      emit(SimilarBooksFailure(failure.errorMsg));
    }, (books)
    {
      emit(SimilarBooksSuccess(books));
    });
  }
}

