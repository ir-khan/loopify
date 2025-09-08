import 'package:flutter/material.dart';
import 'package:loopify/app.dart';
import 'package:loopify/core/theme/colors.dart';
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
                      title: Text(products[index].title),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: AppColors.disabledButtonForegroungColor,
                        ),
                        borderRadius: BorderRadiusGeometry.circular(4),
                      ),
                    ),
                  ),
                  separatorBuilder: (_, _) => const SizedBox(height: 20),
                ),
              ),
      ),
    );
  }
}
