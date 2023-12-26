import 'package:coursee/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';

class customError extends StatelessWidget {
  const customError({super.key, required this.errorMsg});
  final String errorMsg;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorMsg , style: Styles.textStyle18));
  }
}
