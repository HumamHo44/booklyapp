import 'package:bookly_app/features/home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSllerListView extends StatelessWidget {
  const BestSllerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSelerLIstViewItem(),
        );
      },
    );
  }
}
