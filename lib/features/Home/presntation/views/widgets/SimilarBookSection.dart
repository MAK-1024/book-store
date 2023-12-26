import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';
import 'SimilarBooksListView.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text('You can also Like',style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),)),
        const SizedBox(height: 16,),
        SimilarBooksListView(),
        const SizedBox(height: 40,),
      ],
    );
  }
}

