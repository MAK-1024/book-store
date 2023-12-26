import 'package:bloc/bloc.dart';
import 'package:coursee/features/Home/data/repo/home_repo.dart';

import 'NewsetBooksStates.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState>
{

  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());

  final HomeRepo homeRepo;


  Future<void> fetchNewsetBooks() async
  {
    emit(NewsetBooksLoading());
    
    
    var result = await homeRepo.fetchNewsetBooks();
    
    result.fold((failure)
    {
      emit(NewsetBooksFailure(failure.errorMsg));
    }, (books)
    {
      emit(NewsetBooksSuccess(books));
    });
  }
}

