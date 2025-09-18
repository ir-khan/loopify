import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:loopify/features/home/data/data.dart';
import 'package:loopify/features/home/presentation/widgets/banner_image.dart';
import 'package:loopify/features/home/presentation/widgets/category_item.dart';
import 'package:loopify/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:loopify/features/home/presentation/widgets/custom_search_bar.dart';
import 'package:loopify/features/home/presentation/widgets/promoted_item.dart';
import 'package:loopify/core/widgets/section_title.dart';
import 'package:loopify/core/routes/routes.dart';
import 'package:loopify/core/routes/routes_params.dart';
import 'package:loopify/features/listing/data/providers/provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  const HomeScreen.route(
    BuildContext context,
    GoRouterState state, {
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsState = ref.watch(productNotifierProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            const CustomAppBar(),
            const SizedBox(height: 24),
            const CustomSearchBar(),
            const SizedBox(height: 24),
            const BannerImage(),
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
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) => CategoryItem(
                  label: dummyCategories[index].label,
                  imagePath: dummyCategories[index].imagePath,
                ),
                separatorBuilder: (_, __) => const SizedBox(width: 12),
                itemCount: dummyCategories.length,
              ),
            ),
            const SizedBox(height: 36),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SectionTitle(label: 'Promoted Items'),
            ),
            const SizedBox(height: 20),

            productsState.when(
              data: (products) {
                if (products.isEmpty) {
                  return Center(
                    child: Text(
                      'No Products',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  );
                }
                return GridView.builder(
                  padding: const EdgeInsets.fromLTRB(20, 4, 20, 20),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 24,
                    crossAxisSpacing: 16,
                    mainAxisExtent: 260,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) => PromotedItem(
                    product: products[index],
                    onTap: () {
                      context.goNamed(
                        AppRoutes.productDetails.name,
                        pathParameters: {
                          RoutesParams.productId:
                              products[index].id.toString(),
                        },
                      );
                    },
                  ),
                );
              },
              loading: () =>
                  const Center(child: CircularProgressIndicator.adaptive()),
              error: (error, stack) => Center(
                child: Text(
                  'Error: $error',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
