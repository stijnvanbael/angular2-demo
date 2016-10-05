import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'app_component.dart';

@Component(selector: 'product',
    templateUrl: 'product.html',
    providers: const [ROUTER_PROVIDERS])
class Product {
  String name;
  String image;

  Product(RouteParams routeParams) {
    var productId = routeParams.get('product');
    var product = categoryData.where((c) => c['id'] == 'smartphones').first['products'].where((p) => p['id'] == productId).first;
    name = product['name'];
    image = product['image'];
  }

}