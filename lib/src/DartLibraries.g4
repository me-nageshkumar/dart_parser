grammar DartLibraries;

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
