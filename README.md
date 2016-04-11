# angular2_dart
###A repository for testing Angular 2 with Dart

####Project Contents:

This project consists of a simple Angular 2 App written in Dart.
It can be used as a reference for anyone interested in looking at a
project complete with multiple components, routing, HTTP requests,
one and two way binding, as well as other uses for directives.

####References:

- [Angular 2 with Dart Quickstart](https://angular.io/docs/dart/latest/quickstart.html)
- [Angular 2 with Dart Official Guide](https://angular.io/docs/dart/latest/guide/)
- [Angular 2 with Dart Cheatsheet](https://angular.io/docs/dart/latest/cheatsheet.html)
- [Angular 2 with Typescript Example Projects](http://builtwithangular2.com/)
- [Dart Cheatsheet](http://dartlangfr.net/dart-cheat-sheet/)
- [Dart Async Tutorial](https://www.dartlang.org/docs/tutorials/futures/)

####Dependencies:

You will require a copy of the Dart SDK, which includes the pub package manager.
The [Download Page](https://www.dartlang.org/downloads/ "Download Dart SDK") contains OS specific instructions.

To develop more effectively, also [Download Dartium](https://www.dartlang.org/tools/dartium/ "Download Dartium"),
a version of Chromium with the Dart SDK installed. This will make development much easier, as you can natively run Dart code when developing
instead of compiling it to Javascript.

It is recommended to develop in the [Webstorm IDE](https://www.jetbrains.com/webstorm/ "Download Webstorm")
or [some other IDE or editor](https://www.dartlang.org/tools/ "Dart Tools") that has a plugin for Dart.

####Running The App:

First, make sure to run pub get / pub upgrade in the project root to retrieve any necessary packages.

Then, for production, run pub build to compile your Dart code to JavaScript.
The generated JavaScript appears, along with supporting files, under the build directory.

You have a few options for running your app.
One is to launch a local HTTP server and then view the app in Dartium.
You can use whatever server you like, such as WebStorm's server or Python's SimpleHTTPServer.

Another option is to build and serve the app using pub serve, and then run it by visiting http://localhost:8080 in any modern browser.
Pub serve generates the JavaScript on the fly, which can take a while when you first visit the page.

####Troubleshooting:

When developing Angular 2 in Dart,
you need to be aware that you are working with a beta framework,
meaning it can often create a lot of cryptic error messages that often boil down to
linking errors and missing references.

Below are listed some common steps and solutions I have found
when working with the Angular 2 framework in Dart.

- When in doubt, pub build in debug mode. Not all errors show when you execute the app in Dartium.
Forcing an attempt at compiling to Javascript will often show linking errors in your project
that if not built, will just leave the app hanging.

- Make sure to check that templateUrls are referenced correctly, for example templateUrl: "app_omponent.html"
when it is actually "app_component.html".
    > [DirectiveProcessor on angular2_dart|lib/app_component.dart]:
    > ERROR: Invalid argument (url): "Could not read asset at uri asset:angular2_dart/lib/app_omponent.html"

- Check selectors are named correctly in the html files.
    >EXCEPTION: The selector "my-app" did not match any elements

- Verify that your directives are correct / you have all required directives.
This is the first place to check when a component you created just isn't loading.
Make sure your directives list has the required directive classes included.
    >directives: const [HomePage, ...]

- [This Error](http://stackoverflow.com/questions/27217278/could-not-find-a-file-named-pubspec-yaml-in) can arise when the .pubcache become corrupted. Removing the cache (sudo rm -r /home/<username>/.pubcache) and running pub get should solve this.
    >Could not find a file named"pubspec.yaml"in"/home/<username>/.pubcache/hosted/pub.dartlang.org/browser-0.10.0+2".
