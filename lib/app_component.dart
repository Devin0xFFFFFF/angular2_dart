// Copyright (c) 2016, <Devin White>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';
import 'package:angular2_dart/pages/home.dart';
import 'package:angular2_dart/pages/examples.dart';
import 'package:angular2_dart/pages/404.dart';

@Component(selector: 'my-app',
    templateUrl: 'app_component.html',
    directives: const [ROUTER_DIRECTIVES])
@RouteConfig(const [
  const Route(path: '/', component: HomePage, name: 'HomePage', useAsDefault: true),
  const Route(path: '/examples/...', component: ExamplesPage, name: 'ExamplesPage'),
  const Route(path: '/404', component: ErrorPage404, name: '404'),
])
class AppComponent
{
  Router router;

  AppComponent(this.router)
  {
    _createRouterListener();
  }

  _createRouterListener()
  {
    //Add a listener to reroute requests that are not in routes to a 404 page
    router.subscribe(
        (ins){}, (err){
          router.deactivate(router.currentInstruction);
          router.navigateByInstruction(router.generate(['/404', {'page': err}]));
        }
    );
  }
}
