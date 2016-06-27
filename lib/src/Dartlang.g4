grammar Dartlang;
import DartLexer, DartVariables, DartFunctions, DartClasses, DartEnumsAndGenerics, DartExpressions, DartStatements, DartLibraries;

@header {part of dart_parser;}

compilationUnit: libraryDefinition | partDeclaration | (topLevelDefinition+);