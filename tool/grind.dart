import 'package:grinder/grinder.dart';

main(args) => grind(args);

@DefaultTask('Start the OAuth2 components')
void run() {
  Dart.runAsync('bin/authorization_server.dart', arguments: ['-p', '8081']);
  Dart.runAsync('bin/protected_resource.dart', arguments: ['-p', '8082']);
  runAsync('pub', arguments: ['serve']);
}

