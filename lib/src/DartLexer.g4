grammar DartLexer;

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
DIGIT: [0-9];
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