import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_api/common/component/pagination_list_view.dart';
import 'package:restaurant_api/restaurant/component/restaurant_card.dart';
import 'package:restaurant_api/restaurant/provider/restaurant_provider.dart';
import 'package:restaurant_api/restaurant/view/restaurant_detail_screen.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PaginationListView(
      provider: restaurantProvider,
      itemBuilder: <RestaurantModel>(_, index, model) {
        return GestureDetector(
          onTap: () {
            context.goNamed(
              RestaurantDetailScreen.routeName,
              pathParameters: {
                'rid': model.id,
              },
            );
          },
          child: RestaurantCard.fromModel(
            model: model,
          ),
        );
      },
    );
  }
}
