import 'dart:io';

import 'package:flutter/material.dart';
import 'package:loopify/core/theme/colors.dart';
import 'package:loopify/core/utils/formaters.dart';
import 'package:loopify/features/listing/presentation/screens/create_listing_screen.dart';
import 'package:loopify/main.dart';

class AllListingsScreen extends StatefulWidget {
  const AllListingsScreen({super.key});

  @override
  State<AllListingsScreen> createState() => _AllListingsScreenState();
}

class _AllListingsScreenState extends State<AllListingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: FutureBuilder(
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

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: ListView.separated(
                itemCount: products!.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListTile(
                    onTap: () async {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CreateListingScreen(product: products[index]),
                        ),
                      ).then((val) {
                        // if (val) {
                        setState(() {});
                        // }
                      });
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
                      onPressed: () {
                        productLocalRepository.deleteProductById(
                          products[index].id!,
                        );
                        setState(() {});
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
