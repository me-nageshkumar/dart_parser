grammar DartLibraries;

topLevelDefinition:
    classDefinition
    | enumType
    | typeAlias
    | EXTERNAL? functionSignature SEMI
    | EXTERNAL? getterSignature SEMI
    | EXTERNAL? setterSignature SEMI
    | functionSignature functionBody
    | returnType? GET identifier functionBody
    | returnType? SET identifier formalParameterList functionBody
    | (FINAL|  CONST) type? staticFinalDeclarationList SEMI
    | variableDeclaration SEMI
;

getOrSet: GET | SET;
libraryDefinition: scriptTag? libraryName? importOrExport* partDirective* topLevelDefinition*;
scriptTag: '#!' (~NEWLINE)* NEWLINE;
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
