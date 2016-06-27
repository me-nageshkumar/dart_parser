import 'common.dart';
import 'package:test/test.dart';

main() {
  test("can be lexed and parsed", () {
    var parser = parse("List<String> words");

    var type = parser.type();
    expect(type, isNotNull);
    expect(type.getTypeName(), isNotNull);
    expect(type.getTypeArguments(), isNotNull);
    expect(type.getTypeArguments().getTypeList(), isNotNull);
    expect(type
        .getTypeArguments()
        .getTypeList()
        .getTypes()
        .length, equals(1));

    print("Found type name: ${type
        .getTypeName()
        .text}");
    print("Found type arg: ${type
        .getTypeArguments()
        .getTypeList()
        .getChild(0)
        .text}");

    expect(type
        .getTypeName()
        .text, equals("List"),
        reason: "List<String> should have a type name of List, but it doesn't.");
    expect(type
        .getTypeArguments()
        .getTypeList()
        .children[0].text, equals("String"),
        reason: "List<String> should register as list of **String**s.");
  });

  test("can have zero or more type args", () {
    var parser = parse("Map"),
        type = parser.type();
    expect(type
        .getTypeName()
        .text, equals("Map"));
    expect(type.getTypeArguments(), isNull);

    parser = parse("Map<String, dynamic>");
    type = parser.type();

    expect(type
        .getTypeName()
        .text, equals("Map"));
    expect(type.getTypeArguments(), isNotNull);
    expect(type
        .getTypeArguments()
        .getTypeList()
        .getTypes()
        .length, equals(2));
    expect(type
        .getTypeArguments()
        .getTypeList()
        .getType(0)
        .text, equals("String"));
    expect(type
        .getTypeArguments()
        .getTypeList()
        .getType(1)
        .text, equals("dynamic"));
  });
}