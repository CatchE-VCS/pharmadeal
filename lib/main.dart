import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:pharmadeal/app/app.dart';
import 'package:pharmadeal/bootstrap.dart';

import 'firebase_options.dart';

/// This entry point should be used for production only
Future<void> main() async {
  ///You can override your environment variable in bootstrap method here for providers
  bootstrap(() => const App());
}
