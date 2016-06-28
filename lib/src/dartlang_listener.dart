// Generated from lib\src\Dartlang.g4 by antlr4dart
part of dart_parser;

/// This abstract class defines a complete listener for a parse tree produced by
/// [DartlangParser].
abstract class DartlangListener extends ParseTreeListener {
  /// Enter a parse tree produced by [DartlangParser.classMemberDefinition].
  /// [context] is the parse tree.
   void enterClassMemberDefinition(ClassMemberDefinitionContext context);

  /// Exit a parse tree produced by [DartlangParser.classMemberDefinition].
  /// [context] is the parse tree.
  void exitClassMemberDefinition(ClassMemberDefinitionContext context);

  /// Enter a parse tree produced by [DartlangParser.qualified].
  /// [context] is the parse tree.
   void enterQualified(QualifiedContext context);

  /// Exit a parse tree produced by [DartlangParser.qualified].
  /// [context] is the parse tree.
  void exitQualified(QualifiedContext context);

  /// Enter a parse tree produced by [DartlangParser.defaultNamedParameter].
  /// [context] is the parse tree.
   void enterDefaultNamedParameter(DefaultNamedParameterContext context);

  /// Exit a parse tree produced by [DartlangParser.defaultNamedParameter].
  /// [context] is the parse tree.
  void exitDefaultNamedParameter(DefaultNamedParameterContext context);

  /// Enter a parse tree produced by [DartlangParser.metadata].
  /// [context] is the parse tree.
   void enterMetadata(MetadataContext context);

  /// Exit a parse tree produced by [DartlangParser.metadata].
  /// [context] is the parse tree.
  void exitMetadata(MetadataContext context);

  /// Enter a parse tree produced by [DartlangParser.staticFinalDeclaration].
  /// [context] is the parse tree.
   void enterStaticFinalDeclaration(StaticFinalDeclarationContext context);

  /// Exit a parse tree produced by [DartlangParser.staticFinalDeclaration].
  /// [context] is the parse tree.
  void exitStaticFinalDeclaration(StaticFinalDeclarationContext context);

  /// Enter a parse tree produced by [DartlangParser.functionSignature].
  /// [context] is the parse tree.
   void enterFunctionSignature(FunctionSignatureContext context);

  /// Exit a parse tree produced by [DartlangParser.functionSignature].
  /// [context] is the parse tree.
  void exitFunctionSignature(FunctionSignatureContext context);

  /// Enter a parse tree produced by [DartlangParser.minusOperator].
  /// [context] is the parse tree.
   void enterMinusOperator(MinusOperatorContext context);

  /// Exit a parse tree produced by [DartlangParser.minusOperator].
  /// [context] is the parse tree.
  void exitMinusOperator(MinusOperatorContext context);

  /// Enter a parse tree produced by [DartlangParser.metadatum].
  /// [context] is the parse tree.
   void enterMetadatum(MetadatumContext context);

  /// Exit a parse tree produced by [DartlangParser.metadatum].
  /// [context] is the parse tree.
  void exitMetadatum(MetadatumContext context);

  /// Enter a parse tree produced by [DartlangParser.type].
  /// [context] is the parse tree.
   void enterType(TypeContext context);

  /// Exit a parse tree produced by [DartlangParser.type].
  /// [context] is the parse tree.
  void exitType(TypeContext context);

  /// Enter a parse tree produced by [DartlangParser.ifNullExpression].
  /// [context] is the parse tree.
   void enterIfNullExpression(IfNullExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.ifNullExpression].
  /// [context] is the parse tree.
  void exitIfNullExpression(IfNullExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.relationalOperator].
  /// [context] is the parse tree.
   void enterRelationalOperator(RelationalOperatorContext context);

  /// Exit a parse tree produced by [DartlangParser.relationalOperator].
  /// [context] is the parse tree.
  void exitRelationalOperator(RelationalOperatorContext context);

  /// Enter a parse tree produced by [DartlangParser.simpleFormalParameter].
  /// [context] is the parse tree.
   void enterSimpleFormalParameter(SimpleFormalParameterContext context);

  /// Exit a parse tree produced by [DartlangParser.simpleFormalParameter].
  /// [context] is the parse tree.
  void exitSimpleFormalParameter(SimpleFormalParameterContext context);

  /// Enter a parse tree produced by [DartlangParser.constObjectExpression].
  /// [context] is the parse tree.
   void enterConstObjectExpression(ConstObjectExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.constObjectExpression].
  /// [context] is the parse tree.
  void exitConstObjectExpression(ConstObjectExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.functionExpression].
  /// [context] is the parse tree.
   void enterFunctionExpression(FunctionExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.functionExpression].
  /// [context] is the parse tree.
  void exitFunctionExpression(FunctionExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.isOperator].
  /// [context] is the parse tree.
   void enterIsOperator(IsOperatorContext context);

  /// Exit a parse tree produced by [DartlangParser.isOperator].
  /// [context] is the parse tree.
  void exitIsOperator(IsOperatorContext context);

  /// Enter a parse tree produced by [DartlangParser.normalFormalParameter].
  /// [context] is the parse tree.
   void enterNormalFormalParameter(NormalFormalParameterContext context);

  /// Exit a parse tree produced by [DartlangParser.normalFormalParameter].
  /// [context] is the parse tree.
  void exitNormalFormalParameter(NormalFormalParameterContext context);

  /// Enter a parse tree produced by [DartlangParser.argumentList].
  /// [context] is the parse tree.
   void enterArgumentList(ArgumentListContext context);

  /// Exit a parse tree produced by [DartlangParser.argumentList].
  /// [context] is the parse tree.
  void exitArgumentList(ArgumentListContext context);

  /// Enter a parse tree produced by [DartlangParser.mixins].
  /// [context] is the parse tree.
   void enterMixins(MixinsContext context);

  /// Exit a parse tree produced by [DartlangParser.mixins].
  /// [context] is the parse tree.
  void exitMixins(MixinsContext context);

  /// Enter a parse tree produced by [DartlangParser.importSpecification].
  /// [context] is the parse tree.
   void enterImportSpecification(ImportSpecificationContext context);

  /// Exit a parse tree produced by [DartlangParser.importSpecification].
  /// [context] is the parse tree.
  void exitImportSpecification(ImportSpecificationContext context);

  /// Enter a parse tree produced by [DartlangParser.expressionWithoutCascade].
  /// [context] is the parse tree.
   void enterExpressionWithoutCascade(ExpressionWithoutCascadeContext context);

  /// Exit a parse tree produced by [DartlangParser.expressionWithoutCascade].
  /// [context] is the parse tree.
  void exitExpressionWithoutCascade(ExpressionWithoutCascadeContext context);

  /// Enter a parse tree produced by [DartlangParser.additiveOperator].
  /// [context] is the parse tree.
   void enterAdditiveOperator(AdditiveOperatorContext context);

  /// Exit a parse tree produced by [DartlangParser.additiveOperator].
  /// [context] is the parse tree.
  void exitAdditiveOperator(AdditiveOperatorContext context);

  /// Enter a parse tree produced by [DartlangParser.superclass].
  /// [context] is the parse tree.
   void enterSuperclass(SuperclassContext context);

  /// Exit a parse tree produced by [DartlangParser.superclass].
  /// [context] is the parse tree.
  void exitSuperclass(SuperclassContext context);

  /// Enter a parse tree produced by [DartlangParser.methodSignature].
  /// [context] is the parse tree.
   void enterMethodSignature(MethodSignatureContext context);

  /// Exit a parse tree produced by [DartlangParser.methodSignature].
  /// [context] is the parse tree.
  void exitMethodSignature(MethodSignatureContext context);

  /// Enter a parse tree produced by [DartlangParser.mapLiteralEntry].
  /// [context] is the parse tree.
   void enterMapLiteralEntry(MapLiteralEntryContext context);

  /// Exit a parse tree produced by [DartlangParser.mapLiteralEntry].
  /// [context] is the parse tree.
  void exitMapLiteralEntry(MapLiteralEntryContext context);

  /// Enter a parse tree produced by [DartlangParser.logicalAndExpression].
  /// [context] is the parse tree.
   void enterLogicalAndExpression(LogicalAndExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.logicalAndExpression].
  /// [context] is the parse tree.
  void exitLogicalAndExpression(LogicalAndExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.cascadeSelector].
  /// [context] is the parse tree.
   void enterCascadeSelector(CascadeSelectorContext context);

  /// Exit a parse tree produced by [DartlangParser.cascadeSelector].
  /// [context] is the parse tree.
  void exitCascadeSelector(CascadeSelectorContext context);

  /// Enter a parse tree produced by [DartlangParser.block].
  /// [context] is the parse tree.
   void enterBlock(BlockContext context);

  /// Exit a parse tree produced by [DartlangParser.block].
  /// [context] is the parse tree.
  void exitBlock(BlockContext context);

  /// Enter a parse tree produced by [DartlangParser.expressionStatement].
  /// [context] is the parse tree.
   void enterExpressionStatement(ExpressionStatementContext context);

  /// Exit a parse tree produced by [DartlangParser.expressionStatement].
  /// [context] is the parse tree.
  void exitExpressionStatement(ExpressionStatementContext context);

  /// Enter a parse tree produced by [DartlangParser.libraryDefinition].
  /// [context] is the parse tree.
   void enterLibraryDefinition(LibraryDefinitionContext context);

  /// Exit a parse tree produced by [DartlangParser.libraryDefinition].
  /// [context] is the parse tree.
  void exitLibraryDefinition(LibraryDefinitionContext context);

  /// Enter a parse tree produced by [DartlangParser.forInitializerStatement].
  /// [context] is the parse tree.
   void enterForInitializerStatement(ForInitializerStatementContext context);

  /// Exit a parse tree produced by [DartlangParser.forInitializerStatement].
  /// [context] is the parse tree.
  void exitForInitializerStatement(ForInitializerStatementContext context);

  /// Enter a parse tree produced by [DartlangParser.throwExpression].
  /// [context] is the parse tree.
   void enterThrowExpression(ThrowExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.throwExpression].
  /// [context] is the parse tree.
  void exitThrowExpression(ThrowExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.unaryExpression].
  /// [context] is the parse tree.
   void enterUnaryExpression(UnaryExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.unaryExpression].
  /// [context] is the parse tree.
  void exitUnaryExpression(UnaryExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.numericLiteral].
  /// [context] is the parse tree.
   void enterNumericLiteral(NumericLiteralContext context);

  /// Exit a parse tree produced by [DartlangParser.numericLiteral].
  /// [context] is the parse tree.
  void exitNumericLiteral(NumericLiteralContext context);

  /// Enter a parse tree produced by [DartlangParser.classDefinition].
  /// [context] is the parse tree.
   void enterClassDefinition(ClassDefinitionContext context);

  /// Exit a parse tree produced by [DartlangParser.classDefinition].
  /// [context] is the parse tree.
  void exitClassDefinition(ClassDefinitionContext context);

  /// Enter a parse tree produced by [DartlangParser.bitwiseXorExpression].
  /// [context] is the parse tree.
   void enterBitwiseXorExpression(BitwiseXorExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.bitwiseXorExpression].
  /// [context] is the parse tree.
  void exitBitwiseXorExpression(BitwiseXorExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.identifier].
  /// [context] is the parse tree.
   void enterIdentifier(IdentifierContext context);

  /// Exit a parse tree produced by [DartlangParser.identifier].
  /// [context] is the parse tree.
  void exitIdentifier(IdentifierContext context);

  /// Enter a parse tree produced by [DartlangParser.partHeader].
  /// [context] is the parse tree.
   void enterPartHeader(PartHeaderContext context);

  /// Exit a parse tree produced by [DartlangParser.partHeader].
  /// [context] is the parse tree.
  void exitPartHeader(PartHeaderContext context);

  /// Enter a parse tree produced by [DartlangParser.identifierList].
  /// [context] is the parse tree.
   void enterIdentifierList(IdentifierListContext context);

  /// Exit a parse tree produced by [DartlangParser.identifierList].
  /// [context] is the parse tree.
  void exitIdentifierList(IdentifierListContext context);

  /// Enter a parse tree produced by [DartlangParser.multilineString].
  /// [context] is the parse tree.
   void enterMultilineString(MultilineStringContext context);

  /// Exit a parse tree produced by [DartlangParser.multilineString].
  /// [context] is the parse tree.
  void exitMultilineString(MultilineStringContext context);

  /// Enter a parse tree produced by [DartlangParser.shiftExpression].
  /// [context] is the parse tree.
   void enterShiftExpression(ShiftExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.shiftExpression].
  /// [context] is the parse tree.
  void exitShiftExpression(ShiftExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.finallyPart].
  /// [context] is the parse tree.
   void enterFinallyPart(FinallyPartContext context);

  /// Exit a parse tree produced by [DartlangParser.finallyPart].
  /// [context] is the parse tree.
  void exitFinallyPart(FinallyPartContext context);

  /// Enter a parse tree produced by [DartlangParser.newExpression].
  /// [context] is the parse tree.
   void enterNewExpression(NewExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.newExpression].
  /// [context] is the parse tree.
  void exitNewExpression(NewExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.cascadeSection].
  /// [context] is the parse tree.
   void enterCascadeSection(CascadeSectionContext context);

  /// Exit a parse tree produced by [DartlangParser.cascadeSection].
  /// [context] is the parse tree.
  void exitCascadeSection(CascadeSectionContext context);

  /// Enter a parse tree produced by [DartlangParser.getOrSet].
  /// [context] is the parse tree.
   void enterGetOrSet(GetOrSetContext context);

  /// Exit a parse tree produced by [DartlangParser.getOrSet].
  /// [context] is the parse tree.
  void exitGetOrSet(GetOrSetContext context);

  /// Enter a parse tree produced by [DartlangParser.functionTypeAlias].
  /// [context] is the parse tree.
   void enterFunctionTypeAlias(FunctionTypeAliasContext context);

  /// Exit a parse tree produced by [DartlangParser.functionTypeAlias].
  /// [context] is the parse tree.
  void exitFunctionTypeAlias(FunctionTypeAliasContext context);

  /// Enter a parse tree produced by [DartlangParser.TopLevelStaticConstantDefinition].
  /// [context] is the parse tree.
   void enterTopLevelStaticConstantDefinition(TopLevelStaticConstantDefinitionContext context);

  /// Exit a parse tree produced by [DartlangParser.TopLevelStaticConstantDefinition].
  /// [context] is the parse tree.
  void exitTopLevelStaticConstantDefinition(TopLevelStaticConstantDefinitionContext context);

  /// Enter a parse tree produced by [DartlangParser.scriptTag].
  /// [context] is the parse tree.
   void enterScriptTag(ScriptTagContext context);

  /// Exit a parse tree produced by [DartlangParser.scriptTag].
  /// [context] is the parse tree.
  void exitScriptTag(ScriptTagContext context);

  /// Enter a parse tree produced by [DartlangParser.TopLevelVariableDefinition].
  /// [context] is the parse tree.
   void enterTopLevelVariableDefinition(TopLevelVariableDefinitionContext context);

  /// Exit a parse tree produced by [DartlangParser.TopLevelVariableDefinition].
  /// [context] is the parse tree.
  void exitTopLevelVariableDefinition(TopLevelVariableDefinitionContext context);

  /// Enter a parse tree produced by [DartlangParser.TopLevelSetterDefinition].
  /// [context] is the parse tree.
   void enterTopLevelSetterDefinition(TopLevelSetterDefinitionContext context);

  /// Exit a parse tree produced by [DartlangParser.TopLevelSetterDefinition].
  /// [context] is the parse tree.
  void exitTopLevelSetterDefinition(TopLevelSetterDefinitionContext context);

  /// Enter a parse tree produced by [DartlangParser.incrementOperator].
  /// [context] is the parse tree.
   void enterIncrementOperator(IncrementOperatorContext context);

  /// Exit a parse tree produced by [DartlangParser.incrementOperator].
  /// [context] is the parse tree.
  void exitIncrementOperator(IncrementOperatorContext context);

  /// Enter a parse tree produced by [DartlangParser.defaultFormalParameter].
  /// [context] is the parse tree.
   void enterDefaultFormalParameter(DefaultFormalParameterContext context);

  /// Exit a parse tree produced by [DartlangParser.defaultFormalParameter].
  /// [context] is the parse tree.
  void exitDefaultFormalParameter(DefaultFormalParameterContext context);

  /// Enter a parse tree produced by [DartlangParser.typeCast].
  /// [context] is the parse tree.
   void enterTypeCast(TypeCastContext context);

  /// Exit a parse tree produced by [DartlangParser.typeCast].
  /// [context] is the parse tree.
  void exitTypeCast(TypeCastContext context);

  /// Enter a parse tree produced by [DartlangParser.expressionList].
  /// [context] is the parse tree.
   void enterExpressionList(ExpressionListContext context);

  /// Exit a parse tree produced by [DartlangParser.expressionList].
  /// [context] is the parse tree.
  void exitExpressionList(ExpressionListContext context);

  /// Enter a parse tree produced by [DartlangParser.bitwiseOrExpression].
  /// [context] is the parse tree.
   void enterBitwiseOrExpression(BitwiseOrExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.bitwiseOrExpression].
  /// [context] is the parse tree.
  void exitBitwiseOrExpression(BitwiseOrExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.stringLiteral].
  /// [context] is the parse tree.
   void enterStringLiteral(StringLiteralContext context);

  /// Exit a parse tree produced by [DartlangParser.stringLiteral].
  /// [context] is the parse tree.
  void exitStringLiteral(StringLiteralContext context);

  /// Enter a parse tree produced by [DartlangParser.optionalFormalParameters].
  /// [context] is the parse tree.
   void enterOptionalFormalParameters(OptionalFormalParametersContext context);

  /// Exit a parse tree produced by [DartlangParser.optionalFormalParameters].
  /// [context] is the parse tree.
  void exitOptionalFormalParameters(OptionalFormalParametersContext context);

  /// Enter a parse tree produced by [DartlangParser.factoryConstructorSignature].
  /// [context] is the parse tree.
   void enterFactoryConstructorSignature(FactoryConstructorSignatureContext context);

  /// Exit a parse tree produced by [DartlangParser.factoryConstructorSignature].
  /// [context] is the parse tree.
  void exitFactoryConstructorSignature(FactoryConstructorSignatureContext context);

  /// Enter a parse tree produced by [DartlangParser.assertStatement].
  /// [context] is the parse tree.
   void enterAssertStatement(AssertStatementContext context);

  /// Exit a parse tree produced by [DartlangParser.assertStatement].
  /// [context] is the parse tree.
  void exitAssertStatement(AssertStatementContext context);

  /// Enter a parse tree produced by [DartlangParser.equalityExpression].
  /// [context] is the parse tree.
   void enterEqualityExpression(EqualityExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.equalityExpression].
  /// [context] is the parse tree.
  void exitEqualityExpression(EqualityExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.returnType].
  /// [context] is the parse tree.
   void enterReturnType(ReturnTypeContext context);

  /// Exit a parse tree produced by [DartlangParser.returnType].
  /// [context] is the parse tree.
  void exitReturnType(ReturnTypeContext context);

  /// Enter a parse tree produced by [DartlangParser.mixinApplication].
  /// [context] is the parse tree.
   void enterMixinApplication(MixinApplicationContext context);

  /// Exit a parse tree produced by [DartlangParser.mixinApplication].
  /// [context] is the parse tree.
  void exitMixinApplication(MixinApplicationContext context);

  /// Enter a parse tree produced by [DartlangParser.primary].
  /// [context] is the parse tree.
   void enterPrimary(PrimaryContext context);

  /// Exit a parse tree produced by [DartlangParser.primary].
  /// [context] is the parse tree.
  void exitPrimary(PrimaryContext context);

  /// Enter a parse tree produced by [DartlangParser.typeArguments].
  /// [context] is the parse tree.
   void enterTypeArguments(TypeArgumentsContext context);

  /// Exit a parse tree produced by [DartlangParser.typeArguments].
  /// [context] is the parse tree.
  void exitTypeArguments(TypeArgumentsContext context);

  /// Enter a parse tree produced by [DartlangParser.libraryName].
  /// [context] is the parse tree.
   void enterLibraryName(LibraryNameContext context);

  /// Exit a parse tree produced by [DartlangParser.libraryName].
  /// [context] is the parse tree.
  void exitLibraryName(LibraryNameContext context);

  /// Enter a parse tree produced by [DartlangParser.combinator].
  /// [context] is the parse tree.
   void enterCombinator(CombinatorContext context);

  /// Exit a parse tree produced by [DartlangParser.combinator].
  /// [context] is the parse tree.
  void exitCombinator(CombinatorContext context);

  /// Enter a parse tree produced by [DartlangParser.additiveExpression].
  /// [context] is the parse tree.
   void enterAdditiveExpression(AdditiveExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.additiveExpression].
  /// [context] is the parse tree.
  void exitAdditiveExpression(AdditiveExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.relationalExpression].
  /// [context] is the parse tree.
   void enterRelationalExpression(RelationalExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.relationalExpression].
  /// [context] is the parse tree.
  void exitRelationalExpression(RelationalExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.typeName].
  /// [context] is the parse tree.
   void enterTypeName(TypeNameContext context);

  /// Exit a parse tree produced by [DartlangParser.typeName].
  /// [context] is the parse tree.
  void exitTypeName(TypeNameContext context);

  /// Enter a parse tree produced by [DartlangParser.enumType].
  /// [context] is the parse tree.
   void enterEnumType(EnumTypeContext context);

  /// Exit a parse tree produced by [DartlangParser.enumType].
  /// [context] is the parse tree.
  void exitEnumType(EnumTypeContext context);

  /// Enter a parse tree produced by [DartlangParser.listLiteral].
  /// [context] is the parse tree.
   void enterListLiteral(ListLiteralContext context);

  /// Exit a parse tree produced by [DartlangParser.listLiteral].
  /// [context] is the parse tree.
  void exitListLiteral(ListLiteralContext context);

  /// Enter a parse tree produced by [DartlangParser.operatorSignature].
  /// [context] is the parse tree.
   void enterOperatorSignature(OperatorSignatureContext context);

  /// Exit a parse tree produced by [DartlangParser.operatorSignature].
  /// [context] is the parse tree.
  void exitOperatorSignature(OperatorSignatureContext context);

  /// Enter a parse tree produced by [DartlangParser.returnStatement].
  /// [context] is the parse tree.
   void enterReturnStatement(ReturnStatementContext context);

  /// Exit a parse tree produced by [DartlangParser.returnStatement].
  /// [context] is the parse tree.
  void exitReturnStatement(ReturnStatementContext context);

  /// Enter a parse tree produced by [DartlangParser.typeParameters].
  /// [context] is the parse tree.
   void enterTypeParameters(TypeParametersContext context);

  /// Exit a parse tree produced by [DartlangParser.typeParameters].
  /// [context] is the parse tree.
  void exitTypeParameters(TypeParametersContext context);

  /// Enter a parse tree produced by [DartlangParser.bitwiseOperator].
  /// [context] is the parse tree.
   void enterBitwiseOperator(BitwiseOperatorContext context);

  /// Exit a parse tree produced by [DartlangParser.bitwiseOperator].
  /// [context] is the parse tree.
  void exitBitwiseOperator(BitwiseOperatorContext context);

  /// Enter a parse tree produced by [DartlangParser.literal].
  /// [context] is the parse tree.
   void enterLiteral(LiteralContext context);

  /// Exit a parse tree produced by [DartlangParser.literal].
  /// [context] is the parse tree.
  void exitLiteral(LiteralContext context);

  /// Enter a parse tree produced by [DartlangParser.unconditionalAssignableSelector].
  /// [context] is the parse tree.
   void enterUnconditionalAssignableSelector(UnconditionalAssignableSelectorContext context);

  /// Exit a parse tree produced by [DartlangParser.unconditionalAssignableSelector].
  /// [context] is the parse tree.
  void exitUnconditionalAssignableSelector(UnconditionalAssignableSelectorContext context);

  /// Enter a parse tree produced by [DartlangParser.partDirective].
  /// [context] is the parse tree.
   void enterPartDirective(PartDirectiveContext context);

  /// Exit a parse tree produced by [DartlangParser.partDirective].
  /// [context] is the parse tree.
  void exitPartDirective(PartDirectiveContext context);

  /// Enter a parse tree produced by [DartlangParser.typeList].
  /// [context] is the parse tree.
   void enterTypeList(TypeListContext context);

  /// Exit a parse tree produced by [DartlangParser.typeList].
  /// [context] is the parse tree.
  void exitTypeList(TypeListContext context);

  /// Enter a parse tree produced by [DartlangParser.shiftOperator].
  /// [context] is the parse tree.
   void enterShiftOperator(ShiftOperatorContext context);

  /// Exit a parse tree produced by [DartlangParser.shiftOperator].
  /// [context] is the parse tree.
  void exitShiftOperator(ShiftOperatorContext context);

  /// Enter a parse tree produced by [DartlangParser.TopLevelClassDefinition].
  /// [context] is the parse tree.
   void enterTopLevelClassDefinition(TopLevelClassDefinitionContext context);

  /// Exit a parse tree produced by [DartlangParser.TopLevelClassDefinition].
  /// [context] is the parse tree.
  void exitTopLevelClassDefinition(TopLevelClassDefinitionContext context);

  /// Enter a parse tree produced by [DartlangParser.typeTest].
  /// [context] is the parse tree.
   void enterTypeTest(TypeTestContext context);

  /// Exit a parse tree produced by [DartlangParser.typeTest].
  /// [context] is the parse tree.
  void exitTypeTest(TypeTestContext context);

  /// Enter a parse tree produced by [DartlangParser.postfixExpression].
  /// [context] is the parse tree.
   void enterPostfixExpression(PostfixExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.postfixExpression].
  /// [context] is the parse tree.
  void exitPostfixExpression(PostfixExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.asOperator].
  /// [context] is the parse tree.
   void enterAsOperator(AsOperatorContext context);

  /// Exit a parse tree produced by [DartlangParser.asOperator].
  /// [context] is the parse tree.
  void exitAsOperator(AsOperatorContext context);

  /// Enter a parse tree produced by [DartlangParser.functionPrefix].
  /// [context] is the parse tree.
   void enterFunctionPrefix(FunctionPrefixContext context);

  /// Exit a parse tree produced by [DartlangParser.functionPrefix].
  /// [context] is the parse tree.
  void exitFunctionPrefix(FunctionPrefixContext context);

  /// Enter a parse tree produced by [DartlangParser.TopLevelFunctionDefinition].
  /// [context] is the parse tree.
   void enterTopLevelFunctionDefinition(TopLevelFunctionDefinitionContext context);

  /// Exit a parse tree produced by [DartlangParser.TopLevelFunctionDefinition].
  /// [context] is the parse tree.
  void exitTopLevelFunctionDefinition(TopLevelFunctionDefinitionContext context);

  /// Enter a parse tree produced by [DartlangParser.expression].
  /// [context] is the parse tree.
   void enterExpression(ExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.expression].
  /// [context] is the parse tree.
  void exitExpression(ExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.finalConstVarOrType].
  /// [context] is the parse tree.
   void enterFinalConstVarOrType(FinalConstVarOrTypeContext context);

  /// Exit a parse tree produced by [DartlangParser.finalConstVarOrType].
  /// [context] is the parse tree.
  void exitFinalConstVarOrType(FinalConstVarOrTypeContext context);

  /// Enter a parse tree produced by [DartlangParser.varOrType].
  /// [context] is the parse tree.
   void enterVarOrType(VarOrTypeContext context);

  /// Exit a parse tree produced by [DartlangParser.varOrType].
  /// [context] is the parse tree.
  void exitVarOrType(VarOrTypeContext context);

  /// Enter a parse tree produced by [DartlangParser.initializedIdentifier].
  /// [context] is the parse tree.
   void enterInitializedIdentifier(InitializedIdentifierContext context);

  /// Exit a parse tree produced by [DartlangParser.initializedIdentifier].
  /// [context] is the parse tree.
  void exitInitializedIdentifier(InitializedIdentifierContext context);

  /// Enter a parse tree produced by [DartlangParser.forStatement].
  /// [context] is the parse tree.
   void enterForStatement(ForStatementContext context);

  /// Exit a parse tree produced by [DartlangParser.forStatement].
  /// [context] is the parse tree.
  void exitForStatement(ForStatementContext context);

  /// Enter a parse tree produced by [DartlangParser.fieldFormalParameter].
  /// [context] is the parse tree.
   void enterFieldFormalParameter(FieldFormalParameterContext context);

  /// Exit a parse tree produced by [DartlangParser.fieldFormalParameter].
  /// [context] is the parse tree.
  void exitFieldFormalParameter(FieldFormalParameterContext context);

  /// Enter a parse tree produced by [DartlangParser.logicalOrExpression].
  /// [context] is the parse tree.
   void enterLogicalOrExpression(LogicalOrExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.logicalOrExpression].
  /// [context] is the parse tree.
  void exitLogicalOrExpression(LogicalOrExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.multiplicativeExpression].
  /// [context] is the parse tree.
   void enterMultiplicativeExpression(MultiplicativeExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.multiplicativeExpression].
  /// [context] is the parse tree.
  void exitMultiplicativeExpression(MultiplicativeExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.declaration].
  /// [context] is the parse tree.
   void enterDeclaration(DeclarationContext context);

  /// Exit a parse tree produced by [DartlangParser.declaration].
  /// [context] is the parse tree.
  void exitDeclaration(DeclarationContext context);

  /// Enter a parse tree produced by [DartlangParser.uri].
  /// [context] is the parse tree.
   void enterUri(UriContext context);

  /// Exit a parse tree produced by [DartlangParser.uri].
  /// [context] is the parse tree.
  void exitUri(UriContext context);

  /// Enter a parse tree produced by [DartlangParser.variableDeclaration].
  /// [context] is the parse tree.
   void enterVariableDeclaration(VariableDeclarationContext context);

  /// Exit a parse tree produced by [DartlangParser.variableDeclaration].
  /// [context] is the parse tree.
  void exitVariableDeclaration(VariableDeclarationContext context);

  /// Enter a parse tree produced by [DartlangParser.libraryImport].
  /// [context] is the parse tree.
   void enterLibraryImport(LibraryImportContext context);

  /// Exit a parse tree produced by [DartlangParser.libraryImport].
  /// [context] is the parse tree.
  void exitLibraryImport(LibraryImportContext context);

  /// Enter a parse tree produced by [DartlangParser.equalityOperator].
  /// [context] is the parse tree.
   void enterEqualityOperator(EqualityOperatorContext context);

  /// Exit a parse tree produced by [DartlangParser.equalityOperator].
  /// [context] is the parse tree.
  void exitEqualityOperator(EqualityOperatorContext context);

  /// Enter a parse tree produced by [DartlangParser.doStatement].
  /// [context] is the parse tree.
   void enterDoStatement(DoStatementContext context);

  /// Exit a parse tree produced by [DartlangParser.doStatement].
  /// [context] is the parse tree.
  void exitDoStatement(DoStatementContext context);

  /// Enter a parse tree produced by [DartlangParser.assignableExpression].
  /// [context] is the parse tree.
   void enterAssignableExpression(AssignableExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.assignableExpression].
  /// [context] is the parse tree.
  void exitAssignableExpression(AssignableExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.binaryOperator].
  /// [context] is the parse tree.
   void enterBinaryOperator(BinaryOperatorContext context);

  /// Exit a parse tree produced by [DartlangParser.binaryOperator].
  /// [context] is the parse tree.
  void exitBinaryOperator(BinaryOperatorContext context);

  /// Enter a parse tree produced by [DartlangParser.tildeOperator].
  /// [context] is the parse tree.
   void enterTildeOperator(TildeOperatorContext context);

  /// Exit a parse tree produced by [DartlangParser.tildeOperator].
  /// [context] is the parse tree.
  void exitTildeOperator(TildeOperatorContext context);

  /// Enter a parse tree produced by [DartlangParser.typeAlias].
  /// [context] is the parse tree.
   void enterTypeAlias(TypeAliasContext context);

  /// Exit a parse tree produced by [DartlangParser.typeAlias].
  /// [context] is the parse tree.
  void exitTypeAlias(TypeAliasContext context);

  /// Enter a parse tree produced by [DartlangParser.mapLiteral].
  /// [context] is the parse tree.
   void enterMapLiteral(MapLiteralContext context);

  /// Exit a parse tree produced by [DartlangParser.mapLiteral].
  /// [context] is the parse tree.
  void exitMapLiteral(MapLiteralContext context);

  /// Enter a parse tree produced by [DartlangParser.staticFinalDeclarationList].
  /// [context] is the parse tree.
   void enterStaticFinalDeclarationList(StaticFinalDeclarationListContext context);

  /// Exit a parse tree produced by [DartlangParser.staticFinalDeclarationList].
  /// [context] is the parse tree.
  void exitStaticFinalDeclarationList(StaticFinalDeclarationListContext context);

  /// Enter a parse tree produced by [DartlangParser.stringInterpolation].
  /// [context] is the parse tree.
   void enterStringInterpolation(StringInterpolationContext context);

  /// Exit a parse tree produced by [DartlangParser.stringInterpolation].
  /// [context] is the parse tree.
  void exitStringInterpolation(StringInterpolationContext context);

  /// Enter a parse tree produced by [DartlangParser.assignmentOperator].
  /// [context] is the parse tree.
   void enterAssignmentOperator(AssignmentOperatorContext context);

  /// Exit a parse tree produced by [DartlangParser.assignmentOperator].
  /// [context] is the parse tree.
  void exitAssignmentOperator(AssignmentOperatorContext context);

  /// Enter a parse tree produced by [DartlangParser.multiplicativeOperator].
  /// [context] is the parse tree.
   void enterMultiplicativeOperator(MultiplicativeOperatorContext context);

  /// Exit a parse tree produced by [DartlangParser.multiplicativeOperator].
  /// [context] is the parse tree.
  void exitMultiplicativeOperator(MultiplicativeOperatorContext context);

  /// Enter a parse tree produced by [DartlangParser.constantConstructorSignature].
  /// [context] is the parse tree.
   void enterConstantConstructorSignature(ConstantConstructorSignatureContext context);

  /// Exit a parse tree produced by [DartlangParser.constantConstructorSignature].
  /// [context] is the parse tree.
  void exitConstantConstructorSignature(ConstantConstructorSignatureContext context);

  /// Enter a parse tree produced by [DartlangParser.TopLevelExternalFunctionDefinition].
  /// [context] is the parse tree.
   void enterTopLevelExternalFunctionDefinition(TopLevelExternalFunctionDefinitionContext context);

  /// Exit a parse tree produced by [DartlangParser.TopLevelExternalFunctionDefinition].
  /// [context] is the parse tree.
  void exitTopLevelExternalFunctionDefinition(TopLevelExternalFunctionDefinitionContext context);

  /// Enter a parse tree produced by [DartlangParser.yieldEachStatement].
  /// [context] is the parse tree.
   void enterYieldEachStatement(YieldEachStatementContext context);

  /// Exit a parse tree produced by [DartlangParser.yieldEachStatement].
  /// [context] is the parse tree.
  void exitYieldEachStatement(YieldEachStatementContext context);

  /// Enter a parse tree produced by [DartlangParser.TopLevelExternalSetterDeclaration].
  /// [context] is the parse tree.
   void enterTopLevelExternalSetterDeclaration(TopLevelExternalSetterDeclarationContext context);

  /// Exit a parse tree produced by [DartlangParser.TopLevelExternalSetterDeclaration].
  /// [context] is the parse tree.
  void exitTopLevelExternalSetterDeclaration(TopLevelExternalSetterDeclarationContext context);

  /// Enter a parse tree produced by [DartlangParser.assignableSelector].
  /// [context] is the parse tree.
   void enterAssignableSelector(AssignableSelectorContext context);

  /// Exit a parse tree produced by [DartlangParser.assignableSelector].
  /// [context] is the parse tree.
  void exitAssignableSelector(AssignableSelectorContext context);

  /// Enter a parse tree produced by [DartlangParser.bitwiseAndExpression].
  /// [context] is the parse tree.
   void enterBitwiseAndExpression(BitwiseAndExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.bitwiseAndExpression].
  /// [context] is the parse tree.
  void exitBitwiseAndExpression(BitwiseAndExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.prefixOperator].
  /// [context] is the parse tree.
   void enterPrefixOperator(PrefixOperatorContext context);

  /// Exit a parse tree produced by [DartlangParser.prefixOperator].
  /// [context] is the parse tree.
  void exitPrefixOperator(PrefixOperatorContext context);

  /// Enter a parse tree produced by [DartlangParser.negationOperator].
  /// [context] is the parse tree.
   void enterNegationOperator(NegationOperatorContext context);

  /// Exit a parse tree produced by [DartlangParser.negationOperator].
  /// [context] is the parse tree.
  void exitNegationOperator(NegationOperatorContext context);

  /// Enter a parse tree produced by [DartlangParser.namedFormalParameters].
  /// [context] is the parse tree.
   void enterNamedFormalParameters(NamedFormalParametersContext context);

  /// Exit a parse tree produced by [DartlangParser.namedFormalParameters].
  /// [context] is the parse tree.
  void exitNamedFormalParameters(NamedFormalParametersContext context);

  /// Enter a parse tree produced by [DartlangParser.TopLevelGetterDefinition].
  /// [context] is the parse tree.
   void enterTopLevelGetterDefinition(TopLevelGetterDefinitionContext context);

  /// Exit a parse tree produced by [DartlangParser.TopLevelGetterDefinition].
  /// [context] is the parse tree.
  void exitTopLevelGetterDefinition(TopLevelGetterDefinitionContext context);

  /// Enter a parse tree produced by [DartlangParser.booleanLiteral].
  /// [context] is the parse tree.
   void enterBooleanLiteral(BooleanLiteralContext context);

  /// Exit a parse tree produced by [DartlangParser.booleanLiteral].
  /// [context] is the parse tree.
  void exitBooleanLiteral(BooleanLiteralContext context);

  /// Enter a parse tree produced by [DartlangParser.normalFormalParameters].
  /// [context] is the parse tree.
   void enterNormalFormalParameters(NormalFormalParametersContext context);

  /// Exit a parse tree produced by [DartlangParser.normalFormalParameters].
  /// [context] is the parse tree.
  void exitNormalFormalParameters(NormalFormalParametersContext context);

  /// Enter a parse tree produced by [DartlangParser.ofType].
  /// [context] is the parse tree.
   void enterOfType(OfTypeContext context);

  /// Exit a parse tree produced by [DartlangParser.ofType].
  /// [context] is the parse tree.
  void exitOfType(OfTypeContext context);

  /// Enter a parse tree produced by [DartlangParser.yieldStatement].
  /// [context] is the parse tree.
   void enterYieldStatement(YieldStatementContext context);

  /// Exit a parse tree produced by [DartlangParser.yieldStatement].
  /// [context] is the parse tree.
  void exitYieldStatement(YieldStatementContext context);

  /// Enter a parse tree produced by [DartlangParser.declaredIdentifier].
  /// [context] is the parse tree.
   void enterDeclaredIdentifier(DeclaredIdentifierContext context);

  /// Exit a parse tree produced by [DartlangParser.declaredIdentifier].
  /// [context] is the parse tree.
  void exitDeclaredIdentifier(DeclaredIdentifierContext context);

  /// Enter a parse tree produced by [DartlangParser.awaitExpression].
  /// [context] is the parse tree.
   void enterAwaitExpression(AwaitExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.awaitExpression].
  /// [context] is the parse tree.
  void exitAwaitExpression(AwaitExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.catchPart].
  /// [context] is the parse tree.
   void enterCatchPart(CatchPartContext context);

  /// Exit a parse tree produced by [DartlangParser.catchPart].
  /// [context] is the parse tree.
  void exitCatchPart(CatchPartContext context);

  /// Enter a parse tree produced by [DartlangParser.initializedIdentifierList].
  /// [context] is the parse tree.
   void enterInitializedIdentifierList(InitializedIdentifierListContext context);

  /// Exit a parse tree produced by [DartlangParser.initializedIdentifierList].
  /// [context] is the parse tree.
  void exitInitializedIdentifierList(InitializedIdentifierListContext context);

  /// Enter a parse tree produced by [DartlangParser.TopLevelExternalGetterDeclaration].
  /// [context] is the parse tree.
   void enterTopLevelExternalGetterDeclaration(TopLevelExternalGetterDeclarationContext context);

  /// Exit a parse tree produced by [DartlangParser.TopLevelExternalGetterDeclaration].
  /// [context] is the parse tree.
  void exitTopLevelExternalGetterDeclaration(TopLevelExternalGetterDeclarationContext context);

  /// Enter a parse tree produced by [DartlangParser.compoundAssignmentOperator].
  /// [context] is the parse tree.
   void enterCompoundAssignmentOperator(CompoundAssignmentOperatorContext context);

  /// Exit a parse tree produced by [DartlangParser.compoundAssignmentOperator].
  /// [context] is the parse tree.
  void exitCompoundAssignmentOperator(CompoundAssignmentOperatorContext context);

  /// Enter a parse tree produced by [DartlangParser.formalParameterList].
  /// [context] is the parse tree.
   void enterFormalParameterList(FormalParameterListContext context);

  /// Exit a parse tree produced by [DartlangParser.formalParameterList].
  /// [context] is the parse tree.
  void exitFormalParameterList(FormalParameterListContext context);

  /// Enter a parse tree produced by [DartlangParser.compilationUnit].
  /// [context] is the parse tree.
   void enterCompilationUnit(CompilationUnitContext context);

  /// Exit a parse tree produced by [DartlangParser.compilationUnit].
  /// [context] is the parse tree.
  void exitCompilationUnit(CompilationUnitContext context);

  /// Enter a parse tree produced by [DartlangParser.setterSignature].
  /// [context] is the parse tree.
   void enterSetterSignature(SetterSignatureContext context);

  /// Exit a parse tree produced by [DartlangParser.setterSignature].
  /// [context] is the parse tree.
  void exitSetterSignature(SetterSignatureContext context);

  /// Enter a parse tree produced by [DartlangParser.libraryExport].
  /// [context] is the parse tree.
   void enterLibraryExport(LibraryExportContext context);

  /// Exit a parse tree produced by [DartlangParser.libraryExport].
  /// [context] is the parse tree.
  void exitLibraryExport(LibraryExportContext context);

  /// Enter a parse tree produced by [DartlangParser.TopLevelTypeAliasDeclaration].
  /// [context] is the parse tree.
   void enterTopLevelTypeAliasDeclaration(TopLevelTypeAliasDeclarationContext context);

  /// Exit a parse tree produced by [DartlangParser.TopLevelTypeAliasDeclaration].
  /// [context] is the parse tree.
  void exitTopLevelTypeAliasDeclaration(TopLevelTypeAliasDeclarationContext context);

  /// Enter a parse tree produced by [DartlangParser.superCallOrFieldInitializer].
  /// [context] is the parse tree.
   void enterSuperCallOrFieldInitializer(SuperCallOrFieldInitializerContext context);

  /// Exit a parse tree produced by [DartlangParser.superCallOrFieldInitializer].
  /// [context] is the parse tree.
  void exitSuperCallOrFieldInitializer(SuperCallOrFieldInitializerContext context);

  /// Enter a parse tree produced by [DartlangParser.switchCase].
  /// [context] is the parse tree.
   void enterSwitchCase(SwitchCaseContext context);

  /// Exit a parse tree produced by [DartlangParser.switchCase].
  /// [context] is the parse tree.
  void exitSwitchCase(SwitchCaseContext context);

  /// Enter a parse tree produced by [DartlangParser.typeParameter].
  /// [context] is the parse tree.
   void enterTypeParameter(TypeParameterContext context);

  /// Exit a parse tree produced by [DartlangParser.typeParameter].
  /// [context] is the parse tree.
  void exitTypeParameter(TypeParameterContext context);

  /// Enter a parse tree produced by [DartlangParser.tryStatement].
  /// [context] is the parse tree.
   void enterTryStatement(TryStatementContext context);

  /// Exit a parse tree produced by [DartlangParser.tryStatement].
  /// [context] is the parse tree.
  void exitTryStatement(TryStatementContext context);

  /// Enter a parse tree produced by [DartlangParser.optionalPositionFormalParameters].
  /// [context] is the parse tree.
   void enterOptionalPositionFormalParameters(OptionalPositionFormalParametersContext context);

  /// Exit a parse tree produced by [DartlangParser.optionalPositionFormalParameters].
  /// [context] is the parse tree.
  void exitOptionalPositionFormalParameters(OptionalPositionFormalParametersContext context);

  /// Enter a parse tree produced by [DartlangParser.stringContentSQ].
  /// [context] is the parse tree.
   void enterStringContentSQ(StringContentSQContext context);

  /// Exit a parse tree produced by [DartlangParser.stringContentSQ].
  /// [context] is the parse tree.
  void exitStringContentSQ(StringContentSQContext context);

  /// Enter a parse tree produced by [DartlangParser.fieldInitializer].
  /// [context] is the parse tree.
   void enterFieldInitializer(FieldInitializerContext context);

  /// Exit a parse tree produced by [DartlangParser.fieldInitializer].
  /// [context] is the parse tree.
  void exitFieldInitializer(FieldInitializerContext context);

  /// Enter a parse tree produced by [DartlangParser.constructorSignature].
  /// [context] is the parse tree.
   void enterConstructorSignature(ConstructorSignatureContext context);

  /// Exit a parse tree produced by [DartlangParser.constructorSignature].
  /// [context] is the parse tree.
  void exitConstructorSignature(ConstructorSignatureContext context);

  /// Enter a parse tree produced by [DartlangParser.statements].
  /// [context] is the parse tree.
   void enterStatements(StatementsContext context);

  /// Exit a parse tree produced by [DartlangParser.statements].
  /// [context] is the parse tree.
  void exitStatements(StatementsContext context);

  /// Enter a parse tree produced by [DartlangParser.throwExpressionWithoutCascade].
  /// [context] is the parse tree.
   void enterThrowExpressionWithoutCascade(ThrowExpressionWithoutCascadeContext context);

  /// Exit a parse tree produced by [DartlangParser.throwExpressionWithoutCascade].
  /// [context] is the parse tree.
  void exitThrowExpressionWithoutCascade(ThrowExpressionWithoutCascadeContext context);

  /// Enter a parse tree produced by [DartlangParser.switchStatement].
  /// [context] is the parse tree.
   void enterSwitchStatement(SwitchStatementContext context);

  /// Exit a parse tree produced by [DartlangParser.switchStatement].
  /// [context] is the parse tree.
  void exitSwitchStatement(SwitchStatementContext context);

  /// Enter a parse tree produced by [DartlangParser.rethrowStatement].
  /// [context] is the parse tree.
   void enterRethrowStatement(RethrowStatementContext context);

  /// Exit a parse tree produced by [DartlangParser.rethrowStatement].
  /// [context] is the parse tree.
  void exitRethrowStatement(RethrowStatementContext context);

  /// Enter a parse tree produced by [DartlangParser.nonLabelledStatement].
  /// [context] is the parse tree.
   void enterNonLabelledStatement(NonLabelledStatementContext context);

  /// Exit a parse tree produced by [DartlangParser.nonLabelledStatement].
  /// [context] is the parse tree.
  void exitNonLabelledStatement(NonLabelledStatementContext context);

  /// Enter a parse tree produced by [DartlangParser.initializedVariableDeclaration].
  /// [context] is the parse tree.
   void enterInitializedVariableDeclaration(InitializedVariableDeclarationContext context);

  /// Exit a parse tree produced by [DartlangParser.initializedVariableDeclaration].
  /// [context] is the parse tree.
  void exitInitializedVariableDeclaration(InitializedVariableDeclarationContext context);

  /// Enter a parse tree produced by [DartlangParser.importOrExport].
  /// [context] is the parse tree.
   void enterImportOrExport(ImportOrExportContext context);

  /// Exit a parse tree produced by [DartlangParser.importOrExport].
  /// [context] is the parse tree.
  void exitImportOrExport(ImportOrExportContext context);

  /// Enter a parse tree produced by [DartlangParser.statement].
  /// [context] is the parse tree.
   void enterStatement(StatementContext context);

  /// Exit a parse tree produced by [DartlangParser.statement].
  /// [context] is the parse tree.
  void exitStatement(StatementContext context);

  /// Enter a parse tree produced by [DartlangParser.localFunctionDeclaration].
  /// [context] is the parse tree.
   void enterLocalFunctionDeclaration(LocalFunctionDeclarationContext context);

  /// Exit a parse tree produced by [DartlangParser.localFunctionDeclaration].
  /// [context] is the parse tree.
  void exitLocalFunctionDeclaration(LocalFunctionDeclarationContext context);

  /// Enter a parse tree produced by [DartlangParser.stringContentTDQ].
  /// [context] is the parse tree.
   void enterStringContentTDQ(StringContentTDQContext context);

  /// Exit a parse tree produced by [DartlangParser.stringContentTDQ].
  /// [context] is the parse tree.
  void exitStringContentTDQ(StringContentTDQContext context);

  /// Enter a parse tree produced by [DartlangParser.selector].
  /// [context] is the parse tree.
   void enterSelector(SelectorContext context);

  /// Exit a parse tree produced by [DartlangParser.selector].
  /// [context] is the parse tree.
  void exitSelector(SelectorContext context);

  /// Enter a parse tree produced by [DartlangParser.typeAliasBody].
  /// [context] is the parse tree.
   void enterTypeAliasBody(TypeAliasBodyContext context);

  /// Exit a parse tree produced by [DartlangParser.typeAliasBody].
  /// [context] is the parse tree.
  void exitTypeAliasBody(TypeAliasBodyContext context);

  /// Enter a parse tree produced by [DartlangParser.redirection].
  /// [context] is the parse tree.
   void enterRedirection(RedirectionContext context);

  /// Exit a parse tree produced by [DartlangParser.redirection].
  /// [context] is the parse tree.
  void exitRedirection(RedirectionContext context);

  /// Enter a parse tree produced by [DartlangParser.mixinApplicationClass].
  /// [context] is the parse tree.
   void enterMixinApplicationClass(MixinApplicationClassContext context);

  /// Exit a parse tree produced by [DartlangParser.mixinApplicationClass].
  /// [context] is the parse tree.
  void exitMixinApplicationClass(MixinApplicationClassContext context);

  /// Enter a parse tree produced by [DartlangParser.namedArgument].
  /// [context] is the parse tree.
   void enterNamedArgument(NamedArgumentContext context);

  /// Exit a parse tree produced by [DartlangParser.namedArgument].
  /// [context] is the parse tree.
  void exitNamedArgument(NamedArgumentContext context);

  /// Enter a parse tree produced by [DartlangParser.TopLevelEnumDeclaration].
  /// [context] is the parse tree.
   void enterTopLevelEnumDeclaration(TopLevelEnumDeclarationContext context);

  /// Exit a parse tree produced by [DartlangParser.TopLevelEnumDeclaration].
  /// [context] is the parse tree.
  void exitTopLevelEnumDeclaration(TopLevelEnumDeclarationContext context);

  /// Enter a parse tree produced by [DartlangParser.op].
  /// [context] is the parse tree.
   void enterOp(OpContext context);

  /// Exit a parse tree produced by [DartlangParser.op].
  /// [context] is the parse tree.
  void exitOp(OpContext context);

  /// Enter a parse tree produced by [DartlangParser.interfaces].
  /// [context] is the parse tree.
   void enterInterfaces(InterfacesContext context);

  /// Exit a parse tree produced by [DartlangParser.interfaces].
  /// [context] is the parse tree.
  void exitInterfaces(InterfacesContext context);

  /// Enter a parse tree produced by [DartlangParser.nullLiteral].
  /// [context] is the parse tree.
   void enterNullLiteral(NullLiteralContext context);

  /// Exit a parse tree produced by [DartlangParser.nullLiteral].
  /// [context] is the parse tree.
  void exitNullLiteral(NullLiteralContext context);

  /// Enter a parse tree produced by [DartlangParser.symbolLiteral].
  /// [context] is the parse tree.
   void enterSymbolLiteral(SymbolLiteralContext context);

  /// Exit a parse tree produced by [DartlangParser.symbolLiteral].
  /// [context] is the parse tree.
  void exitSymbolLiteral(SymbolLiteralContext context);

  /// Enter a parse tree produced by [DartlangParser.postfixOperator].
  /// [context] is the parse tree.
   void enterPostfixOperator(PostfixOperatorContext context);

  /// Exit a parse tree produced by [DartlangParser.postfixOperator].
  /// [context] is the parse tree.
  void exitPostfixOperator(PostfixOperatorContext context);

  /// Enter a parse tree produced by [DartlangParser.conditionalExpression].
  /// [context] is the parse tree.
   void enterConditionalExpression(ConditionalExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.conditionalExpression].
  /// [context] is the parse tree.
  void exitConditionalExpression(ConditionalExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.partDeclaration].
  /// [context] is the parse tree.
   void enterPartDeclaration(PartDeclarationContext context);

  /// Exit a parse tree produced by [DartlangParser.partDeclaration].
  /// [context] is the parse tree.
  void exitPartDeclaration(PartDeclarationContext context);

  /// Enter a parse tree produced by [DartlangParser.singleLineString].
  /// [context] is the parse tree.
   void enterSingleLineString(SingleLineStringContext context);

  /// Exit a parse tree produced by [DartlangParser.singleLineString].
  /// [context] is the parse tree.
  void exitSingleLineString(SingleLineStringContext context);

  /// Enter a parse tree produced by [DartlangParser.getterSignature].
  /// [context] is the parse tree.
   void enterGetterSignature(GetterSignatureContext context);

  /// Exit a parse tree produced by [DartlangParser.getterSignature].
  /// [context] is the parse tree.
  void exitGetterSignature(GetterSignatureContext context);

  /// Enter a parse tree produced by [DartlangParser.stringContentTSQ].
  /// [context] is the parse tree.
   void enterStringContentTSQ(StringContentTSQContext context);

  /// Exit a parse tree produced by [DartlangParser.stringContentTSQ].
  /// [context] is the parse tree.
  void exitStringContentTSQ(StringContentTSQContext context);

  /// Enter a parse tree produced by [DartlangParser.breakStatement].
  /// [context] is the parse tree.
   void enterBreakStatement(BreakStatementContext context);

  /// Exit a parse tree produced by [DartlangParser.breakStatement].
  /// [context] is the parse tree.
  void exitBreakStatement(BreakStatementContext context);

  /// Enter a parse tree produced by [DartlangParser.ifStatement].
  /// [context] is the parse tree.
   void enterIfStatement(IfStatementContext context);

  /// Exit a parse tree produced by [DartlangParser.ifStatement].
  /// [context] is the parse tree.
  void exitIfStatement(IfStatementContext context);

  /// Enter a parse tree produced by [DartlangParser.label].
  /// [context] is the parse tree.
   void enterLabel(LabelContext context);

  /// Exit a parse tree produced by [DartlangParser.label].
  /// [context] is the parse tree.
  void exitLabel(LabelContext context);

  /// Enter a parse tree produced by [DartlangParser.onPart].
  /// [context] is the parse tree.
   void enterOnPart(OnPartContext context);

  /// Exit a parse tree produced by [DartlangParser.onPart].
  /// [context] is the parse tree.
  void exitOnPart(OnPartContext context);

  /// Enter a parse tree produced by [DartlangParser.stringContentDQ].
  /// [context] is the parse tree.
   void enterStringContentDQ(StringContentDQContext context);

  /// Exit a parse tree produced by [DartlangParser.stringContentDQ].
  /// [context] is the parse tree.
  void exitStringContentDQ(StringContentDQContext context);

  /// Enter a parse tree produced by [DartlangParser.whileStatement].
  /// [context] is the parse tree.
   void enterWhileStatement(WhileStatementContext context);

  /// Exit a parse tree produced by [DartlangParser.whileStatement].
  /// [context] is the parse tree.
  void exitWhileStatement(WhileStatementContext context);

  /// Enter a parse tree produced by [DartlangParser.localVariableDeclaration].
  /// [context] is the parse tree.
   void enterLocalVariableDeclaration(LocalVariableDeclarationContext context);

  /// Exit a parse tree produced by [DartlangParser.localVariableDeclaration].
  /// [context] is the parse tree.
  void exitLocalVariableDeclaration(LocalVariableDeclarationContext context);

  /// Enter a parse tree produced by [DartlangParser.forLoopParts].
  /// [context] is the parse tree.
   void enterForLoopParts(ForLoopPartsContext context);

  /// Exit a parse tree produced by [DartlangParser.forLoopParts].
  /// [context] is the parse tree.
  void exitForLoopParts(ForLoopPartsContext context);

  /// Enter a parse tree produced by [DartlangParser.initializers].
  /// [context] is the parse tree.
   void enterInitializers(InitializersContext context);

  /// Exit a parse tree produced by [DartlangParser.initializers].
  /// [context] is the parse tree.
  void exitInitializers(InitializersContext context);

  /// Enter a parse tree produced by [DartlangParser.thisExpression].
  /// [context] is the parse tree.
   void enterThisExpression(ThisExpressionContext context);

  /// Exit a parse tree produced by [DartlangParser.thisExpression].
  /// [context] is the parse tree.
  void exitThisExpression(ThisExpressionContext context);

  /// Enter a parse tree produced by [DartlangParser.redirectingFactoryConstructorSignature].
  /// [context] is the parse tree.
   void enterRedirectingFactoryConstructorSignature(RedirectingFactoryConstructorSignatureContext context);

  /// Exit a parse tree produced by [DartlangParser.redirectingFactoryConstructorSignature].
  /// [context] is the parse tree.
  void exitRedirectingFactoryConstructorSignature(RedirectingFactoryConstructorSignatureContext context);

  /// Enter a parse tree produced by [DartlangParser.arguments].
  /// [context] is the parse tree.
   void enterArguments(ArgumentsContext context);

  /// Exit a parse tree produced by [DartlangParser.arguments].
  /// [context] is the parse tree.
  void exitArguments(ArgumentsContext context);

  /// Enter a parse tree produced by [DartlangParser.continueStatement].
  /// [context] is the parse tree.
   void enterContinueStatement(ContinueStatementContext context);

  /// Exit a parse tree produced by [DartlangParser.continueStatement].
  /// [context] is the parse tree.
  void exitContinueStatement(ContinueStatementContext context);

  /// Enter a parse tree produced by [DartlangParser.functionBody].
  /// [context] is the parse tree.
   void enterFunctionBody(FunctionBodyContext context);

  /// Exit a parse tree produced by [DartlangParser.functionBody].
  /// [context] is the parse tree.
  void exitFunctionBody(FunctionBodyContext context);

  /// Enter a parse tree produced by [DartlangParser.defaultCase].
  /// [context] is the parse tree.
   void enterDefaultCase(DefaultCaseContext context);

  /// Exit a parse tree produced by [DartlangParser.defaultCase].
  /// [context] is the parse tree.
  void exitDefaultCase(DefaultCaseContext context);
}