import 'package:coursee/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Home/presntation/views/widgets/BestSellerListViewItes.dart';
import 'CustomSearchTextFeilld.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomSearchTextFeilld(),
          const SizedBox(height: 16,),
          Text('Search Result' , style: Styles.textStyle18,),
          const SizedBox(height: 16,),

          Expanded(child: SearchResultListView()),
        ],

      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context,index){
          return  const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            // child: BestSellerListViewItes(bookModel: ,),
          );
        }

    );
  }
}





