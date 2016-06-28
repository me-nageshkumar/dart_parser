grammar Dartlang;
import DartVariables, DartFunctions, DartClasses, DartEnumsAndGenerics, DartExpressions, DartStatements, DartLibraries, DartLexer;

@header {part of dart_parser;}

compilationUnit: libraryDefinition | partDeclaration;