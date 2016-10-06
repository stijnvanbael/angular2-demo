import 'package:angular2/common.dart';
import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'app_component.dart';
import 'package:angular2_demo/empty.dart';
import 'package:angular2_demo/product.dart';

@Component(selector: 'category',
    templateUrl: 'category.html',
    directives: const [ROUTER_DIRECTIVES, NgFor])
@RouteConfig(const [
  const Route(path: '/', name: 'Empty', component: Empty, useAsDefault: true),
  const Route(path: '/products/:product', name: 'Product', component: Product)
])
class Category {
  String name;
  List<Map> products;
  String id;

  Category(RouteParams routeParams) {
    var categoryId = routeParams.get('category');
    var category = categoryData.where((c) => c['id'] == categoryId).first;
    name = category['name'];
    id = category['id'];
    products = category['products'];
  }
}