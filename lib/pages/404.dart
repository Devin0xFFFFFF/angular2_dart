// Copyright (c) 2016, <Devin White>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

@Component(selector: 'my-404',
    templateUrl: '404.html',
    directives: const [COMMON_DIRECTIVES])
class ErrorPage404
{
  String page;

  ErrorPage404(RouteParams params)
  {
    if(page == null)
    {
      page = params.get('page');
    }
  }
}
