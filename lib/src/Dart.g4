// COMBINED grammar. Olé!
// Made to ease development
grammar Dart;

@header {part of dart_parser;}

compilationUnit: libraryDefinition | partDeclaration;

variableDeclaration: declaredIdentifier (COMMA identifier)*;
declaredIdentifier: metadata finalConstVarOrType identifier;
finalConstVarOrType: FINAL type? | CONST type? | varOrType;
varOrType: VAR | type;
initializedVariableDeclaration: declaredIdentifier (EQUALS expression)? (COMMA initializedIdentifier)*;
initializedIdentifier: identifier (EQUALS expression)?;
initializedIdentifierList: initializedIdentifier (COMMA initializedIdentifier)*;
type: typeName typeArguments?;
typeName: qualified | DYNAMIC;
typeArguments: ANGLE_L typeList ANGLE_R;
typeList: type (COMMA type)*;
typeAlias: metadata TYPEDEF typeAliasBody;
typeAliasBody: functionTypeAlias;
functionTypeAlias: functionPrefix typeParameters? formalParameterList SEMI;
functionPrefix: returnType? identifier;
functionSignature: metadata returnType? identifier formalParameterList;
returnType: VOID | type;
functionBody:
    ASYNC? ARROW expression SEMI
    | (ASYNC | ASYNC_GEN | SYNC_GEN)? block;
block: CURLY_L statements CURLY_R;
formalParameterList:
    PAREN_L PAREN_R
    | PAREN_L normalFormalParameters (COMMA optionalFormalParameters)? PAREN_R
    | PAREN_L optionalFormalParameters PAREN_R
;
normalFormalParameters: normalFormalParameter (COMMA normalFormalParameter)*;
optionalFormalParameters: optionalPositionFormalParameters | namedFormalParameters;
optionalPositionFormalParameters: BRACKET_L defaultFormalParameter (COMMA defaultFormalParameter)* BRACKET_R;
namedFormalParameters: CURLY_L defaultNamedParameter (COMMA defaultNamedParameter)* CURLY_R;
normalFormalParameter: functionSignature | fieldFormalParameter | simpleFormalParameter;
simpleFormalParameter:
    declaredIdentifier
    | metadata identifier
;
fieldFormalParameter: metadata finalConstVarOrType? THIS DOT identifier formalParameterList?;
defaultFormalParameter: normalFormalParameter (EQUALS expression)?;
defaultNamedParameter: normalFormalParameter (COLON expression)?;

classDefinition:
    metadata ABSTRACT? CLASS identifier typeParameters? (superclass mixins?)? interfaces? CURLY_L (metadata classMemberDefinition)* CURLY_R
    | metadata ABSTRACT? CLASS mixinApplicationClass;

mixins: WITH typeList;
classMemberDefinition:
    declaration SEMI
    | methodSignature functionBody
;

methodSignature:
    constructorSignature initializers?
    | factoryConstructorSignature
    | STATIC? functionSignature
    | STATIC? getterSignature
    | operatorSignature
;

declaration:
    constantConstructorSignature (redirection | initializers)?
    | constructorSignature (redirection | initializers)?
    | EXTERNAL constantConstructorSignature
    | EXTERNAL constructorSignature
    | ((EXTERNAL STATIC?))? getterSignature
    | ((EXTERNAL STATIC?))? setterSignature
    | EXTERNAL? operatorSignature
    | ((EXTERNAL STATIC?))? functionSignature
    | STATIC (FINAL | CONST) type? staticFinalDeclarationList
    | FINAL type? initializedIdentifierList
    | STATIC? (VAR | type) initializedIdentifierList
;

staticFinalDeclarationList: staticFinalDeclaration (COMMA staticFinalDeclaration)*;
staticFinalDeclaration: identifier EQUALS expression;

operatorSignature: returnType? op formalParameterList;
op:
    TILDE
    | binaryOperator
    | BRACKET_L BRACKET_R
    | BRACKET_L BRACKET_R EQUALS
;

binaryOperator:
    multiplicativeOperator
    | additiveOperator
    | shiftOperator
    | relationalOperator
    | EQUALS_EQUALS
    | bitwiseOperator
;

getterSignature: returnType? GET identifier;
setterSignature: returnType? SET identifier formalParameterList;

// Constructors
constructorSignature: identifier (DOT identifier)? formalParameterList;

// Redirection
redirection: COLON THIS (DOT identifier)? arguments;

initializers: COLON superCallOrFieldInitializer (COMMA superCallOrFieldInitializer)*;
superCallOrFieldInitializer:
    SUPER arguments
    | SUPER DOT identifier arguments
    | fieldInitializer
;

fieldInitializer: (THIS DOT)? identifier EQUALS conditionalExpression cascadeSection*;

factoryConstructorSignature: FACTORY identifier (DOT identifier)? formalParameterList;

redirectingFactoryConstructorSignature: CONST? FACTORY identifier (DOT identifier)? formalParameterList EQUALS type (DOT identifier)?;

constantConstructorSignature: CONST qualified formalParameterList;

superclass: EXTENDS type;
interfaces: IMPLEMENTS typeList;

mixinApplicationClass: identifier typeParameters? EQUALS mixinApplication SEMI;

mixinApplication: type mixins interfaces?;

enumType: metadata ENUM identifier CURLY_L identifier (COMMA identifier)* CURLY_R;

typeParameter: metadata identifier (EXTENDS type)?;
typeParameters: ANGLE_L typeParameter (COMMA typeParameter)* ANGLE_R;

metadata: (metadatum)*;
metadatum: ARROBA ofType arguments?;
ofType: qualified (DOT identifier)?;

expression:
    assignableExpression assignmentOperator expression
    | conditionalExpression cascadeSection*
    | throwExpression
;

expressionWithoutCascade:
    assignableExpression assignmentOperator expressionWithoutCascade
    | conditionalExpression
    | throwExpressionWithoutCascade
;

expressionList: expression (COMMA expression)*;

primary:
    thisExpression
    | SUPER unconditionalAssignableSelector
    | functionExpression
    | literal
    | identifier
    | newExpression
    | NEW type POUND (DOT identifier)?
    | constObjectExpression
    | PAREN_L expression PAREN_R
;

literal: nullLiteral | booleanLiteral | numericLiteral | stringLiteral | symbolLiteral | mapLiteral | listLiteral;
nullLiteral: NULL;

// Numbers
numericLiteral: NUMBER | HEX_NUMBER;

booleanLiteral: TRUE | FALSE;

// Strings
stringLiteral: (MULTI_LINE_STRING | SINGLE_LINE_STRING)+;

symbolLiteral: POUND (op | (identifier (DOT identifier)*));

listLiteral: CONST? typeArguments? BRACKET_L (expressionList COMMA ?)? BRACKET_R;

mapLiteral: CONST? typeArguments? CURLY_L (mapLiteralEntry (COMMA mapLiteralEntry)* COMMA?)? CURLY_R;

mapLiteralEntry: expression ':' expression;

throwExpression: THROW expression;
throwExpressionWithoutCascade: THROW expressionWithoutCascade;

functionExpression:formalParameterList functionBody;

thisExpression: THIS;

newExpression: NEW type (DOT identifier)? arguments;

constObjectExpression: CONST type (DOT identifier)? arguments;

arguments: PAREN_L argumentList? PAREN_R;
argumentList:
    namedArgument (COMMA namedArgument)*
    | expressionList (COMMA namedArgument)*
;

namedArgument: label expression;

cascadeSection: DOT DOT (cascadeSelector arguments*) (assignableSelector arguments*)* (assignmentOperator expressionWithoutCascade)?;

cascadeSelector:
    BRACKET_L expression BRACKET_R
    | identifier
;

assignmentOperator: EQUALS | compoundAssignmentOperator;

conditionalExpression: ifNullExpression (QUESTION expressionWithoutCascade COLON expressionWithoutCascade)?;

ifNullExpression: logicalOrExpression (IF_NULL logicalOrExpression)*;
logicalOrExpression: logicalAndExpression (LOGICAL_OR logicalAndExpression)*;
logicalAndExpression: equalityExpression (LOGICAL_AND equalityExpression)*;

equalityExpression:
    relationalExpression (equalityOperator relationalExpression)?
    | SUPER equalityOperator relationalExpression
;

relationalExpression:
    bitwiseOrExpression (typeTest | typeCast | relationalOperator bitwiseOrExpression)?
    | SUPER relationalOperator bitwiseOrExpression
;

bitwiseOrExpression:
    bitwiseXorExpression (BITWISE_OR bitwiseXorExpression)*
    | SUPER (BITWISE_OR bitwiseXorExpression)+
;

bitwiseXorExpression:
    bitwiseAndExpression (BITWISE_XOR bitwiseAndExpression)*
    | SUPER (BITWISE_XOR bitwiseAndExpression)+
;

bitwiseAndExpression:
    shiftExpression (BITWISE_AND shiftExpression)*
    | SUPER (BITWISE_AND shiftExpression)+
;

shiftExpression:
    additiveExpression (shiftOperator additiveExpression)*
    | SUPER (shiftOperator additiveExpression)+
;

additiveExpression:
    multiplicativeExpression (additiveOperator multiplicativeExpression)*
    | SUPER (additiveOperator multiplicativeExpression)+
;

multiplicativeExpression:
    unaryExpression (multiplicativeOperator unaryExpression)*
    | SUPER (multiplicativeOperator unaryExpression)+
;

unaryExpression:
    prefixOperator unaryExpression
    | awaitExpression
    | postfixExpression
    | (minusOperator | tildeOperator) SUPER
    | incrementOperator assignableExpression
;

awaitExpression: AWAIT unaryExpression;

postfixExpression:
    assignableExpression postfixOperator
    | primary (selector* | (POUND ((identifier EQUALS?) | op)))
;

selector: assignableSelector | arguments;

assignableExpression:
    primary (arguments* assignableSelector)+
    | SUPER unconditionalAssignableSelector
    | identifier
;

unconditionalAssignableSelector:
    BRACKET_L expression BRACKET_R
    | DOT identifier
;

assignableSelector:
    unconditionalAssignableSelector
    | IF_NOT_NULL identifier
;

// We waited a LONG time to get here, but finally here are the...
// IDENTIFIERS!!!
identifier: IDENTIFIER;

qualified: identifier (DOT identifier)?;

typeTest: isOperator type;
typeCast: asOperator type;

statements: statement*;
statement: label* nonLabelledStatement;

nonLabelledStatement:
    block
    | localVariableDeclaration
    | forStatement
    | whileStatement
    | doStatement
    | switchStatement
    | ifStatement
    | rethrowStatement
    | tryStatement
    | breakStatement
    | continueStatement
    | returnStatement
    | yieldStatement
    | yieldEachStatement
    | expressionStatement
    | assertStatement
    | localFunctionDeclaration
;

expressionStatement: expression? SEMI;
localVariableDeclaration: initializedVariableDeclaration SEMI;
localFunctionDeclaration: functionSignature functionBody;
ifStatement: IF PAREN_L expression PAREN_R statement (ELSE statement)?;

forStatement: AWAIT? FOR PAREN_L forLoopParts PAREN_R statement;
forLoopParts:
    forInitializerStatement expression? SEMI expressionList?
    |   declaredIdentifier IN expression
    | identifier IN expression
;

forInitializerStatement:
    localVariableDeclaration |
    expression? SEMI
;

whileStatement: WHILE PAREN_L expression PAREN_R statement;

doStatement: DO statement WHILE PAREN_L expression PAREN_R SEMI;

switchStatement: SWITCH PAREN_L expression PAREN_R CURLY_L switchCase* defaultCase? CURLY_R;
switchCase: label* CASE expression COLON statements;
defaultCase: label* DEFAULT COLON statements;
rethrowStatement: RETHROW SEMI;

tryStatement: TRY block (onPart+ finallyPart? | finallyPart);

onPart:
    catchPart block
    | ON type catchPart? block
;

catchPart: CATCH PAREN_L identifier (COMMA identifier)? PAREN_R;
finallyPart: FINALLY block;
returnStatement: RETURN expression? SEMI;
label: identifier COLON;
breakStatement: BREAK identifier? SEMI;
continueStatement: CONTINUE identifier? SEMI;
yieldStatement: YIELD expression SEMI;
yieldEachStatement: YIELD_EACH expression SEMI;
assertStatement: ASSERT PAREN_L conditionalExpression PAREN_R SEMI;

topLevelDefinition:
    classDefinition #TopLevelClassDefinition
    | enumType #TopLevelEnumDeclaration
    | typeAlias #TopLevelTypeAliasDeclaration
    | metadata EXTERNAL? functionSignature SEMI #TopLevelExternalFunctionDefinition
    | metadata EXTERNAL? getterSignature SEMI #TopLevelExternalGetterDeclaration
    | metadata EXTERNAL? setterSignature SEMI #TopLevelExternalSetterDeclaration
    | functionSignature functionBody #TopLevelFunctionDefinition
    | returnType? GET identifier functionBody #TopLevelGetterDefinition
    | returnType? SET identifier formalParameterList functionBody #TopLevelSetterDefinition
    | (FINAL|  CONST) type? staticFinalDeclarationList SEMI #TopLevelStaticConstantDefinition
    | variableDeclaration SEMI #TopLevelVariableDefinition
;

getOrSet: GET | SET;
libraryDefinition: scriptTag? libraryName? importOrExport* partDirective* topLevelDefinition*;
scriptTag: SCRIPT_TAG;
libraryName: metadata LIBRARY identifier (DOT identifier)* SEMI;
importOrExport: libraryImport | libraryExport;

libraryImport: metadata importSpecification;
importSpecification:
    IMPORT uri (AS identifier)? combinator* SEMI
    | IMPORT uri DEFERRED AS identifier combinator* SEMI
;

combinator:
    SHOW identifierList
    | HIDE identifierList
;

identifierList: identifier (COMMA identifier)*;
libraryExport: metadata EXPORT uri combinator* SEMI;
partDirective: metadata PART uri SEMI;
partHeader: metadata PART OF identifier (DOT identifier)* SEMI;
partDeclaration: partHeader topLevelDefinition* EOF;

uri: stringLiteral;

WHITESPACE: ('\t' | ' ' | '\n' | '\r')+ -> skip;

SINGLE_LINE_COMMENT: '//' ~( '\n' | '\r' )* -> channel(HIDDEN);
MULTI_LINE_COMMENT: '/*' (MULTI_LINE_COMMENT | .)*? '*/' -> channel(HIDDEN);

SCRIPT_TAG: '#!' (~('\n' | '\r'))*;

// Symbols
ANGLE_L: '<';
ANGLE_R: '>';
ARROBA: '@';
ARROW: '=>';
BRACKET_L: '[';
BRACKET_R: ']';
CARET: '^';
COLON: ':';
COMMA: ',';
CURLY_L: '{';
CURLY_R: '}';
fragment DIGIT: [0-9];
DOT: '.';
EQUALS_EQUALS: '==';
EXCLAMATION: '!';
PAREN_L: '(';
PAREN_R: ')';
POUND: '#';
QUESTION: '?';
SEMI: ';';

// Numbers
NUMBER:
    DIGIT+ (DOT DIGIT+)? EXPONENT?
    | DOT DIGIT+ EXPONENT?
;
EXPONENT: ('e' | 'E') (PLUS | MINUS)? DIGIT+;
HEX_NUMBER: '0' ('x' | 'X') HEX_DIGIT+;
HEX_DIGIT: [A-Fa-f] | DIGIT;

// Reserved words
AS: 'as';
ASSERT: 'assert';
BREAK: 'break';
CASE: 'case';
CATCH: 'catch';
CLASS: 'class';
CONST: 'const';
CONTINUE: 'continue';
DEFAULT: 'default';
DO: 'do';
ELSE: 'else';
EXTENDS: 'extends';
FALSE: 'false';
FINAL: 'final';
FINALLY: 'finally';
FOR: 'for';
IF: 'if';
IN: 'in';
IS: 'is';
IS_NOT: 'is!';
NEW: 'new';
NULL: 'null';
RETHROW: 'rethrow';
RETURN: 'return';
SUPER: 'super';
SWITCH: 'switch';
THIS: 'this';
THROW: 'throw';
TILDE: '~';
TRUE: 'true';
TRY: 'try';
VAR: 'var';
VOID: 'void';
WHILE: 'while';
WITH: 'with';

// Keywords
ABSTRACT: 'abstract';
ASYNC: 'async';
ASYNC_GEN: 'async*';
AWAIT: 'await';
DEFERRED: 'deferred';
DYNAMIC: 'dynamic';
ENUM: 'enum';
EXPORT: 'export';
EXTERNAL: 'external';
FACTORY: 'factory';
GET: 'get';
HIDE: 'hide';
IMPLEMENTS: 'implements';
IMPORT: 'import';
LIBRARY: 'library';
OF: 'of';
ON: 'on';
OPERATOR: 'operator';
PART: 'part';
SET: 'set';
SHOW: 'show';
STATIC: 'static';
SYNC_GEN: 'sync*';
TYPEDEF: 'typedef';
YIELD: 'yield';
YIELD_EACH: 'yield*';

// Operators
BITWISE_AND: '&';
BITWISE_XOR: '^';
BITWISE_OR: '|';
DECREMENT: '--';
EQUALS: '=';
GT: '>';
GTE: '>=';
LT: '<';
LTE: '<=';
IF_NOT_NULL: '?.';
IF_NULL: '??';
INCREMENT: '++';
LOGICAL_AND: '&&';
LOGICAL_EQUALS: '==';
LOGICAL_OR: '||';
LOGICAL_NOT: '!=';
MINUS: '-';
MODULO: '%';
PLUS: '+';
SHL: '<<';
SHR: '>>';
TIMES: '*';
TILDE_VIRGULE: '˜/';
VIRGULE: '/';

// Compound operators
BITWISE_AND_EQUALS: BITWISE_AND EQUALS;
BITWISE_XOR_EQUALS: BITWISE_XOR EQUALS;
BITWISE_OR_EQUALS: BITWISE_OR EQUALS;
IF_NULL_EQUALS: IF_NULL EQUALS;
MINUS_EQUALS: MINUS EQUALS;
MODULO_EQUALS: MODULO EQUALS;
PLUS_EQUALS: PLUS EQUALS;
SHL_EQUALS: SHL EQUALS;
SHR_EQUALS: SHR EQUALS;
TILDE_VIRGULE_EQUALS: TILDE_VIRGULE EQUALS;
TIMES_EQUALS: TIMES EQUALS;
VIRGULE_EQUALS: VIRGULE EQUALS;

additiveOperator: PLUS | MINUS;
multiplicativeOperator: TIMES | VIRGULE | TILDE_VIRGULE | MODULO;
relationalOperator: LT | GT | LTE | GTE | AS | IS | IS_NOT;
shiftOperator: SHL | SHR;
bitwiseOperator: BITWISE_AND | BITWISE_XOR | BITWISE_OR;

compoundAssignmentOperator:
    TIMES_EQUALS
    | VIRGULE_EQUALS
    | TILDE_VIRGULE_EQUALS
    | MODULO_EQUALS
    | PLUS_EQUALS
    | MINUS_EQUALS
    | SHL_EQUALS
    | SHR_EQUALS
    | BITWISE_AND_EQUALS
    | BITWISE_OR_EQUALS
    | IF_NULL_EQUALS
;

equalityOperator: LOGICAL_EQUALS | LOGICAL_EQUALS;

prefixOperator: minusOperator | negationOperator | tildeOperator;
minusOperator: MINUS;
negationOperator: EXCLAMATION;
tildeOperator: TILDE;

postfixOperator: incrementOperator;
incrementOperator: INCREMENT | DECREMENT;

isOperator: IS | IS_NOT;
asOperator: AS;

// String components have become lexer rules

SINGLE_LINE_STRING:
    '"' STRING_CONTENT_DQ* '"'
    | '\'' STRING_CONTENT_SQ* '\''
    | 'r' '\'' (~( '\'' | '\n' | '\r' ))* '\''
    | 'r' '"' (~( '"' | '\n' | '\r' ))* '"'
;

MULTI_LINE_STRING:
    '"""' STRING_CONTENT_TDQ* '"""'
    | '\'\'\'' STRING_CONTENT_TSQ* '\'\'\''
    | 'r' '"""' .*? '"""'
    | 'r' '\'\'\'' .*? '\'\'\''
;

fragment ESCAPE_SEQUENCE:
    '\\n'
    | '\\r'
    | '\\f'
    | '\\b'
    | '\t'
    | '\\v'
    | '\\x' HEX_DIGIT HEX_DIGIT
    | '\\u' HEX_DIGIT HEX_DIGIT HEX_DIGIT HEX_DIGIT
    | '\\u' CURLY_L HEX_DIGIT_SEQUENCE CURLY_R
;

fragment HEX_DIGIT_SEQUENCE: HEX_DIGIT HEX_DIGIT? HEX_DIGIT? HEX_DIGIT? HEX_DIGIT? HEX_DIGIT?;

fragment STRING_CONTENT_DQ:
    ~( '\\' | '"' | '$' | '\n' | '\r' )
    | '\\' ~( '\n' | '\r' )
    | STRING_INTERPOLATION
;
fragment STRING_CONTENT_SQ:
    ~( '\\' | '\'' | '$' | '\n' | '\r' )
    | '\\' ~( '\n' | '\r' )
    | STRING_INTERPOLATION
;

// ( ~'*' | ( '*'+ ~[/*]) )* '*'*
fragment STRING_CONTENT_TDQ:
    ~( '\\' | '$')
    | STRING_INTERPOLATION
;

fragment STRING_CONTENT_TSQ:
    ~( '\\' | '$')
    | STRING_INTERPOLATION
;

fragment STRING_INTERPOLATION:
    '$' IDENTIFIER
    | '$' CURLY_L .+? CURLY_R
;

// Can't believe I didn't leave these for last, haha
BUILT_IN_IDENTIFIER:
    ABSTRACT
    | AS
    | DEFERRED
    | DYNAMIC
    | EXPORT
    | EXTERNAL
    | FACTORY
    | GET
    | IMPLEMENTS
    | IMPORT
    | LIBRARY
    | OPERATOR
    | PART
    | SET
    | STATIC
    | TYPEDEF
;

fragment IDENTIFIER_START: IDENTIFIER_START_NO_DOLLAR | '$';
fragment IDENTIFIER_START_NO_DOLLAR: [A-Za-z_];
fragment IDENTIFIER_PART_NO_DOLLAR: IDENTIFIER_START_NO_DOLLAR | DIGIT;
fragment IDENTIFIER_PART: IDENTIFIER_START | DIGIT;
fragment IDENTIFIER_NO_DOLLAR: IDENTIFIER_START_NO_DOLLAR IDENTIFIER_PART_NO_DOLLAR*;

IDENTIFIER: IDENTIFIER_START IDENTIFIER_PART*;