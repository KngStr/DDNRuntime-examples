//----------------------------------------------------------------------------
//  System.Private.Xml.dll: System.Private.Xml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=cc7b13ffcd2ddd51
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 5.0.9
//----------------------------------------------------------------------------
//  UnitName: DDN.System.Xml
//  Author: ying32
//----------------------------------------------------------------------------

unit DDN.System.Xml deprecated 'Please use DDNC.System.Private.Xml unit';

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Private.Xml;

type

{ enums }

  DNConformanceLevel = DDNC.System.Private.Xml.DNConformanceLevel;
  DNDtdProcessing = DDNC.System.Private.Xml.DNDtdProcessing;
  DNEntityHandling = DDNC.System.Private.Xml.DNEntityHandling;
  DNFormatting = DDNC.System.Private.Xml.DNFormatting;
  DNNamespaceHandling = DDNC.System.Private.Xml.DNNamespaceHandling;
  DNNewLineHandling = DDNC.System.Private.Xml.DNNewLineHandling;
  DNReadState = DDNC.System.Private.Xml.DNReadState;
  DNXmlKnownDtds = DDNC.System.Private.Xml.DNXmlKnownDtds;
  DNXmlSchemaContentProcessing = DDNC.System.Private.Xml.DNXmlSchemaContentProcessing;
  DNXmlSchemaContentType = DDNC.System.Private.Xml.DNXmlSchemaContentType;
  DNXmlSchemaDatatypeVariety = DDNC.System.Private.Xml.DNXmlSchemaDatatypeVariety;
  DNXmlSchemaDerivationMethod = DDNC.System.Private.Xml.DNXmlSchemaDerivationMethod;
  DNXmlSchemaForm = DDNC.System.Private.Xml.DNXmlSchemaForm;
  DNXmlSchemaInference_InferenceOption = DDNC.System.Private.Xml.DNXmlSchemaInference_InferenceOption;
  DNXmlSchemaUse = DDNC.System.Private.Xml.DNXmlSchemaUse;
  DNXmlSchemaValidationFlags = DDNC.System.Private.Xml.DNXmlSchemaValidationFlags;
  DNXmlSchemaValidity = DDNC.System.Private.Xml.DNXmlSchemaValidity;
  DNXmlSeverityType = DDNC.System.Private.Xml.DNXmlSeverityType;
  DNXmlTypeCode = DDNC.System.Private.Xml.DNXmlTypeCode;
  DNCodeGenerationOptions = DDNC.System.Private.Xml.DNCodeGenerationOptions;
  DNXmlMappingAccess = DDNC.System.Private.Xml.DNXmlMappingAccess;
  DNValidationType = DDNC.System.Private.Xml.DNValidationType;
  DNWhitespaceHandling = DDNC.System.Private.Xml.DNWhitespaceHandling;
  DNWriteState = DDNC.System.Private.Xml.DNWriteState;
  DNXmlDateTimeSerializationMode = DDNC.System.Private.Xml.DNXmlDateTimeSerializationMode;
  DNXmlNamespaceScope = DDNC.System.Private.Xml.DNXmlNamespaceScope;
  DNXmlNodeChangedAction = DDNC.System.Private.Xml.DNXmlNodeChangedAction;
  DNXmlNodeOrder = DDNC.System.Private.Xml.DNXmlNodeOrder;
  DNXmlNodeType = DDNC.System.Private.Xml.DNXmlNodeType;
  DNXmlOutputMethod = DDNC.System.Private.Xml.DNXmlOutputMethod;
  DNXmlSpace = DDNC.System.Private.Xml.DNXmlSpace;
  DNXmlTokenizedType = DDNC.System.Private.Xml.DNXmlTokenizedType;
  DNXmlCaseOrder = DDNC.System.Private.Xml.DNXmlCaseOrder;
  DNXmlDataType = DDNC.System.Private.Xml.DNXmlDataType;
  DNXmlSortOrder = DDNC.System.Private.Xml.DNXmlSortOrder;
  DNXPathNamespaceScope = DDNC.System.Private.Xml.DNXPathNamespaceScope;
  DNXPathNodeType = DDNC.System.Private.Xml.DNXPathNodeType;
  DNXPathResultType = DDNC.System.Private.Xml.DNXPathResultType;
  DNIteratorResult = DDNC.System.Private.Xml.DNIteratorResult;
  DNSetIteratorResult = DDNC.System.Private.Xml.DNSetIteratorResult;


type


{ declares }

  DNIApplicationResourceStreamResolver = DDNC.System.Private.Xml.DNIApplicationResourceStreamResolver;
  DNIHasXmlNode = DDNC.System.Private.Xml.DNIHasXmlNode;
  DNIXmlLineInfo = DDNC.System.Private.Xml.DNIXmlLineInfo;
  DNIXmlNamespaceResolver = DDNC.System.Private.Xml.DNIXmlNamespaceResolver;
  DNIXmlSchemaInfo = DDNC.System.Private.Xml.DNIXmlSchemaInfo;
  DNIXmlSerializable = DDNC.System.Private.Xml.DNIXmlSerializable;
  DNIXmlTextParser = DDNC.System.Private.Xml.DNIXmlTextParser;
  DNIXPathNavigable = DDNC.System.Private.Xml.DNIXPathNavigable;
  DNIXsltContextFunction = DDNC.System.Private.Xml.DNIXsltContextFunction;
  DNIXsltContextVariable = DDNC.System.Private.Xml.DNIXsltContextVariable;
  DNSoapAttributeAttribute = DDNC.System.Private.Xml.DNSoapAttributeAttribute;
  TDNSoapAttributeAttribute = DDNC.System.Private.Xml.TDNSoapAttributeAttribute;
  DNSoapElementAttribute = DDNC.System.Private.Xml.DNSoapElementAttribute;
  TDNSoapElementAttribute = DDNC.System.Private.Xml.TDNSoapElementAttribute;
  DNSoapEnumAttribute = DDNC.System.Private.Xml.DNSoapEnumAttribute;
  TDNSoapEnumAttribute = DDNC.System.Private.Xml.TDNSoapEnumAttribute;
  DNSoapIgnoreAttribute = DDNC.System.Private.Xml.DNSoapIgnoreAttribute;
  TDNSoapIgnoreAttribute = DDNC.System.Private.Xml.TDNSoapIgnoreAttribute;
  DNSoapIncludeAttribute = DDNC.System.Private.Xml.DNSoapIncludeAttribute;
  TDNSoapIncludeAttribute = DDNC.System.Private.Xml.TDNSoapIncludeAttribute;
  DNSoapTypeAttribute = DDNC.System.Private.Xml.DNSoapTypeAttribute;
  TDNSoapTypeAttribute = DDNC.System.Private.Xml.TDNSoapTypeAttribute;
  DNXmlAnyAttributeAttribute = DDNC.System.Private.Xml.DNXmlAnyAttributeAttribute;
  TDNXmlAnyAttributeAttribute = DDNC.System.Private.Xml.TDNXmlAnyAttributeAttribute;
  DNXmlAnyElementAttribute = DDNC.System.Private.Xml.DNXmlAnyElementAttribute;
  TDNXmlAnyElementAttribute = DDNC.System.Private.Xml.TDNXmlAnyElementAttribute;
  DNXmlArrayAttribute = DDNC.System.Private.Xml.DNXmlArrayAttribute;
  TDNXmlArrayAttribute = DDNC.System.Private.Xml.TDNXmlArrayAttribute;
  DNXmlArrayItemAttribute = DDNC.System.Private.Xml.DNXmlArrayItemAttribute;
  TDNXmlArrayItemAttribute = DDNC.System.Private.Xml.TDNXmlArrayItemAttribute;
  DNXmlAttributeAttribute = DDNC.System.Private.Xml.DNXmlAttributeAttribute;
  TDNXmlAttributeAttribute = DDNC.System.Private.Xml.TDNXmlAttributeAttribute;
  DNXmlChoiceIdentifierAttribute = DDNC.System.Private.Xml.DNXmlChoiceIdentifierAttribute;
  TDNXmlChoiceIdentifierAttribute = DDNC.System.Private.Xml.TDNXmlChoiceIdentifierAttribute;
  DNXmlElementAttribute = DDNC.System.Private.Xml.DNXmlElementAttribute;
  TDNXmlElementAttribute = DDNC.System.Private.Xml.TDNXmlElementAttribute;
  DNXmlEnumAttribute = DDNC.System.Private.Xml.DNXmlEnumAttribute;
  TDNXmlEnumAttribute = DDNC.System.Private.Xml.TDNXmlEnumAttribute;
  DNXmlIgnoreAttribute = DDNC.System.Private.Xml.DNXmlIgnoreAttribute;
  TDNXmlIgnoreAttribute = DDNC.System.Private.Xml.TDNXmlIgnoreAttribute;
  DNXmlIncludeAttribute = DDNC.System.Private.Xml.DNXmlIncludeAttribute;
  TDNXmlIncludeAttribute = DDNC.System.Private.Xml.TDNXmlIncludeAttribute;
  DNXmlNamespaceDeclarationsAttribute = DDNC.System.Private.Xml.DNXmlNamespaceDeclarationsAttribute;
  TDNXmlNamespaceDeclarationsAttribute = DDNC.System.Private.Xml.TDNXmlNamespaceDeclarationsAttribute;
  DNXmlRootAttribute = DDNC.System.Private.Xml.DNXmlRootAttribute;
  TDNXmlRootAttribute = DDNC.System.Private.Xml.TDNXmlRootAttribute;
  DNXmlSchemaProviderAttribute = DDNC.System.Private.Xml.DNXmlSchemaProviderAttribute;
  TDNXmlSchemaProviderAttribute = DDNC.System.Private.Xml.TDNXmlSchemaProviderAttribute;
  DNXmlSerializerAssemblyAttribute = DDNC.System.Private.Xml.DNXmlSerializerAssemblyAttribute;
  TDNXmlSerializerAssemblyAttribute = DDNC.System.Private.Xml.TDNXmlSerializerAssemblyAttribute;
  DNXmlSerializerVersionAttribute = DDNC.System.Private.Xml.DNXmlSerializerVersionAttribute;
  TDNXmlSerializerVersionAttribute = DDNC.System.Private.Xml.TDNXmlSerializerVersionAttribute;
  DNXmlTextAttribute = DDNC.System.Private.Xml.DNXmlTextAttribute;
  TDNXmlTextAttribute = DDNC.System.Private.Xml.TDNXmlTextAttribute;
  DNXmlTypeAttribute = DDNC.System.Private.Xml.DNXmlTypeAttribute;
  TDNXmlTypeAttribute = DDNC.System.Private.Xml.TDNXmlTypeAttribute;
  DNXmlSchemaObjectCollection = DDNC.System.Private.Xml.DNXmlSchemaObjectCollection;
  TDNXmlSchemaObjectCollection = DDNC.System.Private.Xml.TDNXmlSchemaObjectCollection;
  DNXmlAnyElementAttributes = DDNC.System.Private.Xml.DNXmlAnyElementAttributes;
  TDNXmlAnyElementAttributes = DDNC.System.Private.Xml.TDNXmlAnyElementAttributes;
  DNXmlArrayItemAttributes = DDNC.System.Private.Xml.DNXmlArrayItemAttributes;
  TDNXmlArrayItemAttributes = DDNC.System.Private.Xml.TDNXmlArrayItemAttributes;
  DNXmlElementAttributes = DDNC.System.Private.Xml.DNXmlElementAttributes;
  TDNXmlElementAttributes = DDNC.System.Private.Xml.TDNXmlElementAttributes;
  DNXmlSchemas = DDNC.System.Private.Xml.DNXmlSchemas;
  TDNXmlSchemas = DDNC.System.Private.Xml.TDNXmlSchemas;
  DNValidationEventArgs = DDNC.System.Private.Xml.DNValidationEventArgs;
  TDNValidationEventArgs = DDNC.System.Private.Xml.TDNValidationEventArgs;
  DNUnreferencedObjectEventArgs = DDNC.System.Private.Xml.DNUnreferencedObjectEventArgs;
  TDNUnreferencedObjectEventArgs = DDNC.System.Private.Xml.TDNUnreferencedObjectEventArgs;
  DNXmlAttributeEventArgs = DDNC.System.Private.Xml.DNXmlAttributeEventArgs;
  TDNXmlAttributeEventArgs = DDNC.System.Private.Xml.TDNXmlAttributeEventArgs;
  DNXmlElementEventArgs = DDNC.System.Private.Xml.DNXmlElementEventArgs;
  TDNXmlElementEventArgs = DDNC.System.Private.Xml.TDNXmlElementEventArgs;
  DNXmlNodeEventArgs = DDNC.System.Private.Xml.DNXmlNodeEventArgs;
  TDNXmlNodeEventArgs = DDNC.System.Private.Xml.TDNXmlNodeEventArgs;
  DNXmlNodeChangedEventArgs = DDNC.System.Private.Xml.DNXmlNodeChangedEventArgs;
  TDNXmlNodeChangedEventArgs = DDNC.System.Private.Xml.TDNXmlNodeChangedEventArgs;
  DNXsltMessageEncounteredEventArgs = DDNC.System.Private.Xml.DNXsltMessageEncounteredEventArgs;
  TDNXsltMessageEncounteredEventArgs = DDNC.System.Private.Xml.TDNXsltMessageEncounteredEventArgs;
  DNXmlSchemaException = DDNC.System.Private.Xml.DNXmlSchemaException;
  TDNXmlSchemaException = DDNC.System.Private.Xml.TDNXmlSchemaException;
  DNXmlSchemaInferenceException = DDNC.System.Private.Xml.DNXmlSchemaInferenceException;
  TDNXmlSchemaInferenceException = DDNC.System.Private.Xml.TDNXmlSchemaInferenceException;
  DNXmlSchemaValidationException = DDNC.System.Private.Xml.DNXmlSchemaValidationException;
  TDNXmlSchemaValidationException = DDNC.System.Private.Xml.TDNXmlSchemaValidationException;
  DNXmlException = DDNC.System.Private.Xml.DNXmlException;
  TDNXmlException = DDNC.System.Private.Xml.TDNXmlException;
  DNXPathException = DDNC.System.Private.Xml.DNXPathException;
  TDNXPathException = DDNC.System.Private.Xml.TDNXPathException;
  DNXsltException = DDNC.System.Private.Xml.DNXsltException;
  TDNXsltException = DDNC.System.Private.Xml.TDNXsltException;
  DNXsltCompileException = DDNC.System.Private.Xml.DNXsltCompileException;
  TDNXsltCompileException = DDNC.System.Private.Xml.TDNXsltCompileException;
  DNXmlDeserializationEvents = DDNC.System.Private.Xml.DNXmlDeserializationEvents;
  TDNXmlDeserializationEvents = DDNC.System.Private.Xml.TDNXmlDeserializationEvents;
  DNAncestorDocOrderIterator = DDNC.System.Private.Xml.DNAncestorDocOrderIterator;
  TDNAncestorDocOrderIterator = DDNC.System.Private.Xml.TDNAncestorDocOrderIterator;
  DNAncestorIterator = DDNC.System.Private.Xml.DNAncestorIterator;
  TDNAncestorIterator = DDNC.System.Private.Xml.TDNAncestorIterator;
  DNAttributeContentIterator = DDNC.System.Private.Xml.DNAttributeContentIterator;
  TDNAttributeContentIterator = DDNC.System.Private.Xml.TDNAttributeContentIterator;
  DNAttributeIterator = DDNC.System.Private.Xml.DNAttributeIterator;
  TDNAttributeIterator = DDNC.System.Private.Xml.TDNAttributeIterator;
  DNContentIterator = DDNC.System.Private.Xml.DNContentIterator;
  TDNContentIterator = DDNC.System.Private.Xml.TDNContentIterator;
  DNContentMergeIterator = DDNC.System.Private.Xml.DNContentMergeIterator;
  TDNContentMergeIterator = DDNC.System.Private.Xml.TDNContentMergeIterator;
  DNDecimalAggregator = DDNC.System.Private.Xml.DNDecimalAggregator;
  TDNDecimalAggregator = DDNC.System.Private.Xml.TDNDecimalAggregator;
  DNDescendantIterator = DDNC.System.Private.Xml.DNDescendantIterator;
  TDNDescendantIterator = DDNC.System.Private.Xml.TDNDescendantIterator;
  DNDescendantMergeIterator = DDNC.System.Private.Xml.DNDescendantMergeIterator;
  TDNDescendantMergeIterator = DDNC.System.Private.Xml.TDNDescendantMergeIterator;
  DNDifferenceIterator = DDNC.System.Private.Xml.DNDifferenceIterator;
  TDNDifferenceIterator = DDNC.System.Private.Xml.TDNDifferenceIterator;
  DNDodSequenceMerge = DDNC.System.Private.Xml.DNDodSequenceMerge;
  TDNDodSequenceMerge = DDNC.System.Private.Xml.TDNDodSequenceMerge;
  DNDoubleAggregator = DDNC.System.Private.Xml.DNDoubleAggregator;
  TDNDoubleAggregator = DDNC.System.Private.Xml.TDNDoubleAggregator;
  DNElementContentIterator = DDNC.System.Private.Xml.DNElementContentIterator;
  TDNElementContentIterator = DDNC.System.Private.Xml.TDNElementContentIterator;
  DNFollowingSiblingIterator = DDNC.System.Private.Xml.DNFollowingSiblingIterator;
  TDNFollowingSiblingIterator = DDNC.System.Private.Xml.TDNFollowingSiblingIterator;
  DNFollowingSiblingMergeIterator = DDNC.System.Private.Xml.DNFollowingSiblingMergeIterator;
  TDNFollowingSiblingMergeIterator = DDNC.System.Private.Xml.TDNFollowingSiblingMergeIterator;
  DNIdIterator = DDNC.System.Private.Xml.DNIdIterator;
  TDNIdIterator = DDNC.System.Private.Xml.TDNIdIterator;
  DNInt32Aggregator = DDNC.System.Private.Xml.DNInt32Aggregator;
  TDNInt32Aggregator = DDNC.System.Private.Xml.TDNInt32Aggregator;
  DNInt64Aggregator = DDNC.System.Private.Xml.DNInt64Aggregator;
  TDNInt64Aggregator = DDNC.System.Private.Xml.TDNInt64Aggregator;
  DNIntersectIterator = DDNC.System.Private.Xml.DNIntersectIterator;
  TDNIntersectIterator = DDNC.System.Private.Xml.TDNIntersectIterator;
  DNNamespaceIterator = DDNC.System.Private.Xml.DNNamespaceIterator;
  TDNNamespaceIterator = DDNC.System.Private.Xml.TDNNamespaceIterator;
  DNNodeKindContentIterator = DDNC.System.Private.Xml.DNNodeKindContentIterator;
  TDNNodeKindContentIterator = DDNC.System.Private.Xml.TDNNodeKindContentIterator;
  DNNodeRangeIterator = DDNC.System.Private.Xml.DNNodeRangeIterator;
  TDNNodeRangeIterator = DDNC.System.Private.Xml.TDNNodeRangeIterator;
  DNParentIterator = DDNC.System.Private.Xml.DNParentIterator;
  TDNParentIterator = DDNC.System.Private.Xml.TDNParentIterator;
  DNPrecedingIterator = DDNC.System.Private.Xml.DNPrecedingIterator;
  TDNPrecedingIterator = DDNC.System.Private.Xml.TDNPrecedingIterator;
  DNPrecedingSiblingDocOrderIterator = DDNC.System.Private.Xml.DNPrecedingSiblingDocOrderIterator;
  TDNPrecedingSiblingDocOrderIterator = DDNC.System.Private.Xml.TDNPrecedingSiblingDocOrderIterator;
  DNPrecedingSiblingIterator = DDNC.System.Private.Xml.DNPrecedingSiblingIterator;
  TDNPrecedingSiblingIterator = DDNC.System.Private.Xml.TDNPrecedingSiblingIterator;
  DNStringConcat = DDNC.System.Private.Xml.DNStringConcat;
  TDNStringConcat = DDNC.System.Private.Xml.TDNStringConcat;
  DNUnionIterator = DDNC.System.Private.Xml.DNUnionIterator;
  TDNUnionIterator = DDNC.System.Private.Xml.TDNUnionIterator;
  DNXmlSortKeyAccumulator = DDNC.System.Private.Xml.DNXmlSortKeyAccumulator;
  TDNXmlSortKeyAccumulator = DDNC.System.Private.Xml.TDNXmlSortKeyAccumulator;
  DNXPathFollowingIterator = DDNC.System.Private.Xml.DNXPathFollowingIterator;
  TDNXPathFollowingIterator = DDNC.System.Private.Xml.TDNXPathFollowingIterator;
  DNXPathFollowingMergeIterator = DDNC.System.Private.Xml.DNXPathFollowingMergeIterator;
  TDNXPathFollowingMergeIterator = DDNC.System.Private.Xml.TDNXPathFollowingMergeIterator;
  DNXPathPrecedingDocOrderIterator = DDNC.System.Private.Xml.DNXPathPrecedingDocOrderIterator;
  TDNXPathPrecedingDocOrderIterator = DDNC.System.Private.Xml.TDNXPathPrecedingDocOrderIterator;
  DNXPathPrecedingIterator = DDNC.System.Private.Xml.DNXPathPrecedingIterator;
  TDNXPathPrecedingIterator = DDNC.System.Private.Xml.TDNXPathPrecedingIterator;
  DNXPathPrecedingMergeIterator = DDNC.System.Private.Xml.DNXPathPrecedingMergeIterator;
  TDNXPathPrecedingMergeIterator = DDNC.System.Private.Xml.TDNXPathPrecedingMergeIterator;
  DNXmlSchemaCollection = DDNC.System.Private.Xml.DNXmlSchemaCollection;
  TDNXmlSchemaCollection = DDNC.System.Private.Xml.TDNXmlSchemaCollection;
  DNXmlSchemaCollectionEnumerator = DDNC.System.Private.Xml.DNXmlSchemaCollectionEnumerator;
  TDNXmlSchemaCollectionEnumerator = DDNC.System.Private.Xml.TDNXmlSchemaCollectionEnumerator;
  DNXmlSchemaCompilationSettings = DDNC.System.Private.Xml.DNXmlSchemaCompilationSettings;
  TDNXmlSchemaCompilationSettings = DDNC.System.Private.Xml.TDNXmlSchemaCompilationSettings;
  DNXmlSchemaDatatype = DDNC.System.Private.Xml.DNXmlSchemaDatatype;
  TDNXmlSchemaDatatype = DDNC.System.Private.Xml.TDNXmlSchemaDatatype;
  DNXmlSchemaInference = DDNC.System.Private.Xml.DNXmlSchemaInference;
  TDNXmlSchemaInference = DDNC.System.Private.Xml.TDNXmlSchemaInference;
  DNXmlSchemaInfo = DDNC.System.Private.Xml.DNXmlSchemaInfo;
  TDNXmlSchemaInfo = DDNC.System.Private.Xml.TDNXmlSchemaInfo;
  DNXmlSchemaObject = DDNC.System.Private.Xml.DNXmlSchemaObject;
  TDNXmlSchemaObject = DDNC.System.Private.Xml.TDNXmlSchemaObject;
  DNXmlSchema = DDNC.System.Private.Xml.DNXmlSchema;
  TDNXmlSchema = DDNC.System.Private.Xml.TDNXmlSchema;
  DNXmlSchemaAnnotated = DDNC.System.Private.Xml.DNXmlSchemaAnnotated;
  TDNXmlSchemaAnnotated = DDNC.System.Private.Xml.TDNXmlSchemaAnnotated;
  DNXmlSchemaAnyAttribute = DDNC.System.Private.Xml.DNXmlSchemaAnyAttribute;
  TDNXmlSchemaAnyAttribute = DDNC.System.Private.Xml.TDNXmlSchemaAnyAttribute;
  DNXmlSchemaAttribute = DDNC.System.Private.Xml.DNXmlSchemaAttribute;
  TDNXmlSchemaAttribute = DDNC.System.Private.Xml.TDNXmlSchemaAttribute;
  DNXmlSchemaAttributeGroup = DDNC.System.Private.Xml.DNXmlSchemaAttributeGroup;
  TDNXmlSchemaAttributeGroup = DDNC.System.Private.Xml.TDNXmlSchemaAttributeGroup;
  DNXmlSchemaAttributeGroupRef = DDNC.System.Private.Xml.DNXmlSchemaAttributeGroupRef;
  TDNXmlSchemaAttributeGroupRef = DDNC.System.Private.Xml.TDNXmlSchemaAttributeGroupRef;
  DNXmlSchemaContent = DDNC.System.Private.Xml.DNXmlSchemaContent;
  TDNXmlSchemaContent = DDNC.System.Private.Xml.TDNXmlSchemaContent;
  DNXmlSchemaComplexContentExtension = DDNC.System.Private.Xml.DNXmlSchemaComplexContentExtension;
  TDNXmlSchemaComplexContentExtension = DDNC.System.Private.Xml.TDNXmlSchemaComplexContentExtension;
  DNXmlSchemaComplexContentRestriction = DDNC.System.Private.Xml.DNXmlSchemaComplexContentRestriction;
  TDNXmlSchemaComplexContentRestriction = DDNC.System.Private.Xml.TDNXmlSchemaComplexContentRestriction;
  DNXmlSchemaSimpleContentExtension = DDNC.System.Private.Xml.DNXmlSchemaSimpleContentExtension;
  TDNXmlSchemaSimpleContentExtension = DDNC.System.Private.Xml.TDNXmlSchemaSimpleContentExtension;
  DNXmlSchemaSimpleContentRestriction = DDNC.System.Private.Xml.DNXmlSchemaSimpleContentRestriction;
  TDNXmlSchemaSimpleContentRestriction = DDNC.System.Private.Xml.TDNXmlSchemaSimpleContentRestriction;
  DNXmlSchemaContentModel = DDNC.System.Private.Xml.DNXmlSchemaContentModel;
  TDNXmlSchemaContentModel = DDNC.System.Private.Xml.TDNXmlSchemaContentModel;
  DNXmlSchemaComplexContent = DDNC.System.Private.Xml.DNXmlSchemaComplexContent;
  TDNXmlSchemaComplexContent = DDNC.System.Private.Xml.TDNXmlSchemaComplexContent;
  DNXmlSchemaSimpleContent = DDNC.System.Private.Xml.DNXmlSchemaSimpleContent;
  TDNXmlSchemaSimpleContent = DDNC.System.Private.Xml.TDNXmlSchemaSimpleContent;
  DNXmlSchemaFacet = DDNC.System.Private.Xml.DNXmlSchemaFacet;
  TDNXmlSchemaFacet = DDNC.System.Private.Xml.TDNXmlSchemaFacet;
  DNXmlSchemaEnumerationFacet = DDNC.System.Private.Xml.DNXmlSchemaEnumerationFacet;
  TDNXmlSchemaEnumerationFacet = DDNC.System.Private.Xml.TDNXmlSchemaEnumerationFacet;
  DNXmlSchemaMaxExclusiveFacet = DDNC.System.Private.Xml.DNXmlSchemaMaxExclusiveFacet;
  TDNXmlSchemaMaxExclusiveFacet = DDNC.System.Private.Xml.TDNXmlSchemaMaxExclusiveFacet;
  DNXmlSchemaMaxInclusiveFacet = DDNC.System.Private.Xml.DNXmlSchemaMaxInclusiveFacet;
  TDNXmlSchemaMaxInclusiveFacet = DDNC.System.Private.Xml.TDNXmlSchemaMaxInclusiveFacet;
  DNXmlSchemaMinExclusiveFacet = DDNC.System.Private.Xml.DNXmlSchemaMinExclusiveFacet;
  TDNXmlSchemaMinExclusiveFacet = DDNC.System.Private.Xml.TDNXmlSchemaMinExclusiveFacet;
  DNXmlSchemaMinInclusiveFacet = DDNC.System.Private.Xml.DNXmlSchemaMinInclusiveFacet;
  TDNXmlSchemaMinInclusiveFacet = DDNC.System.Private.Xml.TDNXmlSchemaMinInclusiveFacet;
  DNXmlSchemaNumericFacet = DDNC.System.Private.Xml.DNXmlSchemaNumericFacet;
  TDNXmlSchemaNumericFacet = DDNC.System.Private.Xml.TDNXmlSchemaNumericFacet;
  DNXmlSchemaFractionDigitsFacet = DDNC.System.Private.Xml.DNXmlSchemaFractionDigitsFacet;
  TDNXmlSchemaFractionDigitsFacet = DDNC.System.Private.Xml.TDNXmlSchemaFractionDigitsFacet;
  DNXmlSchemaLengthFacet = DDNC.System.Private.Xml.DNXmlSchemaLengthFacet;
  TDNXmlSchemaLengthFacet = DDNC.System.Private.Xml.TDNXmlSchemaLengthFacet;
  DNXmlSchemaMaxLengthFacet = DDNC.System.Private.Xml.DNXmlSchemaMaxLengthFacet;
  TDNXmlSchemaMaxLengthFacet = DDNC.System.Private.Xml.TDNXmlSchemaMaxLengthFacet;
  DNXmlSchemaMinLengthFacet = DDNC.System.Private.Xml.DNXmlSchemaMinLengthFacet;
  TDNXmlSchemaMinLengthFacet = DDNC.System.Private.Xml.TDNXmlSchemaMinLengthFacet;
  DNXmlSchemaTotalDigitsFacet = DDNC.System.Private.Xml.DNXmlSchemaTotalDigitsFacet;
  TDNXmlSchemaTotalDigitsFacet = DDNC.System.Private.Xml.TDNXmlSchemaTotalDigitsFacet;
  DNXmlSchemaPatternFacet = DDNC.System.Private.Xml.DNXmlSchemaPatternFacet;
  TDNXmlSchemaPatternFacet = DDNC.System.Private.Xml.TDNXmlSchemaPatternFacet;
  DNXmlSchemaWhiteSpaceFacet = DDNC.System.Private.Xml.DNXmlSchemaWhiteSpaceFacet;
  TDNXmlSchemaWhiteSpaceFacet = DDNC.System.Private.Xml.TDNXmlSchemaWhiteSpaceFacet;
  DNXmlSchemaGroup = DDNC.System.Private.Xml.DNXmlSchemaGroup;
  TDNXmlSchemaGroup = DDNC.System.Private.Xml.TDNXmlSchemaGroup;
  DNXmlSchemaIdentityConstraint = DDNC.System.Private.Xml.DNXmlSchemaIdentityConstraint;
  TDNXmlSchemaIdentityConstraint = DDNC.System.Private.Xml.TDNXmlSchemaIdentityConstraint;
  DNXmlSchemaKey = DDNC.System.Private.Xml.DNXmlSchemaKey;
  TDNXmlSchemaKey = DDNC.System.Private.Xml.TDNXmlSchemaKey;
  DNXmlSchemaKeyref = DDNC.System.Private.Xml.DNXmlSchemaKeyref;
  TDNXmlSchemaKeyref = DDNC.System.Private.Xml.TDNXmlSchemaKeyref;
  DNXmlSchemaUnique = DDNC.System.Private.Xml.DNXmlSchemaUnique;
  TDNXmlSchemaUnique = DDNC.System.Private.Xml.TDNXmlSchemaUnique;
  DNXmlSchemaNotation = DDNC.System.Private.Xml.DNXmlSchemaNotation;
  TDNXmlSchemaNotation = DDNC.System.Private.Xml.TDNXmlSchemaNotation;
  DNXmlSchemaParticle = DDNC.System.Private.Xml.DNXmlSchemaParticle;
  TDNXmlSchemaParticle = DDNC.System.Private.Xml.TDNXmlSchemaParticle;
  DNXmlSchemaAny = DDNC.System.Private.Xml.DNXmlSchemaAny;
  TDNXmlSchemaAny = DDNC.System.Private.Xml.TDNXmlSchemaAny;
  DNXmlSchemaElement = DDNC.System.Private.Xml.DNXmlSchemaElement;
  TDNXmlSchemaElement = DDNC.System.Private.Xml.TDNXmlSchemaElement;
  DNXmlSchemaGroupBase = DDNC.System.Private.Xml.DNXmlSchemaGroupBase;
  TDNXmlSchemaGroupBase = DDNC.System.Private.Xml.TDNXmlSchemaGroupBase;
  DNXmlSchemaAll = DDNC.System.Private.Xml.DNXmlSchemaAll;
  TDNXmlSchemaAll = DDNC.System.Private.Xml.TDNXmlSchemaAll;
  DNXmlSchemaChoice = DDNC.System.Private.Xml.DNXmlSchemaChoice;
  TDNXmlSchemaChoice = DDNC.System.Private.Xml.TDNXmlSchemaChoice;
  DNXmlSchemaSequence = DDNC.System.Private.Xml.DNXmlSchemaSequence;
  TDNXmlSchemaSequence = DDNC.System.Private.Xml.TDNXmlSchemaSequence;
  DNXmlSchemaGroupRef = DDNC.System.Private.Xml.DNXmlSchemaGroupRef;
  TDNXmlSchemaGroupRef = DDNC.System.Private.Xml.TDNXmlSchemaGroupRef;
  DNXmlSchemaSimpleTypeContent = DDNC.System.Private.Xml.DNXmlSchemaSimpleTypeContent;
  TDNXmlSchemaSimpleTypeContent = DDNC.System.Private.Xml.TDNXmlSchemaSimpleTypeContent;
  DNXmlSchemaSimpleTypeList = DDNC.System.Private.Xml.DNXmlSchemaSimpleTypeList;
  TDNXmlSchemaSimpleTypeList = DDNC.System.Private.Xml.TDNXmlSchemaSimpleTypeList;
  DNXmlSchemaSimpleTypeRestriction = DDNC.System.Private.Xml.DNXmlSchemaSimpleTypeRestriction;
  TDNXmlSchemaSimpleTypeRestriction = DDNC.System.Private.Xml.TDNXmlSchemaSimpleTypeRestriction;
  DNXmlSchemaSimpleTypeUnion = DDNC.System.Private.Xml.DNXmlSchemaSimpleTypeUnion;
  TDNXmlSchemaSimpleTypeUnion = DDNC.System.Private.Xml.TDNXmlSchemaSimpleTypeUnion;
  DNXmlSchemaType = DDNC.System.Private.Xml.DNXmlSchemaType;
  TDNXmlSchemaType = DDNC.System.Private.Xml.TDNXmlSchemaType;
  DNXmlSchemaComplexType = DDNC.System.Private.Xml.DNXmlSchemaComplexType;
  TDNXmlSchemaComplexType = DDNC.System.Private.Xml.TDNXmlSchemaComplexType;
  DNXmlSchemaSimpleType = DDNC.System.Private.Xml.DNXmlSchemaSimpleType;
  TDNXmlSchemaSimpleType = DDNC.System.Private.Xml.TDNXmlSchemaSimpleType;
  DNXmlSchemaXPath = DDNC.System.Private.Xml.DNXmlSchemaXPath;
  TDNXmlSchemaXPath = DDNC.System.Private.Xml.TDNXmlSchemaXPath;
  DNXmlSchemaAnnotation = DDNC.System.Private.Xml.DNXmlSchemaAnnotation;
  TDNXmlSchemaAnnotation = DDNC.System.Private.Xml.TDNXmlSchemaAnnotation;
  DNXmlSchemaAppInfo = DDNC.System.Private.Xml.DNXmlSchemaAppInfo;
  TDNXmlSchemaAppInfo = DDNC.System.Private.Xml.TDNXmlSchemaAppInfo;
  DNXmlSchemaDocumentation = DDNC.System.Private.Xml.DNXmlSchemaDocumentation;
  TDNXmlSchemaDocumentation = DDNC.System.Private.Xml.TDNXmlSchemaDocumentation;
  DNXmlSchemaExternal = DDNC.System.Private.Xml.DNXmlSchemaExternal;
  TDNXmlSchemaExternal = DDNC.System.Private.Xml.TDNXmlSchemaExternal;
  DNXmlSchemaImport = DDNC.System.Private.Xml.DNXmlSchemaImport;
  TDNXmlSchemaImport = DDNC.System.Private.Xml.TDNXmlSchemaImport;
  DNXmlSchemaInclude = DDNC.System.Private.Xml.DNXmlSchemaInclude;
  TDNXmlSchemaInclude = DDNC.System.Private.Xml.TDNXmlSchemaInclude;
  DNXmlSchemaRedefine = DDNC.System.Private.Xml.DNXmlSchemaRedefine;
  TDNXmlSchemaRedefine = DDNC.System.Private.Xml.TDNXmlSchemaRedefine;
  DNXmlSchemaObjectEnumerator = DDNC.System.Private.Xml.DNXmlSchemaObjectEnumerator;
  TDNXmlSchemaObjectEnumerator = DDNC.System.Private.Xml.TDNXmlSchemaObjectEnumerator;
  DNXmlSchemaObjectTable = DDNC.System.Private.Xml.DNXmlSchemaObjectTable;
  TDNXmlSchemaObjectTable = DDNC.System.Private.Xml.TDNXmlSchemaObjectTable;
  DNXmlSchemaSet = DDNC.System.Private.Xml.DNXmlSchemaSet;
  TDNXmlSchemaSet = DDNC.System.Private.Xml.TDNXmlSchemaSet;
  DNXmlSchemaValidator = DDNC.System.Private.Xml.DNXmlSchemaValidator;
  TDNXmlSchemaValidator = DDNC.System.Private.Xml.TDNXmlSchemaValidator;
  DNCodeIdentifier = DDNC.System.Private.Xml.DNCodeIdentifier;
  TDNCodeIdentifier = DDNC.System.Private.Xml.TDNCodeIdentifier;
  DNCodeIdentifiers = DDNC.System.Private.Xml.DNCodeIdentifiers;
  TDNCodeIdentifiers = DDNC.System.Private.Xml.TDNCodeIdentifiers;
  DNImportContext = DDNC.System.Private.Xml.DNImportContext;
  TDNImportContext = DDNC.System.Private.Xml.TDNImportContext;
  DNSchemaImporter = DDNC.System.Private.Xml.DNSchemaImporter;
  TDNSchemaImporter = DDNC.System.Private.Xml.TDNSchemaImporter;
  DNXmlSchemaImporter = DDNC.System.Private.Xml.DNXmlSchemaImporter;
  TDNXmlSchemaImporter = DDNC.System.Private.Xml.TDNXmlSchemaImporter;
  DNSoapAttributeOverrides = DDNC.System.Private.Xml.DNSoapAttributeOverrides;
  TDNSoapAttributeOverrides = DDNC.System.Private.Xml.TDNSoapAttributeOverrides;
  DNSoapAttributes = DDNC.System.Private.Xml.DNSoapAttributes;
  TDNSoapAttributes = DDNC.System.Private.Xml.TDNSoapAttributes;
  DNSoapReflectionImporter = DDNC.System.Private.Xml.DNSoapReflectionImporter;
  TDNSoapReflectionImporter = DDNC.System.Private.Xml.TDNSoapReflectionImporter;
  DNSoapSchemaMember = DDNC.System.Private.Xml.DNSoapSchemaMember;
  TDNSoapSchemaMember = DDNC.System.Private.Xml.TDNSoapSchemaMember;
  DNXmlAttributeOverrides = DDNC.System.Private.Xml.DNXmlAttributeOverrides;
  TDNXmlAttributeOverrides = DDNC.System.Private.Xml.TDNXmlAttributeOverrides;
  DNXmlAttributes = DDNC.System.Private.Xml.DNXmlAttributes;
  TDNXmlAttributes = DDNC.System.Private.Xml.TDNXmlAttributes;
  DNXmlMapping = DDNC.System.Private.Xml.DNXmlMapping;
  TDNXmlMapping = DDNC.System.Private.Xml.TDNXmlMapping;
  DNXmlMembersMapping = DDNC.System.Private.Xml.DNXmlMembersMapping;
  TDNXmlMembersMapping = DDNC.System.Private.Xml.TDNXmlMembersMapping;
  DNXmlTypeMapping = DDNC.System.Private.Xml.DNXmlTypeMapping;
  TDNXmlTypeMapping = DDNC.System.Private.Xml.TDNXmlTypeMapping;
  DNXmlMemberMapping = DDNC.System.Private.Xml.DNXmlMemberMapping;
  TDNXmlMemberMapping = DDNC.System.Private.Xml.TDNXmlMemberMapping;
  DNXmlReflectionImporter = DDNC.System.Private.Xml.DNXmlReflectionImporter;
  TDNXmlReflectionImporter = DDNC.System.Private.Xml.TDNXmlReflectionImporter;
  DNXmlReflectionMember = DDNC.System.Private.Xml.DNXmlReflectionMember;
  TDNXmlReflectionMember = DDNC.System.Private.Xml.TDNXmlReflectionMember;
  DNXmlSchemaEnumerator = DDNC.System.Private.Xml.DNXmlSchemaEnumerator;
  TDNXmlSchemaEnumerator = DDNC.System.Private.Xml.TDNXmlSchemaEnumerator;
  DNXmlSchemaExporter = DDNC.System.Private.Xml.DNXmlSchemaExporter;
  TDNXmlSchemaExporter = DDNC.System.Private.Xml.TDNXmlSchemaExporter;
  DNXmlSerializationGeneratedCode = DDNC.System.Private.Xml.DNXmlSerializationGeneratedCode;
  TDNXmlSerializationGeneratedCode = DDNC.System.Private.Xml.TDNXmlSerializationGeneratedCode;
  DNXmlSerializationReader = DDNC.System.Private.Xml.DNXmlSerializationReader;
  TDNXmlSerializationReader = DDNC.System.Private.Xml.TDNXmlSerializationReader;
  DNXmlSerializationWriter = DDNC.System.Private.Xml.DNXmlSerializationWriter;
  TDNXmlSerializationWriter = DDNC.System.Private.Xml.TDNXmlSerializationWriter;
  DNXmlSerializer = DDNC.System.Private.Xml.DNXmlSerializer;
  TDNXmlSerializer = DDNC.System.Private.Xml.TDNXmlSerializer;
  DNXmlSerializerFactory = DDNC.System.Private.Xml.DNXmlSerializerFactory;
  TDNXmlSerializerFactory = DDNC.System.Private.Xml.TDNXmlSerializerFactory;
  DNXmlSerializerImplementation = DDNC.System.Private.Xml.DNXmlSerializerImplementation;
  TDNXmlSerializerImplementation = DDNC.System.Private.Xml.TDNXmlSerializerImplementation;
  DNXmlSerializerNamespaces = DDNC.System.Private.Xml.DNXmlSerializerNamespaces;
  TDNXmlSerializerNamespaces = DDNC.System.Private.Xml.TDNXmlSerializerNamespaces;
  DNXmlConvert = DDNC.System.Private.Xml.DNXmlConvert;
  TDNXmlConvert = DDNC.System.Private.Xml.TDNXmlConvert;
  DNXmlImplementation = DDNC.System.Private.Xml.DNXmlImplementation;
  TDNXmlImplementation = DDNC.System.Private.Xml.TDNXmlImplementation;
  DNXmlNamedNodeMap = DDNC.System.Private.Xml.DNXmlNamedNodeMap;
  TDNXmlNamedNodeMap = DDNC.System.Private.Xml.TDNXmlNamedNodeMap;
  DNXmlAttributeCollection = DDNC.System.Private.Xml.DNXmlAttributeCollection;
  TDNXmlAttributeCollection = DDNC.System.Private.Xml.TDNXmlAttributeCollection;
  DNXmlNamespaceManager = DDNC.System.Private.Xml.DNXmlNamespaceManager;
  TDNXmlNamespaceManager = DDNC.System.Private.Xml.TDNXmlNamespaceManager;
  DNXsltContext = DDNC.System.Private.Xml.DNXsltContext;
  TDNXsltContext = DDNC.System.Private.Xml.TDNXsltContext;
  DNXmlNameTable = DDNC.System.Private.Xml.DNXmlNameTable;
  TDNXmlNameTable = DDNC.System.Private.Xml.TDNXmlNameTable;
  DNNameTable = DDNC.System.Private.Xml.DNNameTable;
  TDNNameTable = DDNC.System.Private.Xml.TDNNameTable;
  DNXmlNode = DDNC.System.Private.Xml.DNXmlNode;
  TDNXmlNode = DDNC.System.Private.Xml.TDNXmlNode;
  DNXmlAttribute = DDNC.System.Private.Xml.DNXmlAttribute;
  TDNXmlAttribute = DDNC.System.Private.Xml.TDNXmlAttribute;
  DNXmlDocument = DDNC.System.Private.Xml.DNXmlDocument;
  TDNXmlDocument = DDNC.System.Private.Xml.TDNXmlDocument;
  DNXmlDocumentFragment = DDNC.System.Private.Xml.DNXmlDocumentFragment;
  TDNXmlDocumentFragment = DDNC.System.Private.Xml.TDNXmlDocumentFragment;
  DNXmlEntity = DDNC.System.Private.Xml.DNXmlEntity;
  TDNXmlEntity = DDNC.System.Private.Xml.TDNXmlEntity;
  DNXmlLinkedNode = DDNC.System.Private.Xml.DNXmlLinkedNode;
  TDNXmlLinkedNode = DDNC.System.Private.Xml.TDNXmlLinkedNode;
  DNXmlCharacterData = DDNC.System.Private.Xml.DNXmlCharacterData;
  TDNXmlCharacterData = DDNC.System.Private.Xml.TDNXmlCharacterData;
  DNXmlCDataSection = DDNC.System.Private.Xml.DNXmlCDataSection;
  TDNXmlCDataSection = DDNC.System.Private.Xml.TDNXmlCDataSection;
  DNXmlComment = DDNC.System.Private.Xml.DNXmlComment;
  TDNXmlComment = DDNC.System.Private.Xml.TDNXmlComment;
  DNXmlSignificantWhitespace = DDNC.System.Private.Xml.DNXmlSignificantWhitespace;
  TDNXmlSignificantWhitespace = DDNC.System.Private.Xml.TDNXmlSignificantWhitespace;
  DNXmlText = DDNC.System.Private.Xml.DNXmlText;
  TDNXmlText = DDNC.System.Private.Xml.TDNXmlText;
  DNXmlWhitespace = DDNC.System.Private.Xml.DNXmlWhitespace;
  TDNXmlWhitespace = DDNC.System.Private.Xml.TDNXmlWhitespace;
  DNXmlDeclaration = DDNC.System.Private.Xml.DNXmlDeclaration;
  TDNXmlDeclaration = DDNC.System.Private.Xml.TDNXmlDeclaration;
  DNXmlDocumentType = DDNC.System.Private.Xml.DNXmlDocumentType;
  TDNXmlDocumentType = DDNC.System.Private.Xml.TDNXmlDocumentType;
  DNXmlElement = DDNC.System.Private.Xml.DNXmlElement;
  TDNXmlElement = DDNC.System.Private.Xml.TDNXmlElement;
  DNXmlEntityReference = DDNC.System.Private.Xml.DNXmlEntityReference;
  TDNXmlEntityReference = DDNC.System.Private.Xml.TDNXmlEntityReference;
  DNXmlProcessingInstruction = DDNC.System.Private.Xml.DNXmlProcessingInstruction;
  TDNXmlProcessingInstruction = DDNC.System.Private.Xml.TDNXmlProcessingInstruction;
  DNXmlNotation = DDNC.System.Private.Xml.DNXmlNotation;
  TDNXmlNotation = DDNC.System.Private.Xml.TDNXmlNotation;
  DNXmlNodeList = DDNC.System.Private.Xml.DNXmlNodeList;
  TDNXmlNodeList = DDNC.System.Private.Xml.TDNXmlNodeList;
  DNXmlParserContext = DDNC.System.Private.Xml.DNXmlParserContext;
  TDNXmlParserContext = DDNC.System.Private.Xml.TDNXmlParserContext;
  DNXmlQualifiedName = DDNC.System.Private.Xml.DNXmlQualifiedName;
  TDNXmlQualifiedName = DDNC.System.Private.Xml.TDNXmlQualifiedName;
  DNXmlReader = DDNC.System.Private.Xml.DNXmlReader;
  TDNXmlReader = DDNC.System.Private.Xml.TDNXmlReader;
  DNXmlNodeReader = DDNC.System.Private.Xml.DNXmlNodeReader;
  TDNXmlNodeReader = DDNC.System.Private.Xml.TDNXmlNodeReader;
  DNXmlTextReader = DDNC.System.Private.Xml.DNXmlTextReader;
  TDNXmlTextReader = DDNC.System.Private.Xml.TDNXmlTextReader;
  DNXmlValidatingReader = DDNC.System.Private.Xml.DNXmlValidatingReader;
  TDNXmlValidatingReader = DDNC.System.Private.Xml.TDNXmlValidatingReader;
  DNXmlReaderSettings = DDNC.System.Private.Xml.DNXmlReaderSettings;
  TDNXmlReaderSettings = DDNC.System.Private.Xml.TDNXmlReaderSettings;
  DNXmlResolver = DDNC.System.Private.Xml.DNXmlResolver;
  TDNXmlResolver = DDNC.System.Private.Xml.TDNXmlResolver;
  DNXmlPreloadedResolver = DDNC.System.Private.Xml.DNXmlPreloadedResolver;
  TDNXmlPreloadedResolver = DDNC.System.Private.Xml.TDNXmlPreloadedResolver;
  DNXmlSecureResolver = DDNC.System.Private.Xml.DNXmlSecureResolver;
  TDNXmlSecureResolver = DDNC.System.Private.Xml.TDNXmlSecureResolver;
  DNXmlUrlResolver = DDNC.System.Private.Xml.DNXmlUrlResolver;
  TDNXmlUrlResolver = DDNC.System.Private.Xml.TDNXmlUrlResolver;
  DNXmlWriter = DDNC.System.Private.Xml.DNXmlWriter;
  TDNXmlWriter = DDNC.System.Private.Xml.TDNXmlWriter;
  DNXmlTextWriter = DDNC.System.Private.Xml.DNXmlTextWriter;
  TDNXmlTextWriter = DDNC.System.Private.Xml.TDNXmlTextWriter;
  DNXmlQueryOutput = DDNC.System.Private.Xml.DNXmlQueryOutput;
  TDNXmlQueryOutput = DDNC.System.Private.Xml.TDNXmlQueryOutput;
  DNXmlWriterSettings = DDNC.System.Private.Xml.DNXmlWriterSettings;
  TDNXmlWriterSettings = DDNC.System.Private.Xml.TDNXmlWriterSettings;
  DNXPathDocument = DDNC.System.Private.Xml.DNXPathDocument;
  TDNXPathDocument = DDNC.System.Private.Xml.TDNXPathDocument;
  DNXPathExpression = DDNC.System.Private.Xml.DNXPathExpression;
  TDNXPathExpression = DDNC.System.Private.Xml.TDNXPathExpression;
  DNXPathItem = DDNC.System.Private.Xml.DNXPathItem;
  TDNXPathItem = DDNC.System.Private.Xml.TDNXPathItem;
  DNXmlAtomicValue = DDNC.System.Private.Xml.DNXmlAtomicValue;
  TDNXmlAtomicValue = DDNC.System.Private.Xml.TDNXmlAtomicValue;
  DNXPathNavigator = DDNC.System.Private.Xml.DNXPathNavigator;
  TDNXPathNavigator = DDNC.System.Private.Xml.TDNXPathNavigator;
  DNXPathNodeIterator = DDNC.System.Private.Xml.DNXPathNodeIterator;
  TDNXPathNodeIterator = DDNC.System.Private.Xml.TDNXPathNodeIterator;
  DNXmlCollation = DDNC.System.Private.Xml.DNXmlCollation;
  TDNXmlCollation = DDNC.System.Private.Xml.TDNXmlCollation;
  DNXmlILIndex = DDNC.System.Private.Xml.DNXmlILIndex;
  TDNXmlILIndex = DDNC.System.Private.Xml.TDNXmlILIndex;
  DNXmlILStorageConverter = DDNC.System.Private.Xml.DNXmlILStorageConverter;
  TDNXmlILStorageConverter = DDNC.System.Private.Xml.TDNXmlILStorageConverter;
  DNXmlNavigatorFilter = DDNC.System.Private.Xml.DNXmlNavigatorFilter;
  TDNXmlNavigatorFilter = DDNC.System.Private.Xml.TDNXmlNavigatorFilter;
  DNXmlQueryContext = DDNC.System.Private.Xml.DNXmlQueryContext;
  TDNXmlQueryContext = DDNC.System.Private.Xml.TDNXmlQueryContext;
  DNXmlQueryRuntime = DDNC.System.Private.Xml.DNXmlQueryRuntime;
  TDNXmlQueryRuntime = DDNC.System.Private.Xml.TDNXmlQueryRuntime;
  DNXmlQueryItemSequence = DDNC.System.Private.Xml.DNXmlQueryItemSequence;
  TDNXmlQueryItemSequence = DDNC.System.Private.Xml.TDNXmlQueryItemSequence;
  DNXmlQueryNodeSequence = DDNC.System.Private.Xml.DNXmlQueryNodeSequence;
  TDNXmlQueryNodeSequence = DDNC.System.Private.Xml.TDNXmlQueryNodeSequence;
  //DNXmlQuerySequence<T> = DDNC.System.Private.Xml.DNXmlQuerySequence<T>;
  //TDNXmlQuerySequence<T> = DDNC.System.Private.Xml.TDNXmlQuerySequence<T>;
  DNXsltConvert = DDNC.System.Private.Xml.DNXsltConvert;
  TDNXsltConvert = DDNC.System.Private.Xml.TDNXsltConvert;
  DNXsltFunctions = DDNC.System.Private.Xml.DNXsltFunctions;
  TDNXsltFunctions = DDNC.System.Private.Xml.TDNXsltFunctions;
  DNXsltLibrary = DDNC.System.Private.Xml.DNXsltLibrary;
  TDNXsltLibrary = DDNC.System.Private.Xml.TDNXsltLibrary;
  DNXslCompiledTransform = DDNC.System.Private.Xml.DNXslCompiledTransform;
  TDNXslCompiledTransform = DDNC.System.Private.Xml.TDNXslCompiledTransform;
  DNXsltArgumentList = DDNC.System.Private.Xml.DNXsltArgumentList;
  TDNXsltArgumentList = DDNC.System.Private.Xml.TDNXsltArgumentList;
  DNXslTransform = DDNC.System.Private.Xml.DNXslTransform;
  TDNXslTransform = DDNC.System.Private.Xml.TDNXslTransform;
  DNXsltSettings = DDNC.System.Private.Xml.DNXsltSettings;
  TDNXsltSettings = DDNC.System.Private.Xml.TDNXsltSettings;

{ delegates }

  DNValidationEventHandler = DDNC.System.Private.Xml.DNValidationEventHandler;
  DNXmlValueGetter = DDNC.System.Private.Xml.DNXmlValueGetter;
  DNUnreferencedObjectEventHandler = DDNC.System.Private.Xml.DNUnreferencedObjectEventHandler;
  DNXmlAttributeEventHandler = DDNC.System.Private.Xml.DNXmlAttributeEventHandler;
  DNXmlElementEventHandler = DDNC.System.Private.Xml.DNXmlElementEventHandler;
  DNXmlNodeEventHandler = DDNC.System.Private.Xml.DNXmlNodeEventHandler;
  DNXmlSerializationCollectionFixupCallback = DDNC.System.Private.Xml.DNXmlSerializationCollectionFixupCallback;
  DNXmlSerializationFixupCallback = DDNC.System.Private.Xml.DNXmlSerializationFixupCallback;
  DNXmlSerializationReadCallback = DDNC.System.Private.Xml.DNXmlSerializationReadCallback;
  DNXmlSerializationWriteCallback = DDNC.System.Private.Xml.DNXmlSerializationWriteCallback;
  DNXmlNodeChangedEventHandler = DDNC.System.Private.Xml.DNXmlNodeChangedEventHandler;
  DNXsltMessageEncounteredEventHandler = DDNC.System.Private.Xml.DNXsltMessageEncounteredEventHandler;



{ objects }


implementation

end.
