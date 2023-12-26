import 'package:coursee/core/utils/styles.dart';
import 'package:coursee/features/Home/data/models/BookModel.dart';
import 'package:coursee/features/Home/presntation/views/widgets/BestSellerListViewItes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/Wigets/customButton.dart';
import 'BookDetalisSection.dart';
import 'BooksAcrion.dart';
import 'CustomAppBarBookDetalis.dart';
import 'SimilarBookSection.dart';
import 'SimilarBooksListView.dart';
import 'customBookImage.dart';

class BookDetalisViewBody extends StatelessWidget {
  const BookDetalisViewBody({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children:  [
                const CustomAppBarBookDetalis(),
                 BookDetalisSection(
                  bookModel:bookModel ,
                ),
                const SizedBox(height: 37,),
                 BooksAction(
                   bookModel: bookModel,
                 ),
                const Expanded(child: const SizedBox(height: 50,)),
                const SimilarBookSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}















