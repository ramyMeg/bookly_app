import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
//import 'package:bookly_app/Features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/customer_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly_app/constants.dart';
//import 'package:bookly_app/core/utils/assets.dart' show AssetsData;
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          const SizedBox(height: 50),
          Text(
            'Best Seller',
            style: Styles.TextStyle18.copyWith(fontFamily: kSpectralRegular),
          ),
          SizedBox(height: 20),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

