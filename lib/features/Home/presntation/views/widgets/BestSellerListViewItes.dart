import 'package:coursee/core/utils/app_routing.dart';
import 'package:coursee/features/Home/data/models/BookModel.dart';
import 'package:coursee/features/Home/presntation/views/widgets/customBookImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/styles.dart';

class BestSellerListViewItes extends StatelessWidget {
  const BestSellerListViewItes({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     onTap:(){

       GoRouter.of(context).push(AppRouter.KBookDetalisView, extra: bookModel);
     },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
           customBookImage(imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail),
            const SizedBox(width: 20,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child:  Text(bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20,
                    ),
                  ),
                  const SizedBox(height: 3,),
                   Text(bookModel.volumeInfo.authors![0],
                     style: Styles.textStyle14,),
                  const SizedBox(height: 3,),
                  Row(
                    children: [
                      Text('Free',style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                     const Spacer(),
                      BookRating(
                        rating: bookModel.volumeInfo.averageRating ?? 0,
                        count: bookModel.volumeInfo.ratingsCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.mainAxisAlignment
  = MainAxisAlignment.start, required this.rating, required this.count,});
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(Icons.star,color: Colors.yellow,size: 16,),
        const SizedBox(width: 6.3,),
        Text(rating.toString(),style: Styles.textStyle16,),
        const SizedBox(width: 5,),
        Opacity(
            opacity: 1,
            child: Text('($count )',style: Styles.textStyle14.copyWith()))
      ],
    );
  }
}