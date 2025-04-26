import 'package:bookly_app/Features/home/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/widgets/Custom_book_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/books_action.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: CustomBookImage(),
          ),
          const SizedBox(height: 43),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),

          Opacity(
            opacity: 0.8,
            child: Text(
              'Rudyard Kipling',
              style: Styles.TextStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 18),
          BookRating(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: 37),
          const BooksAction(),
        ],
      ),
    );
  }
}
