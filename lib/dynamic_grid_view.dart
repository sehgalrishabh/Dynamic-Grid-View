library dynamic_grid_view;

import 'package:flutter/material.dart';

class DynamicGridView extends StatelessWidget {
  final double width;
  final int? itemsPerRow;
  final double? ratio;
  final double? horizontalPadding;
  final Widget Function(BuildContext, int) child;
  final List<dynamic> dataSet;
  const DynamicGridView(
      {super.key,
      required this.width,
      required this.child,
      this.itemsPerRow,
      this.ratio,
      this.dataSet = const [],
      this.horizontalPadding});

  @override
  Widget build(BuildContext context) {
    final double calcHeight =
        ((width / (itemsPerRow ?? 2)) - (horizontalPadding ?? 0)) *
            (dataSet.length / (itemsPerRow ?? 2)).ceil() *
            (1 / (ratio ?? 1));
    return SizedBox(
      width: width,
      height: calcHeight,
      child: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 0),
        itemCount: dataSet.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            crossAxisCount: itemsPerRow ?? 2,
            childAspectRatio: ratio ?? 1),
        itemBuilder: (context, index) {
          return child(context, index);
        },
      ),
    );
  }
}
