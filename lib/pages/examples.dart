// Copyright (c) 2016, <Devin White>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:angular2_dart/pages/examples/ngtemplate_example.dart';
import 'package:angular2_dart/pages/examples/nginput_example.dart';

@Component(selector: 'my-examples-page',
    templateUrl: 'examples.html',
    directives: const [ROUTER_DIRECTIVES])
@RouteConfig(const [
  const Route(path: 'template_example', component: NGTemplateExample, name: 'TemplateExample', useAsDefault: true),
  const Route(path: 'input_example', component: NGInputExample, name: 'InputExample'),
])
class ExamplesPage
{
  Router router;

  ExamplesPage(this.router)
  {

  }
}
