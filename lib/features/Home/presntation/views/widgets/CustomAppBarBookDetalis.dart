import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarBookDetalis extends StatelessWidget {
  const CustomAppBarBookDetalis({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: (){
          GoRouter.of(context).pop();
        }, icon: Icon(Icons.close)),
        Spacer(),
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
      ],
    );
  }
}