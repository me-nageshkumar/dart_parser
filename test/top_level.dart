library dart_parser.test.top_level;

import 'common.dart';
import 'package:dart_parser/dart_parser.dart';
import 'package:test/test.dart';

main() {
  test("function def", () {
    var parser = parse('''
    main() async {
      print("I hate this!");
    }
    ''');

    var lib = parser.compilationUnit().getLibraryDefinition();
    var definitions = lib.getTopLevelDefinitions();

    expect(definitions.length, equals(1));
    expect(definitions[0] is TopLevelFunctionDefinitionContext, equals(true));

    var func = definitions[0] as TopLevelFunctionDefinitionContext;

    var signature = func.getFunctionSignature();
    expect(signature.getIdentifier().text, equals("main"));
    expect(signature.getFormalParameterList().getNormalFormalParameters(), isNull);

    var body = func.getFunctionBody();
    expect(body.getASYNC(), isNotNull);
    expect(body.getBlock().getStatements().getStatements().length, equals(1));
  });
}