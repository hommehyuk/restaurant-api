import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_api/common/model/cursor_pagination_model.dart';
import 'package:restaurant_api/common/provider/pagination_provider.dart';
import 'package:restaurant_api/rating/model/rating_model.dart';
import 'package:restaurant_api/restaurant/repository/restaurant_rating_repository.dart';

final restaurantRatingProvider = StateNotifierProvider.family<
    RestaurantRatingStateNotifier, CursorPaginationBase, String>((ref, id) {
  final repo = ref.watch(
    restaurantRatingRepositoryProvider(id),
  );

  return RestaurantRatingStateNotifier(repository: repo);
});

class RestaurantRatingStateNotifier
    extends PaginationProvider<RatingModel, RestaurantRatingRepository> {
  RestaurantRatingStateNotifier({
    required super.repository,
  });
}
