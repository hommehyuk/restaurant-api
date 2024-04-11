import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_api/product/provider/product_provider.dart';

class ProductTab extends ConsumerStatefulWidget {
  const ProductTab({super.key});

  @override
  ConsumerState<ProductTab> createState() => _ProductTabState();
}

class _ProductTabState extends ConsumerState<ProductTab> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(productProvider);

    return Center(
      child: Text('음식'),
    );
  }
}
