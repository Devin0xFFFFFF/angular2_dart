// Copyright (c) 2016, <Devin White>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/angular2.dart';

@Component(selector: 'my-nginput-example',
    templateUrl: 'nginput_example.html',
    directives: const [COMMON_DIRECTIVES])
class NGInputExample
{
  Account account;
  List<Account> accounts;

  NGInputExample()
  {
    account = new Account();
    accounts = [];
  }

  onSubmit()
  {
    accounts.add(account);
    account = new Account();
  }
}

class Account
{
  String firstname, lastname;
  String email;
  String password;

  Account([this.firstname = "", this.lastname = "", this.email = "", this.password = ""])
  {

  }

  toString()
  {
    return "$firstname $lastname : $email : $password";
  }
}
