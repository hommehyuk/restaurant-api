import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_api/common/const/data.dart';
import 'package:restaurant_api/common/dio/dio.dart';
import 'package:restaurant_api/common/model/cursor_pagination_model.dart';
import 'package:restaurant_api/common/model/pagination_params.dart';
import 'package:restaurant_api/common/repository/base_pagination_repository.dart';
import 'package:restaurant_api/restaurant/model/restaurant_detail_model.dart';
import 'package:restaurant_api/restaurant/model/restaurant_model.dart';
import 'package:retrofit/retrofit.dart';

part 'restaurant_repository.g.dart';

final restaurantRepositoryProvider = Provider<RestaurantRepository>(
  (ref) {
    final dio = ref.watch(dioProvider);

    final repository = RestaurantRepository(
      dio,
      baseUrl: 'http://$ip/restaurant',
    );
    return repository;
  },
);

@RestApi()
abstract class RestaurantRepository
    implements IBasePaginationRepository<RestaurantModel> {
  // http://$ip/restaurant
  factory RestaurantRepository(Dio dio, {String baseUrl}) =
      _RestaurantRepository;

  // http://$ip/restaurant/
  @GET('/')
  @Headers({
    'accessToken': ' true',
  })
  Future<CursorPagination<RestaurantModel>> paginate({
    @Queries() PaginationParams? paginationParams = const PaginationParams(),
  });

  // http://$ip/restaurant/:id
  @GET('/{id}')
  @Headers({
    'accessToken': ' true',
  })
  Future<RestaurantDetailModel> getRestaurantDetail({
    @Path() required String id,
  });
}
