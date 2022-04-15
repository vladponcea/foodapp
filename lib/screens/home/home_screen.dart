import 'dart:html';

import 'package:flutter/material.dart';
import 'package:foodapp/constants.dart';
import 'package:foodapp/demoData.dart';

import 'components/image_carousel.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //customScrollView for better scrollView???
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            //change bg of appbar
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Column(
              children: [
                Text(
                  "Delivery to".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: kActiveColor),
                ),
                Text(
                  "Rosiori de Vede",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Filter",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: ImageCarousel(),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                Text(
                  "Featured Partners",
                  style: Theme.of(context).textTheme.headline6,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Sell all"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
