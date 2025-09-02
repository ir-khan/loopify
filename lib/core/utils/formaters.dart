import 'package:intl/intl.dart';

// final priceFormater = NumberFormat('#,###', 'en_US');

String priceFormater(
  num value, {
  String? newPattern = '#,###',
  String? locale = 'en_US',
}) {
  final formatter = NumberFormat(newPattern, locale);

  return '${formatter.currencyName} ${formatter.format(value)}';
}
