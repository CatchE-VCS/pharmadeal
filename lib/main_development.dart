import 'package:pharmadeal/app/app.dart';
import 'package:pharmadeal/bootstrap.dart';

/// This entry point should be used for development only
void main() {
  ///You can override your environment variable in bootstrap method here for providers
  bootstrap(() => const App());
}
