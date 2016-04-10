// Copyright (c) 2016, <Devin White>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'package:angular2_dart/pages/home.dart';
import 'package:angular2_dart/pages/examples.dart';

@Component(selector: 'my-app',
    templateUrl: 'app_component.html',
    directives: const [HomePage, ExamplesPage])
class AppComponent
{

}
