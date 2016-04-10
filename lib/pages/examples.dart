// Copyright (c) 2016, <Devin White>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2_dart/pages/examples/ngtemplate_example.dart';
import 'package:angular2_dart/pages/examples/nginput_example.dart';

@Component(selector: 'my-examples-page',
    templateUrl: 'examples.html',
    directives: const [NGTemplateExample, NGInputExample])
class ExamplesPage
{

}
