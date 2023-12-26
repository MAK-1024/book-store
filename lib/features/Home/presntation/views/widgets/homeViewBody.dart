import 'package:coursee/core/utils/asssets.dart';
import 'package:coursee/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'BestSellerListView.dart';
import 'customAppBar.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:const [
              CustomAppBar(),
              // FeaturedBooksListViews(),
              SizedBox(height: 40,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text('Best Seller',style: Styles.textStyle18,),
              ),
              SizedBox(height: 20,),
            ],
          ),

        ),
        SliverFillRemaining(
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ) ,
        )
      ],
    );

  }
}




















