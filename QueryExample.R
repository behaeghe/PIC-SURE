fieldlst <- list(
        pui=unbox("/nhanes/Demo/examination/examination/blood pressure/mean systolic/"),
        dataType=unbox("STRING")
) ##most inner object (a key/value pairs)
fieldlst <- list(field=fieldlst) ## field object is a list of key/value pairs
aliaslst <- list(alias=unbox("Systolic Pressure"))## alias object
clauseItem <- list(fieldlst,aliaslst)##the clause item is an 'array' of field and alias
select <- list(select=clauseItem) ##top most object 'select' which is an array of field and alias objects
toJSON(select, pretty=TRUE) ##Now it look the way it should 

fields <- list(
        pui=unbox("/nhanes/Demo/demographics/demographics/SEX/male"),
        dataType = unbox("STRING")
)
where = list(where=list(field=fields), 
             predicate=unbox("CONTAINS"),
             fields=list(ENOUNTER=unbox("YES")))
toJSON(where, pretty=TRUE)

myQ <- list(select,where)
toJSON(myQ, pretty=TRUE,auto_unbox=TRUE)