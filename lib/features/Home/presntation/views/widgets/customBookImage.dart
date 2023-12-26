import 'package:cached_network_image/cached_network_image.dart';
import 'package:coursee/core/Wigets/customError.dart';
import 'package:coursee/features/Home/presntation/featuredBooksCubit/featuredBooksCubit.dart';
import 'package:coursee/features/Home/presntation/featuredBooksCubit/featuredBooksStates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/Wigets/customLoadingIndecator.dart';
import '../../../../../core/utils/asssets.dart';

class customBookImage extends StatelessWidget {
  const customBookImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6/4,
        child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageUrl,
            errorWidget: (context , url , error) => Icon(Icons.error),
        ),
      ),
    );
  }
}





