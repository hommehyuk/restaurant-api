import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_api/common/component/pagination_list_view.dart';
import 'package:restaurant_api/product/component/product_card.dart';
import 'package:restaurant_api/product/model/product_model.dart';
import 'package:restaurant_api/product/provider/product_provider.dart';
import 'package:restaurant_api/restaurant/view/restaurant_detail_screen.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PaginationListView<ProductModel>(
      provider: productProvider,
      itemBuilder: <ProductModel>(_, index, model) {
        return GestureDetector(
          onTap: () {
            context.goNamed(
              RestaurantDetailScreen.routeName,
              pathParameters: {
                'rid': model.restaurant.id,
              },
            );
          },
          child: ProductCard.fromProductModel(
            model: model,
          ),
        );
      },
    );
  }
}
