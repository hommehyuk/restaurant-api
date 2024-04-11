import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_api/common/model/cursor_pagination_model.dart';
import 'package:restaurant_api/common/provider/pagination_provider.dart';
import 'package:restaurant_api/product/model/product_model.dart';
import 'package:restaurant_api/product/repository/product_repository.dart';

final productProvider =
    StateNotifierProvider<ProductStateNotifier, CursorPaginationBase>((ref) {
  final repo = ref.watch(productRepositoryProvider);

  return ProductStateNotifier(repository: repo);
});

class ProductStateNotifier
    extends PaginationProvider<ProductModel, ProductRepository> {
  ProductStateNotifier({
    required super.repository,
  });
}
