import 'package:coursee/core/Wigets/customError.dart';
import 'package:coursee/core/Wigets/customLoadingIndecator.dart';
import 'package:coursee/features/Home/presntation/NewsetBooksCubit/NewsetBooksCubit.dart';
import 'package:coursee/features/Home/presntation/NewsetBooksCubit/NewsetBooksStates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'BestSellerListViewItes.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit , NewsetBooksState>(
      builder: (context , state){
        if (state is NewsetBooksSuccess){
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context,index){
                return  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BestSellerListViewItes(
                    bookModel: state.books[index],
                  ),
                );
              }

          );
        }else if (state is NewsetBooksFailure){
          return customError(errorMsg: state.errMsg);
        } else {
          return const customLoading();
        }
      },
    );
  }
}

