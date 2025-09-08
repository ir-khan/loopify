import 'package:flutter/material.dart' hide MaterialType;
import 'package:loopify/app.dart';
import 'package:loopify/core/widgets/custom_preferred_sized_app_bar.dart';
import 'package:loopify/features/home/data/data.dart';
import 'package:loopify/features/listing/data/data.dart';
import 'package:loopify/features/listing/data/model/ad_spend_mode/ad_spend_mode.dart';
import 'package:loopify/features/listing/data/model/category/category.dart';
import 'package:loopify/features/listing/data/model/location/location.dart';
import 'package:loopify/features/listing/data/model/product/product.dart';
import 'package:loopify/features/listing/presentation/widgets/ad_spend_section.dart';
import 'package:loopify/features/listing/presentation/widgets/images_section.dart';
import 'package:loopify/features/listing/presentation/widgets/item_details_first_section.dart';
import 'package:loopify/features/listing/presentation/widgets/item_details_second_section.dart';
import 'package:loopify/features/listing/presentation/widgets/price_section.dart';
import 'package:loopify/features/listing/presentation/widgets/note_section.dart';

class CreateListingScreen extends StatefulWidget {
  const CreateListingScreen({super.key, this.product});

  final Product? product;

  @override
  State<CreateListingScreen> createState() => _CreateListingScreenState();
}

class _CreateListingScreenState extends State<CreateListingScreen> {
  final _formKey = GlobalKey<FormState>();
  final ValueNotifier<bool> _isFormValid = ValueNotifier(false);

  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();
  final colorController = TextEditingController();
  final noteController = TextEditingController();

  List<String>? _selectedImages;
  Category? _selectedCategory;
  Condition? _selectedCondition;
  Location? _selectedLocation;
  MaterialType? _selectedMaterial;
  AdSpendMode? _adSpendMode;

  bool _isAdSpend = false;
  bool _isNegotiable = false;

  @override
  void initState() {
    super.initState();

    final product = widget.product;
    if (product != null) {
      titleController.text = product.title;
      descriptionController.text = product.description;
      priceController.text = product.price.toStringAsFixed(0);
      colorController.text = product.color;
      noteController.text = product.note ?? '';

      _selectedImages = product.imagePaths;
      _selectedCategory = product.category;
      _selectedCondition = product.condition;
      _selectedLocation = product.location;
      _selectedMaterial = product.material;
      _adSpendMode = product.adSpend;
      _isAdSpend = product.adSpend != null;
      _isNegotiable = product.isNegotiable;
      _updateFormValidState();
    }

    for (final c in [
      titleController,
      descriptionController,
      priceController,
      colorController,
    ]) {
      c.addListener(_updateFormValidState);
    }
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    priceController.dispose();
    colorController.dispose();
    noteController.dispose();
    super.dispose();
  }

  void _updateFormValidState() {
    final allTextFilled =
        titleController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        priceController.text.trim().isNotEmpty &&
        colorController.text.trim().isNotEmpty;

    final allDropdownsSelected =
        _selectedCategory != null &&
        _selectedCondition != null &&
        _selectedLocation != null &&
        _selectedMaterial != null &&
        (!_isAdSpend || _adSpendMode != null);

    _isFormValid.value = allTextFilled && allDropdownsSelected;
  }

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      final product = Product(
        id: widget.product?.id,
        title: titleController.text.trim(),
        imagePaths: _selectedImages!,
        description: descriptionController.text.trim(),
        price: double.parse(priceController.text.trim()),
        isNegotiable: _isNegotiable,
        condition: _selectedCondition!,
        category: _selectedCategory!,
        location: _selectedLocation!,
        material: _selectedMaterial!,
        color: colorController.text.trim(),
        note: noteController.text.trim(),
        adSpend: _adSpendMode,
      );
      print(product);
      if (widget.product == null) {
        print(" Creating listing...");
        productLocalRepository.createProduct(product);
      } else {
        print(" Updating listing...");
        productLocalRepository.updateProduct(product);
      }
    } else {
      print(" Validation failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: CustomPreferredSizedAppBar(
          label: widget.product == null ? 'Create listing' : 'Edit listing',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 24, 20, 32),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  ImagesSection(
                    selectedImages: _selectedImages ?? [],
                    onImagesChanged: (images) {
                      setState(() {
                        _selectedImages = images;
                        _updateFormValidState();
                      });
                    },
                  ),
                  const SizedBox(height: 36),
                  AdSpendSection(
                    isAdSpend: _isAdSpend,
                    currentAdSpend: _adSpendMode,
                    onToggle: (val) {
                      setState(() {
                        _isAdSpend = val;
                        _updateFormValidState();
                      });
                    },
                    onAdSpendChanged: (val) {
                      setState(() {
                        _adSpendMode = val;
                        _updateFormValidState();
                      });
                    },
                  ),
                  const SizedBox(height: 48),
                  ItemDetailsFirstSection(
                    categories: categories.take(5).toList(),
                    selectedCategory: _selectedCategory,
                    titleController: titleController,
                    descriptionController: descriptionController,
                    onCategoryChanged: (val) {
                      setState(() {
                        _selectedCategory = val;
                        _updateFormValidState();
                      });
                    },
                  ),
                  const SizedBox(height: 48),
                  PriceSection(
                    priceController: priceController,
                    isNegotiable: _isNegotiable,
                    onNegotiableChanged: (val) {
                      setState(() => _isNegotiable = val ?? false);
                    },
                  ),
                  const SizedBox(height: 48),
                  ItemDetailsSecondSection(
                    locations: locations,
                    selectedCondition: _selectedCondition,
                    selectedLocation: _selectedLocation,
                    selectedMaterial: _selectedMaterial,
                    colorController: colorController,
                    onConditionChanged: (val) {
                      setState(() {
                        _selectedCondition = val;
                        _updateFormValidState();
                      });
                    },
                    onLocationChanged: (val) {
                      setState(() {
                        _selectedLocation = val;
                        _updateFormValidState();
                      });
                    },
                    onMaterialChanged: (val) {
                      setState(() {
                        _selectedMaterial = val;
                        _updateFormValidState();
                      });
                    },
                  ),
                  const SizedBox(height: 48),
                  NoteSection(noteController: noteController),
                  const SizedBox(height: 64),
                  ValueListenableBuilder<bool>(
                    valueListenable: _isFormValid,
                    builder: (context, isValid, _) {
                      return SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: FilledButton(
                          onPressed: isValid ? _submitForm : null,
                          child: Text(
                            widget.product == null
                                ? 'CREATE LISTING'
                                : 'UPDATE LISTING',
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
