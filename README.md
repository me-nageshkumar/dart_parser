# dart_parser
![v1.0.0-dev](https://img.shields.io/badge/version-1.0.0--dev-red.svg)

An ANTLR-based Dart parser.

Eventual goal is compliance with the
[ECMA Standard](http://www.ecma-international.org/publications/files/ECMA-ST/ECMA-408.pdf).

Right now, it will need a lot more tests to prove it works.

Special thanks to Tiago Mazzutti for
[this port of ANTLR4 to Dart](https://github.com/tiagomazzutti/antlr4dart).

* [Usage](#usage)
* [Examples](#examples)
* [Installation](#installation)
* [Possibilities](#the-futuredynamic)
* [Thank you for using dart_parser! :)](#thanks)

# Installation
```yaml
dependencies:
    dart_parser: ^1.0.0-dev
```

This will automatically install `antlr4dart` as well.

# Usage
This library will be of absolutely no use to you unless you learn
[ANTLR](http://www.antlr.org/), which is what I wrote it with.

The root node is `compilationUnit`.

In general, the names of all rules are the same as those in the ECMA specification. However,
some rules I had to change the names of. `operator` became op. I also split `metadata` into
`metadatum` and `ofType`:

```antlr
// Example, @override() @Expose("foo")
metadata: (metadatum)*;

// Refers to an individual metadatum within the above, i.e.
// @override()
metadatum: ARROBA ofType arguments?;

// Refers to the metadatum's type, i.e. 'override'
ofType: qualified (DOT identifier)?;
```

# Examples

Create a parser:

```dart
import 'package:antlr4dart/antlr4dart.dart';
import 'package:dart_parser/dart_parser.dart';

main() {
  String input = '''
  main() {
    print("Hello, world!");
  }
  ''';

  var source = new StringSource(input);
  var lexer = new DartlangLexer(source);
  var tokens = new CommonTokenSource(lexer);
  var parser = new DartlangParser..buildParseTree = true;
}

```

You can imperatively obtain a given parse tree type, but this only makes sense if you
know beforehand what type of input you are receiving.

```dart
// Find which type an annotation is.
var annotation = parser.metadatum();
print(annotation.getOfType().text);
```

Otherwise, consider implementing a listener or visitor. The difference is explained
[here](https://github.com/antlr/antlr4/blob/master/doc/listeners.md).

```dart
class MyListener extends DartlangBaseListener {
  @override
  void enterMetadatum(MetadatumContext context) {
    print(context.getOfType().text);
  }
}

class MyVisitor extends DartlangBaseVisitor<String> {
  @override
  String visitMetadatum(MetadatumContext context) {
    return context.getOfType().text;
  }
}

main() {
  // For a listener
  ParseTreeWalker.DEFAULT.walk(new MyListener(), parser.compilationUnit());

  // For a visitor
  new MyVisitor().visitCompilationUnit(parse.compilationUnit());
}
```

# The Future\<dynamic\>

Who knows what we'll see in the future? Now that we have a ready-to-go parser available for
public consumption, it's extremely possible for the community to apply Dart to all kinds
of broad horizons.

In fact, the original reason I made this parser was so I could compile Dart to x86 Assembly
and make an operating system. However, I doubt that will actually happen anymore.

Somebody make a Babel for Dart (or isn't that the
[dev_compiler](https://github.com/dart-lang/dev_compiler)?).

# Thanks
As always, thanks for using this.

Feel free to follow me on [Twitter](https://twitter.com/thosakwe), or to check out my
[blog](http://blog.thosakwe.com).