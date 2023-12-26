import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/Wigets/customButton.dart';
import '../../../data/models/BookModel.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child:
          CustomButton(
            backgroundColor: Colors.black,
            TextColor: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(16)
                , bottomLeft: Radius.circular(16) ),
            text: '19.9#',
          ),
          ),

          Expanded(
            child:
          CustomButton(
            onPressed:() async{
              Uri url = Uri.parse(bookModel.volumeInfo.previewLink!);
              if (await canLaunchUrl(url)) {
            await launchUrl(url);
              }
            },
            backgroundColor: Colors.deepOrangeAccent,
            TextColor: Colors.black,
            fontSize: 17,
            borderRadius: BorderRadius.only(topRight: Radius.circular(16) , bottomRight: Radius.circular(16) ), text:'Free preview',
          ),
          ),
        ],
      ),
    );
  }
}

