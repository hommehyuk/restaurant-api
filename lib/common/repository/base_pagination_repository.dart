import 'package:restaurant_api/common/model/cursor_pagination_model.dart';
import 'package:restaurant_api/common/model/pagination_params.dart';

abstract class IBasePaginationRepository<T> {
  Future<CursorPagination<T>> paginate({
    PaginationParams? paginationParams = const PaginationParams(),
  });
}
