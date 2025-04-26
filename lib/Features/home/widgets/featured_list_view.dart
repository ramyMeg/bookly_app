
import 'package:bookly_app/Features/home/widgets/Custom_book_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height:MediaQuery.of(context).size.height*0.27,
        child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 0),
          child:  CustomBookImage(),
        );
      },),
    );
  }
}