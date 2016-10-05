// Copyright (c) 2016, Stijn Van Bael. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2/platform/browser.dart';
import 'package:angular2/platform/common.dart';
import 'package:angular2_demo/app_component.dart';

main() {
  bootstrap(AppComponent, [
    provide(LocationStrategy, useClass: HashLocationStrategy)
  ]);
}
