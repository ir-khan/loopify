import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:loopify/core/routes/routes.dart';
import 'package:loopify/core/routes/routes_params.dart';
import 'package:loopify/core/theme/colors.dart';
import 'package:loopify/core/utils/formaters.dart';
import 'package:loopify/features/listing/data/providers/provider.dart';

class AllListingsScreen extends ConsumerWidget {
  const AllListingsScreen({super.key});

  const AllListingsScreen.route(
    BuildContext context,
    GoRouterState state, {
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(productNotifierProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: productsAsync.when(
          loading: () =>
              const Center(child: CircularProgressIndicator.adaptive()),
          error: (err, st) => Center(child: Text('Error: $err')),
          data: (products) {
            if (products.isEmpty) {
              return Center(
                child: Text(
                  'No Products',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              );
            }
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ListView.separated(
                itemCount: products.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListTile(
                    onTap: () async {
                      context.goNamed(
                        AppRoutes.productEdit.name,
                        pathParameters: {
                          RoutesParams.productId: products[index].id.toString(),
                        },
                      );
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) =>
                      //         CreateListingScreen(product: products[index]),
                      //   ),
                      // ).then((val) {
                      //   // if (val) {
                      //   setState(() {});
                      //   // }
                      // });
                    },
                    leading: products[index].imagePaths[0].startsWith('/')
                        ? Image.file(
                            File(products[index].imagePaths[0]),
                            fit: BoxFit.cover,
                            width: 48,
                            height: 48,
                          )
                        : Image.asset(
                            products[index].imagePaths[0],
                            fit: BoxFit.cover,
                            width: 48,
                            height: 48,
                          ),
                    title: Text(
                      products[index].title,
                      overflow: TextOverflow.fade,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(),
                    ),
                    subtitle: Text(
                      priceFormater(products[index].price),
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: AppColors.primary,
                        height: 1,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () async {
                        await ref
                            .read(productNotifierProvider.notifier)
                            .deleteProduct(products[index].id!);

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Product deleted successfully'),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.delete_outline_rounded,
                        color: AppColors.error,
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 0,
                    ),
                    isThreeLine: true,
                    visualDensity: VisualDensity.compact,
                    // shape: RoundedRectangleBorder(
                    //   side: BorderSide(
                    //     color: AppColors.disabledButtonForegroungColor,
                    //   ),
                    //   borderRadius: BorderRadiusGeometry.circular(4),
                    // ),
                  ),
                ),
                separatorBuilder: (_, _) => const SizedBox(height: 5),
              ),
            );
          },
        ),
      ),
    );
  }
}
