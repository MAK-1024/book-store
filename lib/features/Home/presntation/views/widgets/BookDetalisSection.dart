import 'package:coursee/features/Home/data/models/BookModel.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';
import 'BestSellerListViewItes.dart';
import 'customBookImage.dart';

class BookDetalisSection extends StatelessWidget {
  const BookDetalisSection({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: width * .2),
          child: customBookImage(imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? '',),
        ),
        const SizedBox(height: 43,),
        Text(bookModel.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center ,
        ),

        SizedBox(height: 7 ,),
        Opacity(
          opacity: 0.7,
          child: Text(bookModel.volumeInfo.authors![0], style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic ,
              fontWeight: FontWeight.w500
          ),
          ),
        ),
        const SizedBox(height: 18 ,),
         BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
            rating: bookModel.volumeInfo.averageRating ?? 0 ,
          count: bookModel.volumeInfo.ratingsCount ?? 0,
        ),
      ],
    );
  }
}


