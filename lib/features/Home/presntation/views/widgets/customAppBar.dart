import 'package:coursee/core/utils/app_routing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/asssets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left: 24 , right: 24 , top: 40 , bottom: 15),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,width: 60,height: 60,),
          const Spacer(),
          IconButton(onPressed: (){
            GoRouter.of(context).push(AppRouter.KSearchViewView);
          }, icon: const Icon(Icons.search,size: 24,))
        ],
      ),
    );
  }
}