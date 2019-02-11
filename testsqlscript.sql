SELECT LTF.ActualLeadReceiverCount
	, LTF.AdvertiserID
	, LTF.AdvertiserSelectedCount
	, LTF.AgentCustomerDimKey
	, AC.CustomerID AgentCustomerID
	, AC.LegacyCustID AgentLegacyCustID
	, AC.SalesForceAccountID AgentSalesForceAccountID
	, LC.AgentOfficeDimKey
	, AO.officeID AgentOfficeID
	, AO.LegacyCustID AgentOfficeLegacyCustID
	, AO.SalesForceAccountID AgentOfficeSalesForceAccountID
	, AO.SiebelAcctID AgentOfficeSiebelAcctID
	, LTF.BillingCustomerID
	, LC.BillableCustomerID
	, LTF.BillingCustomerDimKey
	, BilCust.CustomerID BillingCustID
	, BilCust.LegacyCustID BillingLegacyCustID
	, BilCust.SalesForceAccountID BillingSalesForceAccountID
	, LTF.BillingLineItem
	, LTF.BillingRefernceID
	, LTF.BOPBillingreferenceid
	, LC.BOPCode
	, LC.BrokerAcctId
	, LC.BrokerCDHPartyId
	, LTF.BrokerCustomerDimKey
	, BC.CustomerID BrokerCustomerID
	, BC.LegacyCustID BrokerLegacyCustID
	, LC.BrokerSalesForceAccountID
	, LTF.CallresponseDimKey
	, REPLACE(Crdim.RecipientStatusDescription,'^','') RecipientStatusDescription
	, LTF.ChannelDimKey
	, CD.ChannelName
	, CCD.ChannelClassification
	, LTF.CommunityDimKey
	, ComDim.PropID CommunityID
	, ComDim.MgmtID CommunityManagmentID
	, LTF.ConListingProductRecipientCustDimkey
	, ConListPrdRecCustDim.CustomerID ConListingProductRecipientCustCustomerID
	, ConListPrdRecCustDim.LegacyCustID ConListingProductRecipientCustLegacyCustID
	, ConListPrdRecCustDim.SalesForceAccountID ConListingProductRecipientCustSalesForceAccountID
	, LTF.ConnectedAgentAdvID
	, LTF.ConnectedAgentCustomerDimKey
	, ConnectedAgentCustomerDim.CustomerID ConnectedAgentCustomerID
	, ConnectedAgentCustomerDim.LegacyCustID ConnectedAgentCustomerLegacyCustID
	, ConnectedAgentCustomerDim.SalesForceAccountID ConnectedAgentCustomerSalesForceAccountID
	, LTF.ConProductFullfillmentGroupDimKey
	, ConPRODIM.RDCFulfillmentProductName ConProductRDCFulfillmentProductName
	, LTF.ConsumerDeviceDetailsDimKey
	, ConsumerDeviceDetailsDim.DeviceType ConsumerDeviceType
	, ConsumerDeviceDetailsDim.OperatingSystem ConsumerOperatingSystem
	, ConsumerDeviceDetailsDim.ScreenWidth ConsumerScreenWidth
	, LTF.ConsumerMemberDimKey
	, MD.MemberAccountID
	, LTF.CustomerLeadTypeDimKey
	, REPLACE(LTD.LeadTypeDescription,'^','') CustomerLeadTypeDescription
	, LTF.DataSourceDimKey
	, DDim.DataSourceID
	, LTF.DomainDimKey
	, DD.DomainName
	, LTF.DuplicateLeadID
	, LTF.Duration
	, LTF.EventAttributesdimKey
	, EATR.EventAttributesGroupBitmask
	, LTF.EventTypeDimKey
	, ETD.EventTypeID
	, REPLACE(ETD.EventTypeDescription,'^','') EventTypeDescription
	, LTF.FCMAInquiryDimKey
	, FIDim.BuyerSellerType FCMA
	, FIDim.Source FCMASource
	, FIDim.PriceMin FCMAPriceMin
	, FIDim.PriceMax FCMAPriceMax
	, FIDim.Beds FCMABeds
	, FIDim.Baths FCMABaths
	, LTF.FlexFlag
	, LTF.FreeLead
	, LTF.GatewayDimKey
	, GD.GatewayName
	, LTF.LeadAdvertiserSelectionTypeDimKey
	, AsTDim.LeadAdvertiserType
	, AsTDim.LeadAdvertiserSelectionType
	, LC.LeadCategoryDimKey
	, LCD.LeadCategory
	, LCD.LeadCategoryGroup
	, LCD.LeadCategorySemiGroup
	, LCD.LeadCategorySubGroup
	, LTF.LeadContactDimKey
	, LConDim.AccountID ContactAccountID
	, REPLACE(LConDim.Email,'^','') ContactEmail
	, REPLACE(LConDim.FullName,'^','') ContactFullName
	, LConDim.ContactMethod
	, LConDim.ContactValue
	, LC.LeadContactMethodDimKey
	, LCM.LeadContactMethod
	, LCM.LeadContactMethodGroup
	, LTF.LeadCount
	, LTF.LeadForID
	, LTF.LeadFormDimKey
	, LFD.LeadFormName
	, LTF.LeadID
	, LTF.LeadIDXleads
	, LC.LeadInquiryDimKey
	, LID.TypeOfInformationRequested LeadInquiryTypeOfInformationRequested
	, LID.Source LeadInquirySource
	, LID.SellByDate LeadInquirySellByDate
	, LID.SearchCriteriaState LeadInquirySearchCriteriaState
	, LID.SearchCriteriaPropertyTypes LeadInquirySearchCriteriaPropertyTypes
	, LID.SearchCriteriaPostalCode LeadInquirySearchCriteriaPostalCode
	, LID.SearchCriteriaCity LeadInquirySearchCriteriaCity
	, REPLACE(LID.SearchCriteriaAddress,'^','') LeadInquirySearchCriteriaAddress
	, LID.SaveListing LeadInquirySaveListing
	, LID.RentalMovingDateTime LeadInquiryRentalMovingDateTime
	, REPLACE(LID.QuestionOrComment,'^','') LeadInquiryQuestionOrComment
	, LID.PreferredResponseTime LeadInquiryPreferredResponseTime
	, LID.PreferredContactTime LeadInquiryPreferredContactTime
	, LID.ListingMLSNumber LeadInquiryListingMLSNumber
	, LID.EstimatedTimeFrame LeadInquiryEstimatedTimeFrame
	, REPLACE(LID.EmailCopyToSelf,'^','') LeadInquiryEmailCopyToSelf
	, LTF.LeadProductDimKey
	, LPD.LeadProductName
	, LTF.LeadReasonDimKey
	, REPLACE(LRD.FreeLeadReason,'^','') FreeLeadReason
	, REPLACE(LRD.BlockedReason,'^','') BlockedLeadReason
	, LC.LeadRecipientProdDetail
	, LC.LeadRecipientProdFamily
	, LTF.LeadStatusDimKey
	, LSD.LeadStatusId
	, LSD.LeadStatusDescription
	, LTF.MSTDatedimkey MSTLeadSubmitDate
	, CAST(CAST(CAST(LTF.MSTDatedimkey as varchar) as datetime) + CAST(TimeDim.TimeOfDay as varchar)  as Datetime)   as MSTLeadSubmitdatetime
	, LTF.TimeDimKey
	, TimeDim.TimeOfDay
	, LTF.LeadSystemDimKey
	, LSysD.SourceSystemID
	, LSysD.SourceSyStemDescription
	, LTF.LeadTypeDimKey
	, LTypD.LeadTypeId
	, REPLACE(LTypD.LeadTypeDescription,'^','') LeadTypeDescription
	, LTF.ListingAgentDimKey
	, ListingAgentDim.AgentID ListingAgentAgentID
	, ListingAgentDim.LegacyCustID ListingAgentLegacyCustID
	, ListingAgentDim.SalesForceAccountID ListingAgentSalesForceAccountID
	, LTF.ListingBrokerDimKey
	, ListBrkDim.BrokerID ListingBrokerID
	, ListBrkDim.LegacyFirmID ListingBrokerLegacyFirmID
	, ListBrkDim.SalesForceAccountID ListingBrokerSalesForceAccountID
	, LTF.ListingDimKey
	, LTF.ListingID
	, CASE WHEN ISNUMERIC(LD.ListingPostalCode) = 1 THEN RIGHT('00000'+RTRIM(LTRIM(LD.ListingPostalCode)),5) else LD.ListingPostalCode end ListingPostalCode
	, LC.ListingMSADimKey
	, MSADim.MSA
	, MSADim.MSAID
	, MSADim.MSAMinor
	, MSADim.MSAMinorID
	, MSADim.MSAMinorDescription
	, LTF.ListingOfficeDimKey
	, ListingOfficeDim.OfficeID ListingOfficeOfficeID
	, ListingOfficeDim.LegacyCustID ListingOfficeLegacyCustID
	, ListingOfficeDim.SalesForceAccountID ListingOfficeSalesForceAccountID
	, ListingOfficeDim.SiebelAcctID ListingOfficeSiebelAcctID
	, LC.ListingRefId
	, LTF.Market
	, LTF.MarketType
	, LTF.MPRID
	, LC.OfficeCustid
	, LTF.OfficeCustomerDimKey
	, OfficeCustomerDim.CustomerID OfficeCustomerCustomerID
	, OfficeCustomerDim.LegacyCustID OfficeCustomerLegacyCustID
	, OfficeCustomerDim.SalesForceAccountID OfficeCustomerSalesForceAccountID
	, LTF.OrderId
	, LTF.PageDimKey
	, REPLACE(PGD.PageName,'^','') PageName
	, PGD.PageCategory
	, PGD.PageSubCategory
	, PGD.PageTemplate
	, PGD.PageVariation
	, LTF.PlaceOnthePageDimKey
	, PPD.SourceSectionName
	, PPD.SourceSubSectionName
	, LTF.PlanDimKey
	, NHP.BDXPlanID
	, NHP.MasterPlanID
	, NHP.PlanNumber
	, LTF.PORCHLeadDimKey
	, PORCHLeadDim.LeadID PORCHLeadLeadID
	, PORCHLeadDim.DeliveryStatus PORCHLeadDeliveryStatusDeliveryStatus
	, PORCHLeadDim.PORCHOptInFlag PORCHLeadPORCHOptInFlag
	, PORCHLeadDim.PORCHReportSuccessDateTime PORCHLeadPORCHReportSuccessDateTime
	, PORCHLeadDim.SentToPORCHDatetime PORCHLeadSentToPORCHDatetime
	, LC.PriceBucketDimKey
	, PriceBucketDim.PriceBucketName
	, PriceBucketDim.PriceGroupName
	, LC.ProductSetDimKey
	, ProductSetDim.ProductSetId
	, ProductSetDim.ProductSetName
	, ProductSetDim.BillToProductId
	, REPLACE(ProductSetDim.BillToProductDescription,'^','') BillToProductDescription
	, LTF.PropertyDimKey
	, PropertyDim.PropertyID
	, LTF.PropertyUSPSGeographyDimKey
	, GeoDim.PostalCode PropertyPostalCode
	, LTF.RDCFulfillmentProductDimKey
	, PRODIM.RDCFulfillmentProductName
	, PRODIM.RDCFulfillmentProductGroup
	, PRODIM.RDCFulfillmentProductBitMaskID
	, PRODIM.RDCFulfillmentProductDescription
	, LTF.RecipientCustomerDimKey
	, RecipientCustomerDim.CustomerID LeadRecipientCustomerID
	, RecipientCustomerDim.LegacyCustID RecipientCustomerLegacyCustID
	, RecipientCustomerDim.SalesForceAccountID RecipientCustomerSalesForceAccountID
	, LC.RecipientCustomerId
	, REPLACE(LC.RecipientCustomerName,'^','') RecipientCustomerName
	, LC.RecipientCustomerOffice
	, LC.RecipientCustomerType
	, LTF.RefElementDimKey
	, RefDim.RefElementName
	, RefDim.RefElementDescription
	, LTF.ReferringVerticalDimKey
	, REPLACE(ReferringVerticalDim.SourceApplicationName,'^','') ReferringVerticalName
	, LTF.SessionID
	, LC.SlotDetailsId
	, LTF.SourceApplicationDimKey
	, REPLACE(SourceApplicationDim.SourceApplicationName,'^','') SourceApplicationName
	, SourceApplicationDim.SourceVersion
	, LC.SourceBrandDimKey
	, REPLACE(SourceBrandDim.SourceBrandName,'^','') SourceBrandName
	, LTF.SubdivisionDimKey
	, SubdivisionDim.BDXSubdivisionID
	, REPLACE(SubdivisionDim.SubdivisionName,'^','') SubdivisionName
	, SubdivisionDim.SubdivisionNumber
	, LTF.SubmittedLeadCount
	, LTF.SubmittedLeadID
	, LTF.TigerLeadReasonDimkey
	, TigerLeadReasonDim.TigerLeadReasonCode
	, REPLACE(TigerLeadReasonDim.TigerLeadMessage,'^','')  TigerLeadMessage
	, TigerLeadReasonDim.TigerLeadStatus
	, LTF.TollFreeNumber
	, LTF.TurboCampaignID
	, LTF.VisitorID
	, LTF.WidgetDimKey
	, WidgetDim.SourceWidgetName
	, WidgetDim.WidgetOption1
	, WidgetDim.WidgetOption2
	, LC.xLeadsBillingCustomerID
        , LTF.CreatedDatetime
	, LTF.ModifiedDatetime
	, SrcClaDim.ReportExperience
	, SrcClaDim.ReportSourceApplicationName
FROM MoveDM.CustomerDM.tblLeadTransactionalFact LTF(NOLOCK)
LEFT JOIN MoveDM.EDW.tblCustomerLeads LC(NOLOCK)
	ON LTF.MSTDatedimkey = LC.leadsubmitdate
		AND LTF.TimeDimKey = LC.TimeDimKey
		AND LTF.LeadID = LC.LeadID
		AND LTF.SubmittedLeadID = LC.SubmittedLeadID
LEFT JOIN MoveDM.EDW.tblListingDim LD (NOLOCK)
	ON LD.ListingDimKey = LTF.ListingDimKey
LEFT JOIN MoveDM.EDW.tblCustomerDim AC(NOLOCK)
	ON AC.CustomerDimKey = LTF.AgentCustomerDimKey
LEFT JOIN MoveDM.EDW.tblOfficeDim AO(NOLOCK)
	ON AO.OfficeDimKey = LC.AgentOfficeDimKey
LEFT JOIN MoveDM.EDW.tblCustomerDim BilCust(NOLOCK)
	ON BilCust.CustomerDimKey = LTF.BillingCustomerDimKey
LEFT JOIN MoveDM.EDW.tblCustomerDim BC(NOLOCK)
	ON BC.CustomerDimKey = LTF.BrokerCustomerDimKey
LEFT JOIN MOVEDM.EDW.tblCallResponseDim Crdim(NOLOCK)
	ON Crdim.CallResponseDimKey = LTF.CallresponseDimKey
LEFT JOIN MoveDM.EDW.tblChannelDim CD(NOLOCK)
	ON CD.ChannelDimKey = LTF.ChannelDimKey
LEFT JOIN MoveDM.dwuser.ChannelClassificationDim CCD(NOLOCK)
	ON CCD.ChannelClassificationDimKey = CD.ChannelClassificationDimKey
LEFT JOIN MoveDM.EDW.tblCommunityDim ComDim(NOLOCK)
	ON ComDim.CommunityDimKey = LTF.CommunityDimKey
LEFT JOIN MoveDM.EDW.tblCustomerDim ConListPrdRecCustDim(NOLOCK)
	ON ConListPrdRecCustDim.CustomerDimKey = LTF.ConListingProductRecipientCustDimkey
LEFT JOIN MoveDM.EDW.tblCustomerDim ConnectedAgentCustomerDim(NOLOCK)
	ON ConnectedAgentCustomerDim.customerdimkey = LTF.ConnectedAgentCustomerDimKey
LEFT JOIN MoveDM.EDW.tblRDCFulfillmentProductDim ConPRODIM(NOLOCK)
	ON ConPRODIM.RDCFulfillmentProductDimKey = LTF.ConProductFullfillmentGroupDimKey
LEFT JOIN MoveDM.EDW.tblConsumerDeviceDetailsDim ConsumerDeviceDetailsDim(NOLOCK)
	ON ConsumerDeviceDetailsDim.ConsumerDeviceDetailsDimKey = LTF.ConsumerDeviceDetailsDimKey
LEFT JOIN MoveDM.RegistrationDM.tblMemberDim MD(NOLOCK)
	ON MD.MemberDimKey = LTF.ConsumerMemberDimKey
LEFT JOIN MoveDM.EDW.tblLeadTypeDim LTD(NOLOCK)
	ON LTD.LeadTypeDimKey = LTF.CustomerLeadTypeDimKey
LEFT JOIN MoveDM.EDW.tblDataSourceDim DDim(NOLOCK)
	ON DDim.DataSourceDimKey = LTF.DataSourceDimKey
LEFT JOIN MoveDM.EDW.tblDomainDim DD(NOLOCK)
	ON DD.DomainDimKey = LTF.DomainDimKey
LEFT JOIN MoveDM.edw.tblEventAttributesDim EATR(NOLOCK)
	ON EATR.EventAttributesDimKey = LTF.EventAttributesdimKey
LEFT JOIN MoveDM.EDW.tblEventTypeDim ETD(NOLOCK)
	ON ETD.EventTypeDimKey = LTF.EventTypeDimKey
LEFT JOIN MoveDM.EDW.tblFCMAInquiryDim FIDim(NOLOCK)
	ON FIDim.FCMAInquiryDimKey = LTF.FCMAInquiryDimKey
LEFT JOIN MoveDM.EDW.tblGatewayDim GD(NOLOCK)
	ON GD.GatewayDimKey = LTF.GatewayDimKey
LEFT JOIN MOVEDM.EDW.tblLeadAdvertiserSelectionTypeDim AsTDim(NOLOCK)
	ON AsTDim.LeadAdvertiserSelectionTypeDimKey = LTF.LeadAdvertiserSelectionTypeDimKey
LEFT JOIN MoveDM.EDW.tblLeadCategoryDim LCD(NOLOCK)
	ON LCD.LeadCategoryDimKey = LC.LeadCategoryDimKey
LEFT JOIN MoveDM.EDW.tblLeadContactMethodDim LCM(NOLOCK)
	ON LCM.LeadContactMethodDimKey = LC.LeadContactMethodDimKey
LEFT JOIN MoveDM.EDW.tblLeadFormDim LFD(NOLOCK)
	ON LFD.LeadFormDimKey = LTF.LeadFormDimKey
LEFT JOIN MoveDM.CustomerDM.tblLeadInquiryDim LID(NOLOCK)
	ON LID.LeadInquiryDimKey = LC.LeadInquiryDimKey
LEFT JOIN MoveDM.EDW.tblLeadProductDim LPD(NOLOCK)
	ON LPD.LeadProductDimKey = LTF.LeadProductDimKey
LEFT JOIN MoveDM.EDW.tblLeadReasonDim LRD(NOLOCK)
	ON LRD.LeadReasonDimKey = LTF.LeadReasonDimKey
LEFT JOIN MoveDM.EDW.tblLeadStatusDim LSD(NOLOCK)
	ON LSD.LeadStatusDimKey = LTF.LeadStatusDimKey
LEFT JOIN MoveDM.EDW.tblLeadSystemDim LSysD(NOLOCK)
	ON LsysD.LeadSystemDimKey = LTF.LeadSystemDimKey
LEFT JOIN MoveDM.EDW.tblLeadTypeDim LTypD(NOLOCK)
	ON LTypD.LeadTypeDimKey = LTF.LeadTypeDimKey
LEFT JOIN MoveDM.EDW.tblAgentDim ListingAgentDim(NOLOCK)
	ON ListingAgentDim.AgentDimKey = LTF.ListingAgentDimKey
LEFT JOIN MoveDM.EDW.tblMSADim MSADim(NOLOCK)
	ON MSADim.MSADimKey = LC.ListingMSADimKey
LEFT JOIN MoveDM.EDW.tblOfficeDim ListingOfficeDim(NOLOCK)
	ON ListingOfficeDim.officeDimkey = LTF.ListingOfficeDimKey
LEFT JOIN MoveDM.EDW.tblCustomerDim OfficeCustomerDim(NOLOCK)
	ON OfficeCustomerDim.CustomerDimKey = LTF.OfficeCustomerDimKey
LEFT JOIN MoveDM.EDW.tblPageDim PGD(NOLOCK)
	ON PGD.PageDimKey = LTF.PageDimKey
LEFT JOIN MoveDM.EDW.tblPlaceOnThePageDim PPD(NOLOCK)
	ON PPD.PlaceOnThePageDimKey = LTF.PlaceOnthePageDimKey
LEFT JOIN MoveDM.EDW.tblNewHomesPlanDim NHP(NOLOCK)
	ON NHP.PlanDimKey = LTF.PlanDimKey
LEFT JOIN MoveDM.EDW.tblPORCHLeadDataDim PORCHLeadDim(NOLOCK)
	ON PORCHLeadDim.PORCHLeadDimKey = LTF.PORCHLeadDimKey
LEFT JOIN MoveDM.SearchDM.tblPriceBucketDim PriceBucketDim(NOLOCK)
	ON PriceBucketDim.PriceBucketDimKey = LC.PriceBucketDimKey
LEFT JOIN MoveDM.EDW.tblProductSetDim ProductSetDim(NOLOCK)
	ON ProductSetDim.ProductSetDimKey = LC.ProductSetDimKey
LEFT JOIN MoveDM.EDW.tblPropertyDim PropertyDim(NOLOCK)
	ON PropertyDim.PropertyDimKey = LTF.PropertyDimKey
LEFT JOIN MoveDM.edw.tblUSPSGeographyDim GeoDim(NOLOCK)
	ON GeoDim.USPSGeographyDimKey = LTF.PropertyUSPSGeographyDimKey
LEFT JOIN MoveDM.EDW.tblRDCFulfillmentProductDim PRODIM(NOLOCK)
	ON PRODIM.RDCFulfillmentProductDimKey = LTF.RDCFulfillmentProductDimKey
LEFT JOIN MoveDM.EDW.tblCustomerDim RecipientCustomerDim(NOLOCK)
	ON RecipientCustomerDim.CustomerDimKey = LTF.RecipientCustomerDimKey
LEFT JOIN MoveDM.EDW.tblSourceApplicationDim ReferringVerticalDim(NOLOCK)
	ON ReferringVerticalDim.SourceApplicationDimKey = LTF.ReferringVerticalDimkey
LEFT JOIN MoveDM.EDW.tblSourceApplicationDim SourceApplicationDim(NOLOCK)
	ON SourceApplicationDim.SourceApplicationDimKey = LTF.SourceApplicationDimKey
LEFT JOIN [DWUser].[SourceClassificationDim] (NOLOCK) SrcClaDim
	ON LTF.SourceApplicationDimKey = SrcClaDim.SourceApplicationDimKey
LEFT JOIN MoveDM.EDW.tblSourceBrandDim SourceBrandDim(NOLOCK)
	ON SourceBrandDim.SourceBrandDimKey = LC.SourceBrandDimKey
LEFT JOIN MoveDM.EDW.tblNewHomesSubdivisionDim SubdivisionDim(NOLOCK)
	ON SubdivisionDim.SubdivisionDimKey = LTF.SubdivisionDimKey
LEFT JOIN MoveDM.EDW.tblTigerLeadReasonDim TigerLeadReasonDim(NOLOCK)
	ON TigerLeadReasonDim.TigerLeadReasonDimkey = LTF.TigerLeadReasonDimkey
LEFT JOIN MoveDM.EDW.tblTimeDim TimeDim(NOLOCK)
	ON TimeDim.TimeDimKey = LTF.TimeDimKey
LEFT JOIN MoveDM.EDW.tblWidgetDim WidgetDim(NOLOCK)
	ON WidgetDim.WidgetDimKey = LTF.WidgetDimKey
LEFT JOIN MoveDM.CustomerDM.tblLeadContactDim LConDim(NOLOCK)
	ON LConDim.LeadContactDimKey = LTF.LeadContactDimKey
LEFT JOIN EDW.tblBrokerDim ListBrkDim(NOLOCK)
	ON ListBrkDim.BrokerDimKey = LTF.ListingBrokerDimKey
LEFT JOIN MoveDM.EDW.tblRefElementDim RefDim(NOLOCK)
	ON RefDim.RefElementDimKey = LTF.RefElementDimKey
WHERE LTF.mstdatedimkey  = convert(varchar,dateadd(d,cast('$$SourceLookBackDays' as int),getdate()),112)
--between 20171130 and 20171201
