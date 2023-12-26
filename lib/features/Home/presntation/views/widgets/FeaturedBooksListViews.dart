




import 'package:coursee/features/Home/data/models/BookModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/Wigets/customError.dart';
import '../../../../../core/Wigets/customLoadingIndecator.dart';
import '../../../../../core/utils/app_routing.dart';
import '../../featuredBooksCubit/featuredBooksCubit.dart';
import '../../featuredBooksCubit/featuredBooksStates.dart';
import 'customBookImage.dart';

class FeaturedBooksListViews extends StatelessWidget {
  const FeaturedBooksListViews({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<FeaturedBooksCubit , FeaturedBooksState>(
      builder: (context , state){
        if (state is FeaturedBooksSuccess)
        {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {

                  return  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8),
                    child:  GestureDetector(
                        onTap:(){

                          GoRouter.of(context).push(AppRouter.KBookDetalisView, extra: state.books[index]);
                        },
                        child: customBookImage(imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,)),
                  );
                }),
          );
        }else if (state is FeaturedBooksFailure){
          return customError(errorMsg: state.errMsg);
        } else {
          return customLoading();
        }
      },
    );
  }
}