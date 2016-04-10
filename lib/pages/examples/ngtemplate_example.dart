// Copyright (c) 2016, <Devin White>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';

@Component(selector: 'my-ngtemplate-example',
    templateUrl: 'ngtemplate_example.html',
    directives: const [COMMON_DIRECTIVES])
class NGTemplateExample
{
  List list;

  NGTemplateExample()
  {
    list = ["Hello", 3, true];
  }
}
