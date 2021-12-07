//----------------------------------------------------------------------------
//  System.Data.Common.dll: System.Data.Common, Version=4.2.2.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a
//----------------------------------------------------------------------------
//  The code is automatically generated by the GenCodeNET tool.
//----------------------------------------------------------------------------
//  .NET Core 3.1.18
//----------------------------------------------------------------------------
//  UnitName: DDN.System.Data
//  Author: ying32
//----------------------------------------------------------------------------

unit DDN.System.Data deprecated 'Please use DDNC.System.Data.Common unit';

{$IFDEF FPC}
  {$mode delphi}//{$H+}
  {$modeswitch advancedrecords}
  {$modeswitch prefixedattributes} // Custom attributes feature，fpc3.2.2+
{$ENDIF}

interface

uses
  DDN.Runtime,
  DDNC.System.Data.Common;

type

{ enums }

  DNAcceptRejectRule = DDNC.System.Data.Common.DNAcceptRejectRule;
  DNCommandBehavior = DDNC.System.Data.Common.DNCommandBehavior;
  DNCommandType = DDNC.System.Data.Common.DNCommandType;
  DNCatalogLocation = DDNC.System.Data.Common.DNCatalogLocation;
  DNGroupByBehavior = DDNC.System.Data.Common.DNGroupByBehavior;
  DNIdentifierCase = DDNC.System.Data.Common.DNIdentifierCase;
  DNSupportedJoinOperators = DDNC.System.Data.Common.DNSupportedJoinOperators;
  DNConflictOption = DDNC.System.Data.Common.DNConflictOption;
  DNConnectionState = DDNC.System.Data.Common.DNConnectionState;
  DNDataRowAction = DDNC.System.Data.Common.DNDataRowAction;
  DNDataRowState = DDNC.System.Data.Common.DNDataRowState;
  DNDataRowVersion = DDNC.System.Data.Common.DNDataRowVersion;
  DNDataSetDateTime = DDNC.System.Data.Common.DNDataSetDateTime;
  DNDataViewRowState = DDNC.System.Data.Common.DNDataViewRowState;
  DNDbType = DDNC.System.Data.Common.DNDbType;
  DNIsolationLevel = DDNC.System.Data.Common.DNIsolationLevel;
  DNKeyRestrictionBehavior = DDNC.System.Data.Common.DNKeyRestrictionBehavior;
  DNLoadOption = DDNC.System.Data.Common.DNLoadOption;
  DNMappingType = DDNC.System.Data.Common.DNMappingType;
  DNMissingMappingAction = DDNC.System.Data.Common.DNMissingMappingAction;
  DNMissingSchemaAction = DDNC.System.Data.Common.DNMissingSchemaAction;
  DNParameterDirection = DDNC.System.Data.Common.DNParameterDirection;
  DNRule = DDNC.System.Data.Common.DNRule;
  DNSchemaSerializationMode = DDNC.System.Data.Common.DNSchemaSerializationMode;
  DNSchemaType = DDNC.System.Data.Common.DNSchemaType;
  DNSerializationFormat = DDNC.System.Data.Common.DNSerializationFormat;
  DNSqlDbType = DDNC.System.Data.Common.DNSqlDbType;
  DNSqlCompareOptions = DDNC.System.Data.Common.DNSqlCompareOptions;
  DNStorageState = DDNC.System.Data.Common.DNStorageState;
  DNStatementType = DDNC.System.Data.Common.DNStatementType;
  DNUpdateRowSource = DDNC.System.Data.Common.DNUpdateRowSource;
  DNUpdateStatus = DDNC.System.Data.Common.DNUpdateStatus;
  DNXmlReadMode = DDNC.System.Data.Common.DNXmlReadMode;
  DNXmlWriteMode = DDNC.System.Data.Common.DNXmlWriteMode;


type


{ declares }

  DNIColumnMappingCollection = DDNC.System.Data.Common.DNIColumnMappingCollection;
  DNIDataParameterCollection = DDNC.System.Data.Common.DNIDataParameterCollection;
  DNITableMappingCollection = DDNC.System.Data.Common.DNITableMappingCollection;
  DNIDbColumnSchemaGenerator = DDNC.System.Data.Common.DNIDbColumnSchemaGenerator;
  DNIColumnMapping = DDNC.System.Data.Common.DNIColumnMapping;
  DNIDataAdapter = DDNC.System.Data.Common.DNIDataAdapter;
  DNIDbDataAdapter = DDNC.System.Data.Common.DNIDbDataAdapter;
  DNIDataParameter = DDNC.System.Data.Common.DNIDataParameter;
  DNIDbDataParameter = DDNC.System.Data.Common.DNIDbDataParameter;
  DNIDataRecord = DDNC.System.Data.Common.DNIDataRecord;
  DNITableMapping = DDNC.System.Data.Common.DNITableMapping;
  DNINullable = DDNC.System.Data.Common.DNINullable;
  DNIDataReader = DDNC.System.Data.Common.DNIDataReader;
  DNIDbCommand = DDNC.System.Data.Common.DNIDbCommand;
  DNIDbConnection = DDNC.System.Data.Common.DNIDbConnection;
  DNIDbTransaction = DDNC.System.Data.Common.DNIDbTransaction;
  DNDataSysDescriptionAttribute = DDNC.System.Data.Common.DNDataSysDescriptionAttribute;
  TDNDataSysDescriptionAttribute = DDNC.System.Data.Common.TDNDataSysDescriptionAttribute;
  DNDbProviderSpecificTypePropertyAttribute = DDNC.System.Data.Common.DNDbProviderSpecificTypePropertyAttribute;
  TDNDbProviderSpecificTypePropertyAttribute = DDNC.System.Data.Common.TDNDbProviderSpecificTypePropertyAttribute;
  DNPropertyCollection = DDNC.System.Data.Common.DNPropertyCollection;
  TDNPropertyCollection = DDNC.System.Data.Common.TDNPropertyCollection;
  DNDataColumn = DDNC.System.Data.Common.DNDataColumn;
  TDNDataColumn = DDNC.System.Data.Common.TDNDataColumn;
  DNDataSet = DDNC.System.Data.Common.DNDataSet;
  TDNDataSet = DDNC.System.Data.Common.TDNDataSet;
  DNDataTable = DDNC.System.Data.Common.DNDataTable;
  TDNDataTable = DDNC.System.Data.Common.TDNDataTable;
  //DNTypedTableBase<T> = DDNC.System.Data.Common.DNTypedTableBase<T>;
  //TDNTypedTableBase<T> = DDNC.System.Data.Common.TDNTypedTableBase<T>;
  DNDataView = DDNC.System.Data.Common.DNDataView;
  TDNDataView = DDNC.System.Data.Common.TDNDataView;
  DNDataViewManager = DDNC.System.Data.Common.DNDataViewManager;
  TDNDataViewManager = DDNC.System.Data.Common.TDNDataViewManager;
  DNDbColumn = DDNC.System.Data.Common.DNDbColumn;
  TDNDbColumn = DDNC.System.Data.Common.TDNDbColumn;
  DNDbConnectionStringBuilder = DDNC.System.Data.Common.DNDbConnectionStringBuilder;
  TDNDbConnectionStringBuilder = DDNC.System.Data.Common.TDNDbConnectionStringBuilder;
  DNDbDataReaderExtensions = DDNC.System.Data.Common.DNDbDataReaderExtensions;
  TDNDbDataReaderExtensions = DDNC.System.Data.Common.TDNDbDataReaderExtensions;
  DNDbDataRecord = DDNC.System.Data.Common.DNDbDataRecord;
  TDNDbDataRecord = DDNC.System.Data.Common.TDNDbDataRecord;
  DNDbDataSourceEnumerator = DDNC.System.Data.Common.DNDbDataSourceEnumerator;
  TDNDbDataSourceEnumerator = DDNC.System.Data.Common.TDNDbDataSourceEnumerator;
  DNDbEnumerator = DDNC.System.Data.Common.DNDbEnumerator;
  TDNDbEnumerator = DDNC.System.Data.Common.TDNDbEnumerator;
  DNDbMetaDataCollectionNames = DDNC.System.Data.Common.DNDbMetaDataCollectionNames;
  TDNDbMetaDataCollectionNames = DDNC.System.Data.Common.TDNDbMetaDataCollectionNames;
  DNDbMetaDataColumnNames = DDNC.System.Data.Common.DNDbMetaDataColumnNames;
  TDNDbMetaDataColumnNames = DDNC.System.Data.Common.TDNDbMetaDataColumnNames;
  DNDbProviderFactories = DDNC.System.Data.Common.DNDbProviderFactories;
  TDNDbProviderFactories = DDNC.System.Data.Common.TDNDbProviderFactories;
  DNDbProviderFactory = DDNC.System.Data.Common.DNDbProviderFactory;
  TDNDbProviderFactory = DDNC.System.Data.Common.TDNDbProviderFactory;
  DNSchemaTableColumn = DDNC.System.Data.Common.DNSchemaTableColumn;
  TDNSchemaTableColumn = DDNC.System.Data.Common.TDNSchemaTableColumn;
  DNSchemaTableOptionalColumn = DDNC.System.Data.Common.DNSchemaTableOptionalColumn;
  TDNSchemaTableOptionalColumn = DDNC.System.Data.Common.TDNSchemaTableOptionalColumn;
  DNConstraint = DDNC.System.Data.Common.DNConstraint;
  TDNConstraint = DDNC.System.Data.Common.TDNConstraint;
  DNForeignKeyConstraint = DDNC.System.Data.Common.DNForeignKeyConstraint;
  TDNForeignKeyConstraint = DDNC.System.Data.Common.TDNForeignKeyConstraint;
  DNUniqueConstraint = DDNC.System.Data.Common.DNUniqueConstraint;
  TDNUniqueConstraint = DDNC.System.Data.Common.TDNUniqueConstraint;
  DNDataReaderExtensions = DDNC.System.Data.Common.DNDataReaderExtensions;
  TDNDataReaderExtensions = DDNC.System.Data.Common.TDNDataReaderExtensions;
  DNDataRelation = DDNC.System.Data.Common.DNDataRelation;
  TDNDataRelation = DDNC.System.Data.Common.TDNDataRelation;
  DNDataRow = DDNC.System.Data.Common.DNDataRow;
  TDNDataRow = DDNC.System.Data.Common.TDNDataRow;
  DNDataRowBuilder = DDNC.System.Data.Common.DNDataRowBuilder;
  TDNDataRowBuilder = DDNC.System.Data.Common.TDNDataRowBuilder;
  //DNDataRowComparer<TRow> = DDNC.System.Data.Common.DNDataRowComparer<TRow>;
  //TDNDataRowComparer<TRow> = DDNC.System.Data.Common.TDNDataRowComparer<TRow>;
  DNDataRowComparer = DDNC.System.Data.Common.DNDataRowComparer;
  TDNDataRowComparer = DDNC.System.Data.Common.TDNDataRowComparer;
  DNDataRowExtensions = DDNC.System.Data.Common.DNDataRowExtensions;
  TDNDataRowExtensions = DDNC.System.Data.Common.TDNDataRowExtensions;
  DNDataRowView = DDNC.System.Data.Common.DNDataRowView;
  TDNDataRowView = DDNC.System.Data.Common.TDNDataRowView;
  DNDataTableExtensions = DDNC.System.Data.Common.DNDataTableExtensions;
  TDNDataTableExtensions = DDNC.System.Data.Common.TDNDataTableExtensions;
  DNDataViewSetting = DDNC.System.Data.Common.DNDataViewSetting;
  TDNDataViewSetting = DDNC.System.Data.Common.TDNDataViewSetting;
  DNDataViewSettingCollection = DDNC.System.Data.Common.DNDataViewSettingCollection;
  TDNDataViewSettingCollection = DDNC.System.Data.Common.TDNDataViewSettingCollection;
  DNEnumerableRowCollection = DDNC.System.Data.Common.DNEnumerableRowCollection;
  TDNEnumerableRowCollection = DDNC.System.Data.Common.TDNEnumerableRowCollection;
  //DNEnumerableRowCollection<TRow> = DDNC.System.Data.Common.DNEnumerableRowCollection<TRow>;
  //TDNEnumerableRowCollection<TRow> = DDNC.System.Data.Common.TDNEnumerableRowCollection<TRow>;
  //DNOrderedEnumerableRowCollection<TRow> = DDNC.System.Data.Common.DNOrderedEnumerableRowCollection<TRow>;
  //TDNOrderedEnumerableRowCollection<TRow> = DDNC.System.Data.Common.TDNOrderedEnumerableRowCollection<TRow>;
  DNEnumerableRowCollectionExtensions = DDNC.System.Data.Common.DNEnumerableRowCollectionExtensions;
  TDNEnumerableRowCollectionExtensions = DDNC.System.Data.Common.TDNEnumerableRowCollectionExtensions;
  DNInternalDataCollectionBase = DDNC.System.Data.Common.DNInternalDataCollectionBase;
  TDNInternalDataCollectionBase = DDNC.System.Data.Common.TDNInternalDataCollectionBase;
  DNConstraintCollection = DDNC.System.Data.Common.DNConstraintCollection;
  TDNConstraintCollection = DDNC.System.Data.Common.TDNConstraintCollection;
  DNDataColumnCollection = DDNC.System.Data.Common.DNDataColumnCollection;
  TDNDataColumnCollection = DDNC.System.Data.Common.TDNDataColumnCollection;
  DNDataRelationCollection = DDNC.System.Data.Common.DNDataRelationCollection;
  TDNDataRelationCollection = DDNC.System.Data.Common.TDNDataRelationCollection;
  DNDataRowCollection = DDNC.System.Data.Common.DNDataRowCollection;
  TDNDataRowCollection = DDNC.System.Data.Common.TDNDataRowCollection;
  DNDataTableCollection = DDNC.System.Data.Common.DNDataTableCollection;
  TDNDataTableCollection = DDNC.System.Data.Common.TDNDataTableCollection;
  DNSqlBytes = DDNC.System.Data.Common.DNSqlBytes;
  TDNSqlBytes = DDNC.System.Data.Common.TDNSqlBytes;
  DNSqlChars = DDNC.System.Data.Common.DNSqlChars;
  TDNSqlChars = DDNC.System.Data.Common.TDNSqlChars;
  DNSqlXml = DDNC.System.Data.Common.DNSqlXml;
  TDNSqlXml = DDNC.System.Data.Common.TDNSqlXml;
  DNTypedTableBaseExtensions = DDNC.System.Data.Common.DNTypedTableBaseExtensions;
  TDNTypedTableBaseExtensions = DDNC.System.Data.Common.TDNTypedTableBaseExtensions;
  DNRowUpdatedEventArgs = DDNC.System.Data.Common.DNRowUpdatedEventArgs;
  TDNRowUpdatedEventArgs = DDNC.System.Data.Common.TDNRowUpdatedEventArgs;
  DNRowUpdatingEventArgs = DDNC.System.Data.Common.DNRowUpdatingEventArgs;
  TDNRowUpdatingEventArgs = DDNC.System.Data.Common.TDNRowUpdatingEventArgs;
  DNDataColumnChangeEventArgs = DDNC.System.Data.Common.DNDataColumnChangeEventArgs;
  TDNDataColumnChangeEventArgs = DDNC.System.Data.Common.TDNDataColumnChangeEventArgs;
  DNDataRowChangeEventArgs = DDNC.System.Data.Common.DNDataRowChangeEventArgs;
  TDNDataRowChangeEventArgs = DDNC.System.Data.Common.TDNDataRowChangeEventArgs;
  DNDataTableClearEventArgs = DDNC.System.Data.Common.DNDataTableClearEventArgs;
  TDNDataTableClearEventArgs = DDNC.System.Data.Common.TDNDataTableClearEventArgs;
  DNDataTableNewRowEventArgs = DDNC.System.Data.Common.DNDataTableNewRowEventArgs;
  TDNDataTableNewRowEventArgs = DDNC.System.Data.Common.TDNDataTableNewRowEventArgs;
  DNFillErrorEventArgs = DDNC.System.Data.Common.DNFillErrorEventArgs;
  TDNFillErrorEventArgs = DDNC.System.Data.Common.TDNFillErrorEventArgs;
  DNMergeFailedEventArgs = DDNC.System.Data.Common.DNMergeFailedEventArgs;
  TDNMergeFailedEventArgs = DDNC.System.Data.Common.TDNMergeFailedEventArgs;
  DNStateChangeEventArgs = DDNC.System.Data.Common.DNStateChangeEventArgs;
  TDNStateChangeEventArgs = DDNC.System.Data.Common.TDNStateChangeEventArgs;
  DNStatementCompletedEventArgs = DDNC.System.Data.Common.DNStatementCompletedEventArgs;
  TDNStatementCompletedEventArgs = DDNC.System.Data.Common.TDNStatementCompletedEventArgs;
  DNDataException = DDNC.System.Data.Common.DNDataException;
  TDNDataException = DDNC.System.Data.Common.TDNDataException;
  DNConstraintException = DDNC.System.Data.Common.DNConstraintException;
  TDNConstraintException = DDNC.System.Data.Common.TDNConstraintException;
  DNDeletedRowInaccessibleException = DDNC.System.Data.Common.DNDeletedRowInaccessibleException;
  TDNDeletedRowInaccessibleException = DDNC.System.Data.Common.TDNDeletedRowInaccessibleException;
  DNDuplicateNameException = DDNC.System.Data.Common.DNDuplicateNameException;
  TDNDuplicateNameException = DDNC.System.Data.Common.TDNDuplicateNameException;
  DNInRowChangingEventException = DDNC.System.Data.Common.DNInRowChangingEventException;
  TDNInRowChangingEventException = DDNC.System.Data.Common.TDNInRowChangingEventException;
  DNInvalidConstraintException = DDNC.System.Data.Common.DNInvalidConstraintException;
  TDNInvalidConstraintException = DDNC.System.Data.Common.TDNInvalidConstraintException;
  DNInvalidExpressionException = DDNC.System.Data.Common.DNInvalidExpressionException;
  TDNInvalidExpressionException = DDNC.System.Data.Common.TDNInvalidExpressionException;
  DNEvaluateException = DDNC.System.Data.Common.DNEvaluateException;
  TDNEvaluateException = DDNC.System.Data.Common.TDNEvaluateException;
  DNSyntaxErrorException = DDNC.System.Data.Common.DNSyntaxErrorException;
  TDNSyntaxErrorException = DDNC.System.Data.Common.TDNSyntaxErrorException;
  DNMissingPrimaryKeyException = DDNC.System.Data.Common.DNMissingPrimaryKeyException;
  TDNMissingPrimaryKeyException = DDNC.System.Data.Common.TDNMissingPrimaryKeyException;
  DNNoNullAllowedException = DDNC.System.Data.Common.DNNoNullAllowedException;
  TDNNoNullAllowedException = DDNC.System.Data.Common.TDNNoNullAllowedException;
  DNReadOnlyException = DDNC.System.Data.Common.DNReadOnlyException;
  TDNReadOnlyException = DDNC.System.Data.Common.TDNReadOnlyException;
  DNRowNotInTableException = DDNC.System.Data.Common.DNRowNotInTableException;
  TDNRowNotInTableException = DDNC.System.Data.Common.TDNRowNotInTableException;
  DNStrongTypingException = DDNC.System.Data.Common.DNStrongTypingException;
  TDNStrongTypingException = DDNC.System.Data.Common.TDNStrongTypingException;
  DNVersionNotFoundException = DDNC.System.Data.Common.DNVersionNotFoundException;
  TDNVersionNotFoundException = DDNC.System.Data.Common.TDNVersionNotFoundException;
  DNDBConcurrencyException = DDNC.System.Data.Common.DNDBConcurrencyException;
  TDNDBConcurrencyException = DDNC.System.Data.Common.TDNDBConcurrencyException;
  DNSqlTypeException = DDNC.System.Data.Common.DNSqlTypeException;
  TDNSqlTypeException = DDNC.System.Data.Common.TDNSqlTypeException;
  DNSqlAlreadyFilledException = DDNC.System.Data.Common.DNSqlAlreadyFilledException;
  TDNSqlAlreadyFilledException = DDNC.System.Data.Common.TDNSqlAlreadyFilledException;
  DNSqlNotFilledException = DDNC.System.Data.Common.DNSqlNotFilledException;
  TDNSqlNotFilledException = DDNC.System.Data.Common.TDNSqlNotFilledException;
  DNSqlNullValueException = DDNC.System.Data.Common.DNSqlNullValueException;
  TDNSqlNullValueException = DDNC.System.Data.Common.TDNSqlNullValueException;
  DNSqlTruncateException = DDNC.System.Data.Common.DNSqlTruncateException;
  TDNSqlTruncateException = DDNC.System.Data.Common.TDNSqlTruncateException;
  DNDbException = DDNC.System.Data.Common.DNDbException;
  TDNDbException = DDNC.System.Data.Common.TDNDbException;
  DNDataAdapter = DDNC.System.Data.Common.DNDataAdapter;
  TDNDataAdapter = DDNC.System.Data.Common.TDNDataAdapter;
  DNDbDataAdapter = DDNC.System.Data.Common.DNDbDataAdapter;
  TDNDbDataAdapter = DDNC.System.Data.Common.TDNDbDataAdapter;
  DNDbCommand = DDNC.System.Data.Common.DNDbCommand;
  TDNDbCommand = DDNC.System.Data.Common.TDNDbCommand;
  DNDbCommandBuilder = DDNC.System.Data.Common.DNDbCommandBuilder;
  TDNDbCommandBuilder = DDNC.System.Data.Common.TDNDbCommandBuilder;
  DNDbConnection = DDNC.System.Data.Common.DNDbConnection;
  TDNDbConnection = DDNC.System.Data.Common.TDNDbConnection;
  DNDataColumnMapping = DDNC.System.Data.Common.DNDataColumnMapping;
  TDNDataColumnMapping = DDNC.System.Data.Common.TDNDataColumnMapping;
  DNDataColumnMappingCollection = DDNC.System.Data.Common.DNDataColumnMappingCollection;
  TDNDataColumnMappingCollection = DDNC.System.Data.Common.TDNDataColumnMappingCollection;
  DNDataTableMapping = DDNC.System.Data.Common.DNDataTableMapping;
  TDNDataTableMapping = DDNC.System.Data.Common.TDNDataTableMapping;
  DNDataTableMappingCollection = DDNC.System.Data.Common.DNDataTableMappingCollection;
  TDNDataTableMappingCollection = DDNC.System.Data.Common.TDNDataTableMappingCollection;
  DNDbDataReader = DDNC.System.Data.Common.DNDbDataReader;
  TDNDbDataReader = DDNC.System.Data.Common.TDNDbDataReader;
  DNDataTableReader = DDNC.System.Data.Common.DNDataTableReader;
  TDNDataTableReader = DDNC.System.Data.Common.TDNDataTableReader;
  DNDbParameter = DDNC.System.Data.Common.DNDbParameter;
  TDNDbParameter = DDNC.System.Data.Common.TDNDbParameter;
  DNDbParameterCollection = DDNC.System.Data.Common.DNDbParameterCollection;
  TDNDbParameterCollection = DDNC.System.Data.Common.TDNDbParameterCollection;
  DNDbTransaction = DDNC.System.Data.Common.DNDbTransaction;
  TDNDbTransaction = DDNC.System.Data.Common.TDNDbTransaction;
  DNSqlBinary = DDNC.System.Data.Common.DNSqlBinary;
  TDNSqlBinary = DDNC.System.Data.Common.TDNSqlBinary;
  DNSqlBoolean = DDNC.System.Data.Common.DNSqlBoolean;
  TDNSqlBoolean = DDNC.System.Data.Common.TDNSqlBoolean;
  DNSqlByte = DDNC.System.Data.Common.DNSqlByte;
  TDNSqlByte = DDNC.System.Data.Common.TDNSqlByte;
  DNSqlDateTime = DDNC.System.Data.Common.DNSqlDateTime;
  TDNSqlDateTime = DDNC.System.Data.Common.TDNSqlDateTime;
  DNSqlDecimal = DDNC.System.Data.Common.DNSqlDecimal;
  TDNSqlDecimal = DDNC.System.Data.Common.TDNSqlDecimal;
  DNSqlDouble = DDNC.System.Data.Common.DNSqlDouble;
  TDNSqlDouble = DDNC.System.Data.Common.TDNSqlDouble;
  DNSqlGuid = DDNC.System.Data.Common.DNSqlGuid;
  TDNSqlGuid = DDNC.System.Data.Common.TDNSqlGuid;
  DNSqlInt16 = DDNC.System.Data.Common.DNSqlInt16;
  TDNSqlInt16 = DDNC.System.Data.Common.TDNSqlInt16;
  DNSqlInt32 = DDNC.System.Data.Common.DNSqlInt32;
  TDNSqlInt32 = DDNC.System.Data.Common.TDNSqlInt32;
  DNSqlInt64 = DDNC.System.Data.Common.DNSqlInt64;
  TDNSqlInt64 = DDNC.System.Data.Common.TDNSqlInt64;
  DNSqlMoney = DDNC.System.Data.Common.DNSqlMoney;
  TDNSqlMoney = DDNC.System.Data.Common.TDNSqlMoney;
  DNSqlSingle = DDNC.System.Data.Common.DNSqlSingle;
  TDNSqlSingle = DDNC.System.Data.Common.TDNSqlSingle;
  DNSqlString = DDNC.System.Data.Common.DNSqlString;
  TDNSqlString = DDNC.System.Data.Common.TDNSqlString;
  DNXmlDataDocument = DDNC.System.Data.Common.DNXmlDataDocument;
  TDNXmlDataDocument = DDNC.System.Data.Common.TDNXmlDataDocument;

{ delegates }

  DNDataColumnChangeEventHandler = DDNC.System.Data.Common.DNDataColumnChangeEventHandler;
  DNDataRowChangeEventHandler = DDNC.System.Data.Common.DNDataRowChangeEventHandler;
  DNDataTableClearEventHandler = DDNC.System.Data.Common.DNDataTableClearEventHandler;
  DNDataTableNewRowEventHandler = DDNC.System.Data.Common.DNDataTableNewRowEventHandler;
  DNFillErrorEventHandler = DDNC.System.Data.Common.DNFillErrorEventHandler;
  DNMergeFailedEventHandler = DDNC.System.Data.Common.DNMergeFailedEventHandler;
  DNStateChangeEventHandler = DDNC.System.Data.Common.DNStateChangeEventHandler;
  DNStatementCompletedEventHandler = DDNC.System.Data.Common.DNStatementCompletedEventHandler;



{ objects }


implementation

end.
