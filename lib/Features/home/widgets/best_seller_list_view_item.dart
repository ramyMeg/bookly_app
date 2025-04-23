import 'package:bookly_app/Features/home/widgets/book_rating.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants.dart';
import '../../../core/utils/assets.dart';
import '../../../core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1.3 / 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.orangeAccent,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testImage),
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'Harry Potter and the Goblet of Fire ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis, // text ....
                    style: Styles.textStyle20.copyWith(
                      fontFamily: kSpectralRegular,
                    ),
                  ),
                ),
                const SizedBox(width: 3),
                Text(
                  'J.K. Rowling',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis, // text ....
                  style: Styles.TextStyle14,
                ),
                const SizedBox(width: 3),
                Row(
                  children: [
                    Text(
                      '19.99 EGP',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    const BookRating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

