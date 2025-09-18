import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:loopify/core/routes/routes_params.dart';
import 'package:loopify/core/widgets/section_title.dart';
import 'package:loopify/features/listing/data/providers/provider.dart';
import 'package:loopify/features/listing/presentation/widgets/action_buttons.dart';
import 'package:loopify/features/listing/presentation/widgets/product_details_section.dart';
import 'package:loopify/features/listing/presentation/widgets/product_images_stack.dart';
import 'package:loopify/features/listing/presentation/widgets/product_thumbnails_row.dart';
import 'package:loopify/features/listing/presentation/widgets/product_title_section.dart';
import 'package:loopify/features/listing/presentation/widgets/seller_details_card.dart';
import 'package:loopify/features/listing/presentation/widgets/seller_note_section.dart';

class ProductDetailsScreen extends ConsumerWidget {
  const ProductDetailsScreen({
    super.key,
    required this.productId,
  });

   ProductDetailsScreen.route(
    BuildContext context,
    GoRouterState state, {
    super.key,
  }) : productId = int.parse(state.pathParameters[RoutesParams.productId]!);

  final int productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productAsync = ref.watch(productByIdProvider(productId));

    return Scaffold(
      body: productAsync.when(
        loading: () =>
            const Center(child: CircularProgressIndicator.adaptive()),
        error: (error, _) => Center(
          child: Text(
            'Error: $error',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        data: (product) => SingleChildScrollView(
          child: Column(
            spacing: 16,
            children: [
              ProductImagesStack(
                imagePaths: product!.imagePaths,
                onBack: () => Navigator.pop(context),
                onShare: () {},
                onFavorite: () {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProductThumbnailsRow(imagePaths: product.imagePaths),
                    const SizedBox(height: 24),
                    ProductTitleSection(product: product),
                    const SizedBox(height: 36),
                    ProductDetailsSection(product: product),
                    const SizedBox(height: 36),
                    const SectionTitle(label: 'Seller details:'),
                    const SizedBox(height: 24),
                    const SellerDetailsCard(),
                    if (product.note != null)
                      SellerNoteSection(note: product.note!),
                    const SizedBox(height: 48),
                    ActionButtons(
                      onChatPressed: () {},
                      onReportPressed: () {},
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
