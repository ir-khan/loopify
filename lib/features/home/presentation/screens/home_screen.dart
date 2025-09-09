import 'package:flutter/material.dart';
import 'package:loopify/features/home/data/data.dart';
import 'package:loopify/features/home/presentation/widgets/banner_image.dart';
import 'package:loopify/features/home/presentation/widgets/category_item.dart';
import 'package:loopify/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:loopify/features/home/presentation/widgets/custom_search_bar.dart';
import 'package:loopify/features/home/presentation/widgets/promoted_item.dart';
import 'package:loopify/core/widgets/section_title.dart';
import 'package:loopify/features/listing/presentation/screens/product_details_screen.dart';
import 'package:loopify/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            CustomAppBar(),
            const SizedBox(height: 24),
            CustomSearchBar(),
            const SizedBox(height: 24),
            BannerImage(),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SectionTitle(label: 'Categories'),
            ),
            const SizedBox(height: 24),
            SizedBox(
              height: 97,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) => CategoryItem(
                  label: dummyCategories[index].label,
                  imagePath: dummyCategories[index].imagePath,
                ),
                separatorBuilder: (_, _) => const SizedBox(width: 12),
                itemCount: dummyCategories.length,
              ),
            ),
            const SizedBox(height: 36),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SectionTitle(label: 'Promoted Items'),
            ),
            const SizedBox(height: 20),
            FutureBuilder(
              future: productLocalRepository.getAllProducts(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator.adaptive());
                }
                if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(
                    child: Text(
                      'No Products',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  );
                }
                final products = snapshot.data;
                return GridView.builder(
                  padding: EdgeInsets.fromLTRB(20, 4, 20, 20),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 16,
                    mainAxisExtent: 260,
                  ),
                  itemCount: products!.length,
                  itemBuilder: (context, index) => PromotedItem(
                    product: products[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailsScreen(product: products[index]),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
