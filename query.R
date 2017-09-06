
fieldlst <- list(pui=unbox("mypath"),dataType=unbox("somedatatype"))
aliaslst <- list(alias=unbox("Systolic Pressure"))
clauseItem <- list(fields=fieldlst,aliaslst)
selectlst <- list(select=clauseItem)
toJSON(selectlst,pretty=TRUE)

fields <- list(
        pui=unbox("/nhanes/Demo/demographics/demographics/SEX/male"),
        dataType = unbox("STRING")
)
where = list(where=list(field=fields), 
             predicate=unbox("CONTAINS"),
             fields=list(ENOUNTER=unbox("YES")))
toJSON(where, pretty=TRUE)