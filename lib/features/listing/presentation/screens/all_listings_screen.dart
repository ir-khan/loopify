import 'dart:io';

import 'package:flutter/material.dart';
import 'package:loopify/app.dart';
import 'package:loopify/core/theme/colors.dart';
import 'package:loopify/core/utils/formaters.dart';
import 'package:loopify/features/listing/data/model/product/product.dart';
import 'package:loopify/features/listing/presentation/screens/create_listing_screen.dart';

class AllListingsScreen extends StatefulWidget {
  const AllListingsScreen({super.key});

  @override
  State<AllListingsScreen> createState() => _AllListingsScreenState();
}

class _AllListingsScreenState extends State<AllListingsScreen> {
  bool _isLoading = false;
  late List<Product> products;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    setState(() {
      _isLoading = true;
    });
    products = await productLocalRepository.getAllProducts();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: _isLoading
            ? Center(child: CircularProgressIndicator.adaptive())
            : Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ListView.separated(
                  itemCount: products.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                CreateListingScreen(product: products[index]),
                          ),
                        );
                      },
                      leading: Image.file(
                        File(products[index].imagePaths[0]),
                        width: 48,
                        height: 48,
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        products[index].title,
                        overflow: TextOverflow.fade,
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(),
                      ),
                      subtitle: Text(
                        priceFormater(products[index].price),
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: AppColors.primary,
                          height: 1,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          productLocalRepository.deleteProductById(
                            products[index].id!,
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
              ),
      ),
    );
  }
}
