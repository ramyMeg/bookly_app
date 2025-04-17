import 'package:bookly_app/Features/home/presentation/views/widgets/customer_app_bar.dart';
import 'package:bookly_app/core/utils/assets.dart' show AssetsData;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const [CustomAppBar()]);
  }
}

