import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchTextFeilld extends StatelessWidget {
  const CustomSearchTextFeilld({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          hintText: 'Search',
          suffixIcon: Opacity(
              opacity: .2,
              child: IconButton(onPressed: () {  }, icon: Icon(Icons.search,size: 24,),))
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
            color: Colors.deepOrangeAccent
        )
    );
  }
}