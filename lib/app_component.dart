// Copyright (c) 2016, Stijn Van Bael. All rights reserved. Use of this source code

// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/common.dart';
import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:angular2_demo/category.dart';
import 'package:angular2_demo/empty.dart';

@Component(
    selector: 'my-app',
    styleUrls: const ['app_component.css'],
    templateUrl: 'app_component.html',
    directives: const [ROUTER_DIRECTIVES, NgFor])
@RouteConfig(const [
  const Route(path: '/', name: 'Empty', component: Empty, useAsDefault: true),
  const Route(path: '/categories/:category/...', name: 'Category', component: Category)
])
class AppComponent {
  List<Map> categories = categoryData;
}

List<Map> categoryData = [
  {
    'id': 'smartphones',
    'name': 'Smartphones',
    'products': [
      {
        'id': 'lg-nexus-5x',
        'name': 'LG Nexus 5X',
        'image': 'https://ic.tweakimg.net/ext/i/2000776747.jpeg'
      },
      {
        'id': 'samsung-galaxy-s7',
        'name': 'Samsung Galaxy S7',
        'image': 'https://ic.tweakimg.net/ext/i/imagelarge/2000929171.png'
      }
    ]
  },
  {
    'id': 'tablets',
    'name': 'Tablets',
    'products': [
      {
        'id': 'apple-ipad-air',
        'name': 'Apple iPad Air',
        'image': 'https://ic.tweakimg.net/ext/i/imagelarge/1382468035.jpeg'
      },
      {
        'id': 'asus-nexus-7',
        'name': 'Asus Nexus 7',
        'image': 'https://ic.tweakimg.net/ext/i/1397572770.png'
      }
    ]

  }
];