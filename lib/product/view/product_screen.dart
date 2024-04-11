import 'package:flutter/material.dart';
import 'package:restaurant_api/common/component/pagination_list_view.dart';
import 'package:restaurant_api/product/component/product_card.dart';
import 'package:restaurant_api/product/model/product_model.dart';
import 'package:restaurant_api/product/provider/product_provider.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PaginationListView<ProductModel>(
      provider: productProvider,
      itemBuilder: <ProductModel>(_, index, model) {
        return ProductCard.fromProductModel(
          model: model,
        );
      },
    );
  }
}
