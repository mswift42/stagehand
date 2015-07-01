// Copyright (c) 2014, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

library stagehand.web.angular2;

import '../stagehand.dart';
import '../src/common.dart';
import 'web_angular2_data.dart';

/**
 * A generator for an Angular2 application.
 */
class WebAngular2Generator extends DefaultGenerator {
  WebAngular2Generator() : super('web-angular2', 'An Angular2 Web Application',
          'A sample Angular2 application, with gnomes.',
          categories: const ['dart', 'web', 'angular']) {
    for (TemplateFile file in decodeConcatenatedData(data)) {
      addTemplateFile(file);
    }

    setEntrypoint(getFile('web/index.html'));
  }

  String getInstallInstructions() => "${super.getInstallInstructions()}\n"
  "to run your app, use 'pub serve'";
}
