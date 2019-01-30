select MSTDateDimKey,count(distinct leadid) from MoveDM.CustomerDM.tblLeadTransactionalFact with(nolock)
where MSTDateDimKey > = 20190121
group by MSTDateDimKey
order by 1
