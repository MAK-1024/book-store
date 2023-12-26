import 'package:bloc/bloc.dart';
import 'package:coursee/features/Home/data/repo/home_repo.dart';

import 'featuredBooksStates.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState>
{

  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;


  Future<void> fetchFeaturedBooks() async
  {
    emit(FeaturedBooksLoading());
    
    
    var result = await homeRepo.fetchFeaturedBox();
    
    result.fold((failure)
    {
      emit(FeaturedBooksFailure(failure.errorMsg));
    }, (books)
    {
      emit(FeaturedBooksSuccess(books));
    });
  }
}

