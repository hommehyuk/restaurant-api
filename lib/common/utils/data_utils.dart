import 'package:restaurant_api/common/const/data.dart';

class DataUtils {
  static String pathToUrl(String value) {
    return 'http://$ip$value';
  }

  static listPathsToUrls(List paths) {
    return paths.map((e) => pathToUrl(e)).toList();
  }
}
