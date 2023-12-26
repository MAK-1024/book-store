import 'package:coursee/core/Wigets/customError.dart';
import 'package:coursee/core/Wigets/customLoadingIndecator.dart';
import 'package:coursee/features/Home/presntation/SimilarBooksCubit/SimilarBooksCubit.dart';
import 'package:coursee/features/Home/presntation/SimilarBooksCubit/SimilarBooksStates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'customBookImage.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit , SimilarBooksState>(
      builder: (context , state)
      {
      if (state is SimilarBooksSuccess)
        {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {

                  return  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child:  customBookImage(
                        imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? ''                   ),
                  );
                }),
          );
        } else if(state is SimilarBooksFailure){
        return customError(errorMsg: state.errMsg);
      }else{
       return customLoading();
      }
      }

    );
  }
}


