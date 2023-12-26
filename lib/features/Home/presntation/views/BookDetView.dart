import 'package:coursee/features/Home/data/models/BookModel.dart';
import 'package:coursee/features/Home/presntation/SimilarBooksCubit/SimilarBooksCubit.dart';
import 'package:coursee/features/Home/presntation/views/widgets/BookDetalisViewBody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetalisView extends StatefulWidget {
  const BookDetalisView({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  State<BookDetalisView> createState() => _BookDetalisViewState();
}

class _BookDetalisViewState extends State<BookDetalisView> {

  @override
  void initState() {
   BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
     cate: widget.bookModel.volumeInfo.categories![0]
   );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: BookDetalisViewBody(
        bookModel: widget.bookModel,
      )),

    );
  }
}


