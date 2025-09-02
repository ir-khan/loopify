import 'package:flutter/material.dart';
import 'package:loopify/features/home/data/data.dart';
import 'package:loopify/features/home/presentation/widgets/banner_image.dart';
import 'package:loopify/features/home/presentation/widgets/category_item.dart';
import 'package:loopify/features/home/presentation/widgets/promoted_item.dart';
import 'package:loopify/features/home/presentation/widgets/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            BannerImage(),
            const SizedBox(height: 24),
            SectionTitle(label: 'Categories'),
            const SizedBox(height: 24),
            SizedBox(
              height: 97,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) => CategoryItem(
                  label: categoryItems[index].label,
                  imagePath: categoryItems[index].imagePath,
                ),
                separatorBuilder: (_, _) => const SizedBox(width: 12),
                itemCount: categoryItems.length,
              ),
            ),
            const SizedBox(height: 36),
            SectionTitle(label: 'Promoted Items'),
            const SizedBox(height: 20),
            GridView.builder(
              padding: EdgeInsets.fromLTRB(20, 4, 20, 20),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 167,
                mainAxisSpacing: 24,
                crossAxisSpacing: 16,
                childAspectRatio: 0.6,
              ),
              itemCount: promotedItems.length,
              itemBuilder: (context, index) => PromotedItem(
                label: promotedItems[index].label,
                imagePath: promotedItems[index].imagePath,
                price: promotedItems[index].price,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
