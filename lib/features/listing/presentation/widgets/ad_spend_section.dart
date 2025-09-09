import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loopify/core/theme/colors.dart';
import 'package:loopify/features/listing/data/data.dart';
import 'package:loopify/features/listing/data/model/ad_spend_mode/ad_spend_mode.dart';

class AdSpendSection extends StatefulWidget {
  final bool isAdSpend;
  final AdSpendMode? currentAdSpend;
  final ValueChanged<bool> onToggle;
  final ValueChanged<AdSpendMode?> onAdSpendChanged;

  const AdSpendSection({
    super.key,
    required this.isAdSpend,
    required this.onToggle,
    required this.onAdSpendChanged,
    this.currentAdSpend,
  });

  @override
  State<AdSpendSection> createState() => _AdSpendSectionState();
}

class _AdSpendSectionState extends State<AdSpendSection> {
  final _amountController = TextEditingController();
  final _daysController = TextEditingController();

  AdSpendModeType? _adSpendMode; //  = AdSpendModeType.packages
  PackageAdSpend? _selectedPackage;

  @override
  void initState() {
    super.initState();

    if (widget.currentAdSpend case final adSpend?) {
      switch (adSpend) {
        case PackageAdSpend():
          _adSpendMode = AdSpendModeType.packages;
          _selectedPackage = adSpend;
          break;

        case ManualAdSpend():
          _adSpendMode = AdSpendModeType.manual;
          _amountController.text = adSpend.budget.toStringAsFixed(0);
          _daysController.text = adSpend.days.toString();
          break;
      }
    }
  }

  @override
  void dispose() {
    _amountController.dispose();
    _daysController.dispose();
    super.dispose();
  }

  void _emitAdSpendMode() {
    if (!widget.isAdSpend) {
      widget.onAdSpendChanged(null);
      return;
    }

    switch (_adSpendMode) {
      case AdSpendModeType.packages:
        widget.onAdSpendChanged(_selectedPackage);
        break;

      case AdSpendModeType.manual:
        final amount = double.tryParse(_amountController.text);
        final days = int.tryParse(_daysController.text);
        if (amount != null && days != null && amount > 0 && days > 0) {
          widget.onAdSpendChanged(
            AdSpendMode.manual(budget: amount, days: days),
          );
        } else {
          widget.onAdSpendChanged(null);
        }
        break;
      case null:
        widget.onAdSpendChanged(null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Ad spend',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.secondaryTextColor,
                height: 1.1,
              ),
            ),
            CupertinoSwitch(
              value: widget.isAdSpend,
              onChanged: (val) {
                widget.onToggle(val);
                _emitAdSpendMode();
              },
              activeTrackColor: AppColors.primary,
              inactiveTrackColor: AppColors.inactiveSwitchColor,
            ),
          ],
        ),
        Divider(height: 1, color: AppColors.disabledButtonForegroungColor),
        if (widget.isAdSpend) ...[
          const SizedBox(height: 48),
          Row(
            children: [
              Expanded(
                child: _buildToggleButton(
                  context,
                  label: "Packages",
                  isActive: _adSpendMode == AdSpendModeType.packages,
                  onPressed: () => setState(() {
                    _adSpendMode = AdSpendModeType.packages;
                    _emitAdSpendMode();
                  }),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _buildToggleButton(
                  context,
                  label: "Manual",
                  isActive: _adSpendMode == AdSpendModeType.manual,
                  onPressed: () => setState(() {
                    _adSpendMode = AdSpendModeType.manual;
                    _emitAdSpendMode();
                  }),
                ),
              ),
            ],
          ),
          if (_adSpendMode == AdSpendModeType.packages ||
              _adSpendMode == AdSpendModeType.manual)
            const SizedBox(height: 48),
          if (_adSpendMode == AdSpendModeType.packages)
            Column(
              spacing: 16,
              children: dummyPackages.map((package) {
                return switch (package) {
                  PackageAdSpend() => GestureDetector(
                    onTap: () {
                      setState(() => _selectedPackage = package);
                      _emitAdSpendMode();
                    },
                    child: _PackageCard(
                      package: package,
                      isSelected: _selectedPackage == package,
                    ),
                  ),
                  ManualAdSpend() => const SizedBox.shrink(),
                };
              }).toList(),
            ),
          if (_adSpendMode == AdSpendModeType.manual)
            Row(
              children: [
                Expanded(
                  child: _LabeledNumberField(
                    label: "Amount",
                    controller: _amountController,
                    onChanged: (_) => _emitAdSpendMode(),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _LabeledNumberField(
                    label: "Days",
                    controller: _daysController,
                    onChanged: (_) => _emitAdSpendMode(),
                  ),
                ),
              ],
            ),
        ],
      ],
    );
  }

  Widget _buildToggleButton(
    BuildContext context, {
    required String label,
    required bool isActive,
    required VoidCallback onPressed,
  }) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: isActive
            ? AppColors.primary
            : AppColors.primaryTextColor,
        textStyle: Theme.of(
          context,
        ).textTheme.bodyMedium?.copyWith(height: 1.1),
        side: BorderSide(
          color: isActive
              ? AppColors.primary
              : AppColors.disabledButtonForegroungColor,
        ),
      ),
      child: Text(label),
    );
  }
}

class _PackageCard extends StatelessWidget {
  final PackageAdSpend package;
  final bool isSelected;

  const _PackageCard({required this.package, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    final pricePerDay = package.price / package.duration.inDays;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.primaryBackgroundColor,
        border: Border.all(
          color: isSelected ? AppColors.primary : Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        spacing: 10,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                package.name,
                style: Theme.of(
                  context,
                ).textTheme.labelLarge?.copyWith(color: AppColors.black),
              ),
              Text(
                "${package.price.toInt()}\$",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: AppColors.primary,
                  height: 1.1,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${package.duration.inDays} Days"),
              Text(
                "\$${pricePerDay.toInt()} / Day",
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(height: 1.1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _LabeledNumberField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;

  const _LabeledNumberField({
    required this.label,
    required this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: AppColors.black, height: 1.1),
        ),
        TextFormField(
          controller: controller,
          onChanged: onChanged,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(
                color: AppColors.disabledButtonForegroungColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(
                color: AppColors.disabledButtonForegroungColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(color: AppColors.primary),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(color: AppColors.error),
            ),
          ),
        ),
      ],
    );
  }
}
