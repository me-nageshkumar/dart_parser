library dart_parser.test.top_level;

import 'common.dart';
import 'package:test/test.dart';

main() {
  test("function def", () {
    var parser = parse('''
    main() async {
      print("I hate this!");
    }
    ''');

    var script = parser.compilationUnit();
    var lib = script.getLibraryDefinition();
    print(lib.getTopLevelDefinitions().length);
  });
}