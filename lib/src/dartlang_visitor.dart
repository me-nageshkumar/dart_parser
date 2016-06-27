// Generated from lib\src\Dartlang.g4 by antlr4dart
part of dart_parser;

/// This abstract class defines a complete generic visitor for a parse tree 
/// produced by [DartlangParser].
///
/// [T] is the eturn type of the visit operation. Use `void` for
/// operations with no return type.
abstract class DartlangVisitor<T> extends ParseTreeVisitor<T> {
  /// Visit a parse tree produced by [DartlangParser.classMemberDefinition].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitClassMemberDefinition(ClassMemberDefinitionContext context);

  /// Visit a parse tree produced by [DartlangParser.qualified].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitQualified(QualifiedContext context);

  /// Visit a parse tree produced by [DartlangParser.defaultNamedParameter].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitDefaultNamedParameter(DefaultNamedParameterContext context);

  /// Visit a parse tree produced by [DartlangParser.metadata].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitMetadata(MetadataContext context);

  /// Visit a parse tree produced by [DartlangParser.staticFinalDeclaration].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitStaticFinalDeclaration(StaticFinalDeclarationContext context);

  /// Visit a parse tree produced by [DartlangParser.functionSignature].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitFunctionSignature(FunctionSignatureContext context);

  /// Visit a parse tree produced by [DartlangParser.minusOperator].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitMinusOperator(MinusOperatorContext context);

  /// Visit a parse tree produced by [DartlangParser.metadatum].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitMetadatum(MetadatumContext context);

  /// Visit a parse tree produced by [DartlangParser.relationalOperator].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitRelationalOperator(RelationalOperatorContext context);

  /// Visit a parse tree produced by [DartlangParser.type].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitType(TypeContext context);

  /// Visit a parse tree produced by [DartlangParser.ifNullExpression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitIfNullExpression(IfNullExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.simpleFormalParameter].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitSimpleFormalParameter(SimpleFormalParameterContext context);

  /// Visit a parse tree produced by [DartlangParser.constObjectExpression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitConstObjectExpression(ConstObjectExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.isOperator].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitIsOperator(IsOperatorContext context);

  /// Visit a parse tree produced by [DartlangParser.functionExpression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitFunctionExpression(FunctionExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.normalFormalParameter].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitNormalFormalParameter(NormalFormalParameterContext context);

  /// Visit a parse tree produced by [DartlangParser.argumentList].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitArgumentList(ArgumentListContext context);

  /// Visit a parse tree produced by [DartlangParser.mixins].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitMixins(MixinsContext context);

  /// Visit a parse tree produced by [DartlangParser.importSpecification].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitImportSpecification(ImportSpecificationContext context);

  /// Visit a parse tree produced by [DartlangParser.additiveOperator].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitAdditiveOperator(AdditiveOperatorContext context);

  /// Visit a parse tree produced by [DartlangParser.expressionWithoutCascade].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitExpressionWithoutCascade(ExpressionWithoutCascadeContext context);

  /// Visit a parse tree produced by [DartlangParser.superclass].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitSuperclass(SuperclassContext context);

  /// Visit a parse tree produced by [DartlangParser.methodSignature].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitMethodSignature(MethodSignatureContext context);

  /// Visit a parse tree produced by [DartlangParser.mapLiteralEntry].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitMapLiteralEntry(MapLiteralEntryContext context);

  /// Visit a parse tree produced by [DartlangParser.logicalAndExpression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitLogicalAndExpression(LogicalAndExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.cascadeSelector].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitCascadeSelector(CascadeSelectorContext context);

  /// Visit a parse tree produced by [DartlangParser.block].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitBlock(BlockContext context);

  /// Visit a parse tree produced by [DartlangParser.expressionStatement].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitExpressionStatement(ExpressionStatementContext context);

  /// Visit a parse tree produced by [DartlangParser.libraryDefinition].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitLibraryDefinition(LibraryDefinitionContext context);

  /// Visit a parse tree produced by [DartlangParser.forInitializerStatement].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitForInitializerStatement(ForInitializerStatementContext context);

  /// Visit a parse tree produced by [DartlangParser.throwExpression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitThrowExpression(ThrowExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.unaryExpression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitUnaryExpression(UnaryExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.numericLiteral].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitNumericLiteral(NumericLiteralContext context);

  /// Visit a parse tree produced by [DartlangParser.classDefinition].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitClassDefinition(ClassDefinitionContext context);

  /// Visit a parse tree produced by [DartlangParser.bitwiseXorExpression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitBitwiseXorExpression(BitwiseXorExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.identifier].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitIdentifier(IdentifierContext context);

  /// Visit a parse tree produced by [DartlangParser.partHeader].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitPartHeader(PartHeaderContext context);

  /// Visit a parse tree produced by [DartlangParser.identifierList].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitIdentifierList(IdentifierListContext context);

  /// Visit a parse tree produced by [DartlangParser.multilineString].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitMultilineString(MultilineStringContext context);

  /// Visit a parse tree produced by [DartlangParser.shiftExpression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitShiftExpression(ShiftExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.finallyPart].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitFinallyPart(FinallyPartContext context);

  /// Visit a parse tree produced by [DartlangParser.newExpression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitNewExpression(NewExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.cascadeSection].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitCascadeSection(CascadeSectionContext context);

  /// Visit a parse tree produced by [DartlangParser.getOrSet].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitGetOrSet(GetOrSetContext context);

  /// Visit a parse tree produced by [DartlangParser.functionTypeAlias].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitFunctionTypeAlias(FunctionTypeAliasContext context);

  /// Visit a parse tree produced by [DartlangParser.TopLevelStaticConstantDefinition].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTopLevelStaticConstantDefinition(TopLevelStaticConstantDefinitionContext context);

  /// Visit a parse tree produced by [DartlangParser.scriptTag].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitScriptTag(ScriptTagContext context);

  /// Visit a parse tree produced by [DartlangParser.TopLevelVariableDefinition].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTopLevelVariableDefinition(TopLevelVariableDefinitionContext context);

  /// Visit a parse tree produced by [DartlangParser.TopLevelSetterDefinition].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTopLevelSetterDefinition(TopLevelSetterDefinitionContext context);

  /// Visit a parse tree produced by [DartlangParser.incrementOperator].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitIncrementOperator(IncrementOperatorContext context);

  /// Visit a parse tree produced by [DartlangParser.defaultFormalParameter].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitDefaultFormalParameter(DefaultFormalParameterContext context);

  /// Visit a parse tree produced by [DartlangParser.typeCast].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTypeCast(TypeCastContext context);

  /// Visit a parse tree produced by [DartlangParser.expressionList].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitExpressionList(ExpressionListContext context);

  /// Visit a parse tree produced by [DartlangParser.bitwiseOrExpression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitBitwiseOrExpression(BitwiseOrExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.stringLiteral].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitStringLiteral(StringLiteralContext context);

  /// Visit a parse tree produced by [DartlangParser.optionalFormalParameters].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitOptionalFormalParameters(OptionalFormalParametersContext context);

  /// Visit a parse tree produced by [DartlangParser.factoryConstructorSignature].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitFactoryConstructorSignature(FactoryConstructorSignatureContext context);

  /// Visit a parse tree produced by [DartlangParser.assertStatement].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitAssertStatement(AssertStatementContext context);

  /// Visit a parse tree produced by [DartlangParser.equalityExpression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitEqualityExpression(EqualityExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.returnType].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitReturnType(ReturnTypeContext context);

  /// Visit a parse tree produced by [DartlangParser.mixinApplication].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitMixinApplication(MixinApplicationContext context);

  /// Visit a parse tree produced by [DartlangParser.primary].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitPrimary(PrimaryContext context);

  /// Visit a parse tree produced by [DartlangParser.typeArguments].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTypeArguments(TypeArgumentsContext context);

  /// Visit a parse tree produced by [DartlangParser.libraryName].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitLibraryName(LibraryNameContext context);

  /// Visit a parse tree produced by [DartlangParser.combinator].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitCombinator(CombinatorContext context);

  /// Visit a parse tree produced by [DartlangParser.additiveExpression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitAdditiveExpression(AdditiveExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.relationalExpression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitRelationalExpression(RelationalExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.typeName].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTypeName(TypeNameContext context);

  /// Visit a parse tree produced by [DartlangParser.enumType].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitEnumType(EnumTypeContext context);

  /// Visit a parse tree produced by [DartlangParser.listLiteral].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitListLiteral(ListLiteralContext context);

  /// Visit a parse tree produced by [DartlangParser.operatorSignature].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitOperatorSignature(OperatorSignatureContext context);

  /// Visit a parse tree produced by [DartlangParser.returnStatement].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitReturnStatement(ReturnStatementContext context);

  /// Visit a parse tree produced by [DartlangParser.bitwiseOperator].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitBitwiseOperator(BitwiseOperatorContext context);

  /// Visit a parse tree produced by [DartlangParser.typeParameters].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTypeParameters(TypeParametersContext context);

  /// Visit a parse tree produced by [DartlangParser.literal].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitLiteral(LiteralContext context);

  /// Visit a parse tree produced by [DartlangParser.unconditionalAssignableSelector].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitUnconditionalAssignableSelector(UnconditionalAssignableSelectorContext context);

  /// Visit a parse tree produced by [DartlangParser.partDirective].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitPartDirective(PartDirectiveContext context);

  /// Visit a parse tree produced by [DartlangParser.typeList].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTypeList(TypeListContext context);

  /// Visit a parse tree produced by [DartlangParser.shiftOperator].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitShiftOperator(ShiftOperatorContext context);

  /// Visit a parse tree produced by [DartlangParser.TopLevelClassDefinition].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTopLevelClassDefinition(TopLevelClassDefinitionContext context);

  /// Visit a parse tree produced by [DartlangParser.typeTest].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTypeTest(TypeTestContext context);

  /// Visit a parse tree produced by [DartlangParser.postfixExpression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitPostfixExpression(PostfixExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.asOperator].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitAsOperator(AsOperatorContext context);

  /// Visit a parse tree produced by [DartlangParser.functionPrefix].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitFunctionPrefix(FunctionPrefixContext context);

  /// Visit a parse tree produced by [DartlangParser.TopLevelFunctionDefinition].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTopLevelFunctionDefinition(TopLevelFunctionDefinitionContext context);

  /// Visit a parse tree produced by [DartlangParser.expression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitExpression(ExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.finalConstVarOrType].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitFinalConstVarOrType(FinalConstVarOrTypeContext context);

  /// Visit a parse tree produced by [DartlangParser.varOrType].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitVarOrType(VarOrTypeContext context);

  /// Visit a parse tree produced by [DartlangParser.initializedIdentifier].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitInitializedIdentifier(InitializedIdentifierContext context);

  /// Visit a parse tree produced by [DartlangParser.forStatement].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitForStatement(ForStatementContext context);

  /// Visit a parse tree produced by [DartlangParser.fieldFormalParameter].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitFieldFormalParameter(FieldFormalParameterContext context);

  /// Visit a parse tree produced by [DartlangParser.logicalOrExpression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitLogicalOrExpression(LogicalOrExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.multiplicativeExpression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitMultiplicativeExpression(MultiplicativeExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.declaration].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitDeclaration(DeclarationContext context);

  /// Visit a parse tree produced by [DartlangParser.uri].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitUri(UriContext context);

  /// Visit a parse tree produced by [DartlangParser.variableDeclaration].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitVariableDeclaration(VariableDeclarationContext context);

  /// Visit a parse tree produced by [DartlangParser.libraryImport].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitLibraryImport(LibraryImportContext context);

  /// Visit a parse tree produced by [DartlangParser.equalityOperator].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitEqualityOperator(EqualityOperatorContext context);

  /// Visit a parse tree produced by [DartlangParser.doStatement].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitDoStatement(DoStatementContext context);

  /// Visit a parse tree produced by [DartlangParser.assignableExpression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitAssignableExpression(AssignableExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.binaryOperator].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitBinaryOperator(BinaryOperatorContext context);

  /// Visit a parse tree produced by [DartlangParser.tildeOperator].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTildeOperator(TildeOperatorContext context);

  /// Visit a parse tree produced by [DartlangParser.typeAlias].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTypeAlias(TypeAliasContext context);

  /// Visit a parse tree produced by [DartlangParser.mapLiteral].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitMapLiteral(MapLiteralContext context);

  /// Visit a parse tree produced by [DartlangParser.staticFinalDeclarationList].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitStaticFinalDeclarationList(StaticFinalDeclarationListContext context);

  /// Visit a parse tree produced by [DartlangParser.stringInterpolation].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitStringInterpolation(StringInterpolationContext context);

  /// Visit a parse tree produced by [DartlangParser.assignmentOperator].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitAssignmentOperator(AssignmentOperatorContext context);

  /// Visit a parse tree produced by [DartlangParser.multiplicativeOperator].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitMultiplicativeOperator(MultiplicativeOperatorContext context);

  /// Visit a parse tree produced by [DartlangParser.constantConstructorSignature].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitConstantConstructorSignature(ConstantConstructorSignatureContext context);

  /// Visit a parse tree produced by [DartlangParser.TopLevelExternalFunctionDefinition].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTopLevelExternalFunctionDefinition(TopLevelExternalFunctionDefinitionContext context);

  /// Visit a parse tree produced by [DartlangParser.yieldEachStatement].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitYieldEachStatement(YieldEachStatementContext context);

  /// Visit a parse tree produced by [DartlangParser.TopLevelExternalSetterDeclaration].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTopLevelExternalSetterDeclaration(TopLevelExternalSetterDeclarationContext context);

  /// Visit a parse tree produced by [DartlangParser.assignableSelector].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitAssignableSelector(AssignableSelectorContext context);

  /// Visit a parse tree produced by [DartlangParser.bitwiseAndExpression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitBitwiseAndExpression(BitwiseAndExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.prefixOperator].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitPrefixOperator(PrefixOperatorContext context);

  /// Visit a parse tree produced by [DartlangParser.negationOperator].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitNegationOperator(NegationOperatorContext context);

  /// Visit a parse tree produced by [DartlangParser.namedFormalParameters].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitNamedFormalParameters(NamedFormalParametersContext context);

  /// Visit a parse tree produced by [DartlangParser.TopLevelGetterDefinition].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTopLevelGetterDefinition(TopLevelGetterDefinitionContext context);

  /// Visit a parse tree produced by [DartlangParser.booleanLiteral].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitBooleanLiteral(BooleanLiteralContext context);

  /// Visit a parse tree produced by [DartlangParser.normalFormalParameters].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitNormalFormalParameters(NormalFormalParametersContext context);

  /// Visit a parse tree produced by [DartlangParser.ofType].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitOfType(OfTypeContext context);

  /// Visit a parse tree produced by [DartlangParser.yieldStatement].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitYieldStatement(YieldStatementContext context);

  /// Visit a parse tree produced by [DartlangParser.declaredIdentifier].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitDeclaredIdentifier(DeclaredIdentifierContext context);

  /// Visit a parse tree produced by [DartlangParser.awaitExpression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitAwaitExpression(AwaitExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.catchPart].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitCatchPart(CatchPartContext context);

  /// Visit a parse tree produced by [DartlangParser.initializedIdentifierList].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitInitializedIdentifierList(InitializedIdentifierListContext context);

  /// Visit a parse tree produced by [DartlangParser.compoundAssignmentOperator].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitCompoundAssignmentOperator(CompoundAssignmentOperatorContext context);

  /// Visit a parse tree produced by [DartlangParser.TopLevelExternalGetterDeclaration].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTopLevelExternalGetterDeclaration(TopLevelExternalGetterDeclarationContext context);

  /// Visit a parse tree produced by [DartlangParser.formalParameterList].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitFormalParameterList(FormalParameterListContext context);

  /// Visit a parse tree produced by [DartlangParser.compilationUnit].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitCompilationUnit(CompilationUnitContext context);

  /// Visit a parse tree produced by [DartlangParser.setterSignature].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitSetterSignature(SetterSignatureContext context);

  /// Visit a parse tree produced by [DartlangParser.libraryExport].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitLibraryExport(LibraryExportContext context);

  /// Visit a parse tree produced by [DartlangParser.TopLevelTypeAliasDeclaration].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTopLevelTypeAliasDeclaration(TopLevelTypeAliasDeclarationContext context);

  /// Visit a parse tree produced by [DartlangParser.superCallOrFieldInitializer].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitSuperCallOrFieldInitializer(SuperCallOrFieldInitializerContext context);

  /// Visit a parse tree produced by [DartlangParser.switchCase].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitSwitchCase(SwitchCaseContext context);

  /// Visit a parse tree produced by [DartlangParser.typeParameter].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTypeParameter(TypeParameterContext context);

  /// Visit a parse tree produced by [DartlangParser.tryStatement].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTryStatement(TryStatementContext context);

  /// Visit a parse tree produced by [DartlangParser.optionalPositionFormalParameters].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitOptionalPositionFormalParameters(OptionalPositionFormalParametersContext context);

  /// Visit a parse tree produced by [DartlangParser.stringContentSQ].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitStringContentSQ(StringContentSQContext context);

  /// Visit a parse tree produced by [DartlangParser.fieldInitializer].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitFieldInitializer(FieldInitializerContext context);

  /// Visit a parse tree produced by [DartlangParser.constructorSignature].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitConstructorSignature(ConstructorSignatureContext context);

  /// Visit a parse tree produced by [DartlangParser.statements].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitStatements(StatementsContext context);

  /// Visit a parse tree produced by [DartlangParser.throwExpressionWithoutCascade].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitThrowExpressionWithoutCascade(ThrowExpressionWithoutCascadeContext context);

  /// Visit a parse tree produced by [DartlangParser.switchStatement].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitSwitchStatement(SwitchStatementContext context);

  /// Visit a parse tree produced by [DartlangParser.rethrowStatement].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitRethrowStatement(RethrowStatementContext context);

  /// Visit a parse tree produced by [DartlangParser.nonLabelledStatement].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitNonLabelledStatement(NonLabelledStatementContext context);

  /// Visit a parse tree produced by [DartlangParser.initializedVariableDeclaration].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitInitializedVariableDeclaration(InitializedVariableDeclarationContext context);

  /// Visit a parse tree produced by [DartlangParser.importOrExport].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitImportOrExport(ImportOrExportContext context);

  /// Visit a parse tree produced by [DartlangParser.statement].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitStatement(StatementContext context);

  /// Visit a parse tree produced by [DartlangParser.localFunctionDeclaration].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitLocalFunctionDeclaration(LocalFunctionDeclarationContext context);

  /// Visit a parse tree produced by [DartlangParser.stringContentTDQ].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitStringContentTDQ(StringContentTDQContext context);

  /// Visit a parse tree produced by [DartlangParser.selector].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitSelector(SelectorContext context);

  /// Visit a parse tree produced by [DartlangParser.typeAliasBody].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTypeAliasBody(TypeAliasBodyContext context);

  /// Visit a parse tree produced by [DartlangParser.redirection].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitRedirection(RedirectionContext context);

  /// Visit a parse tree produced by [DartlangParser.mixinApplicationClass].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitMixinApplicationClass(MixinApplicationClassContext context);

  /// Visit a parse tree produced by [DartlangParser.namedArgument].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitNamedArgument(NamedArgumentContext context);

  /// Visit a parse tree produced by [DartlangParser.TopLevelEnumDeclaration].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitTopLevelEnumDeclaration(TopLevelEnumDeclarationContext context);

  /// Visit a parse tree produced by [DartlangParser.op].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitOp(OpContext context);

  /// Visit a parse tree produced by [DartlangParser.interfaces].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitInterfaces(InterfacesContext context);

  /// Visit a parse tree produced by [DartlangParser.postfixOperator].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitPostfixOperator(PostfixOperatorContext context);

  /// Visit a parse tree produced by [DartlangParser.nullLiteral].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitNullLiteral(NullLiteralContext context);

  /// Visit a parse tree produced by [DartlangParser.symbolLiteral].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitSymbolLiteral(SymbolLiteralContext context);

  /// Visit a parse tree produced by [DartlangParser.conditionalExpression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitConditionalExpression(ConditionalExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.partDeclaration].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitPartDeclaration(PartDeclarationContext context);

  /// Visit a parse tree produced by [DartlangParser.singleLineString].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitSingleLineString(SingleLineStringContext context);

  /// Visit a parse tree produced by [DartlangParser.getterSignature].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitGetterSignature(GetterSignatureContext context);

  /// Visit a parse tree produced by [DartlangParser.stringContentTSQ].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitStringContentTSQ(StringContentTSQContext context);

  /// Visit a parse tree produced by [DartlangParser.breakStatement].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitBreakStatement(BreakStatementContext context);

  /// Visit a parse tree produced by [DartlangParser.ifStatement].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitIfStatement(IfStatementContext context);

  /// Visit a parse tree produced by [DartlangParser.label].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitLabel(LabelContext context);

  /// Visit a parse tree produced by [DartlangParser.onPart].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitOnPart(OnPartContext context);

  /// Visit a parse tree produced by [DartlangParser.stringContentDQ].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitStringContentDQ(StringContentDQContext context);

  /// Visit a parse tree produced by [DartlangParser.whileStatement].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitWhileStatement(WhileStatementContext context);

  /// Visit a parse tree produced by [DartlangParser.localVariableDeclaration].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitLocalVariableDeclaration(LocalVariableDeclarationContext context);

  /// Visit a parse tree produced by [DartlangParser.forLoopParts].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitForLoopParts(ForLoopPartsContext context);

  /// Visit a parse tree produced by [DartlangParser.initializers].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitInitializers(InitializersContext context);

  /// Visit a parse tree produced by [DartlangParser.thisExpression].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitThisExpression(ThisExpressionContext context);

  /// Visit a parse tree produced by [DartlangParser.redirectingFactoryConstructorSignature].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitRedirectingFactoryConstructorSignature(RedirectingFactoryConstructorSignatureContext context);

  /// Visit a parse tree produced by [DartlangParser.arguments].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitArguments(ArgumentsContext context);

  /// Visit a parse tree produced by [DartlangParser.continueStatement].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitContinueStatement(ContinueStatementContext context);

  /// Visit a parse tree produced by [DartlangParser.functionBody].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitFunctionBody(FunctionBodyContext context);

  /// Visit a parse tree produced by [DartlangParser.defaultCase].
  /// [context] is the parse tree.
  /// Return the visitor result.
  T visitDefaultCase(DefaultCaseContext context);
}