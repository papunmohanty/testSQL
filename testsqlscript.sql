SELECT
[BuilderDimKey]
,[BuilderID]
,[IsDeleted]
,[DateIsLive]
,[BDXBuilderID]
,[BuilderNumber]
,[BrandName]
,[ReportingName]
,[DefaultLeadsEmail]
,[DefaultLeadsEmailLeadsPerMessage]
,[CopyLeadsEmail]
,[CopyLeadsEmailLeadsPerMessage]
,[BuilderWebsite]
,[BrandLogo]
,[CorpID]
,[CorpBuilderNumber]
,[CorpState]
,[CorpName]
,[CorpReportingEmail]
,[SendToCorpOnly]
,[AMBuilderRecordStatus]
,CONVERT(VARCHAR(128),[EffectiveFrom]) [EffectiveFrom]
,CONVERT(VARCHAR(128),[EffectiveTo]) [EffectiveTo]
,CONVERT(VARCHAR(128),[CreatedDate]) [CreatedDate]
,[CreatedBy]
,CONVERT(VARCHAR(128),[ModifiedDate]) [ModifiedDate]
,[Modifiedby]
FROM [MoveDM].[EDW].[tblBuilderDim] WITH(NOLOCK)

  WHERE 
	(
 (EffectiveFrom >= (convert(date,GETDATE()-convert(int,'$$SourceLookBackFromDays'))) and EffectiveFrom < (convert(date,GETDATE()-convert(int,'$$SourceLookBackToDays'))))
or
((EffectiveTo >= (convert(date,GETDATE()-convert(int,'$$SourceLookBackFromDays'))) and EffectiveTo <> '9999-12-31 23:59:59.9999999') and EffectiveTo < CONVERT(date,GETDATE()-convert(int,'$$SourceLookBackToDays')))
)
