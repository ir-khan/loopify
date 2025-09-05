import 'package:flutter/material.dart';
import 'package:loopify/core/widgets/section_title.dart';
import 'package:loopify/features/listing/data/model/product.dart';
import 'package:loopify/features/listing/presentation/widgets/action_buttons.dart';
import 'package:loopify/features/listing/presentation/widgets/product_details_section.dart';
import 'package:loopify/features/listing/presentation/widgets/product_images_stack.dart';
import 'package:loopify/features/listing/presentation/widgets/product_thumbnails_row.dart';
import 'package:loopify/features/listing/presentation/widgets/product_title_section.dart';
import 'package:loopify/features/listing/presentation/widgets/seller_details_card.dart';
import 'package:loopify/features/listing/presentation/widgets/seller_note_section.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          spacing: 16,
          children: [
            ProductImagesStack(
              imagePaths: product.imagePaths,
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
                  ActionButtons(onChatPressed: () {}, onReportPressed: () {}),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
