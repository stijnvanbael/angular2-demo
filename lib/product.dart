import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'app_component.dart';

@Component(selector: 'product',
    templateUrl: 'product.html')
class Product {
  String name;
  String image;

  Product(RouteParams routeParams) {
    var productId = routeParams.get('product');
    var category = categoryData.where((c) => c['products'].where((p) => p['id'] == productId).isNotEmpty).first;
    var product = category['products'].where((p) => p['id'] == productId).first;
    name = product['name'];
    image = product['image'];
  }

}