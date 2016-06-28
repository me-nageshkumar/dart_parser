import 'package:test/test.dart';
import 'top_level.dart' as top_level;
import 'types.dart' as types;

main() async {
  group("top_level", top_level.main);
  group("types", types.main);
}