import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star,color: Colors.yellow,),
        const SizedBox(width: 6.3,),
        Text('4.8',style: Styles.textStyle16,),
        const SizedBox(width: 5,),
        Text('(2574)',style: Styles.textStyle14,)
      ],
    );
  }
}

