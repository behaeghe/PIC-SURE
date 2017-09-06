body <- '{
  "select": [
{
        "field": {
        "pui": "/nhanes/Demo/examination/examination/blood pressure/mean systolic/",
        "dataType": "STRING"
        },
        "alias": "Systolic Pressure"
}
],
"where": [
{
        "field": {
        "pui": "/nhanes/Demo/demographics/demographics/SEX/male",
        "dataType": "STRING"
        },
        "predicate": "CONTAINS",
        "fields": {
        "ENOUNTER": "YES"
        }
}
]
}'
bodyunbox <-  '{
  "select": 
{
        "field": {
        "pui": "/nhanes/Demo/examination/examination/blood pressure/mean systolic/",
        "dataType": "STRING"
        },
        "alias": "Systolic Pressure"
}
,
"where": 
{
        "field": {
        "pui": "/nhanes/Demo/demographics/demographics/SEX/male",
        "dataType": "STRING"
        },
        "predicate": "CONTAINS",
        "fields": {
        "ENOUNTER": "YES"
        }
}
}'
asNestedListSelect <- list(
                       list(select =
                        list(
                field=list(
                        pui = unbox('/nhanes/Demo/examination/examination/blood pressure/mean systolic/'),
                        dataType = unbox("STRING")
                        ),
                alias=unbox("Systolic Pressure")
                )))
        

asNestedListWhere <-  list(
                        field = list(
                                pui= "/nhanes/Demo/demographics/demographics/SEX/male",
                                dataType = "STRING"
                                ),
                predicate = "CONTAINS",
                fields = list(
                        ENOUNTER = "YES"
                        )
        
)

body2 <- '{
        "select":{
                "field":{
                        "pui":[
                                "/nhanes/Demo/examination/examination/blood pressure/mean systolic/"
                                ],
                        "dataType":[
                                "STRING"
                                ]
                },
                "alias":[
                        "Systolic Pressure"
                        ]
        },
        "where":{
                "field":{
                        "pui":[
                                "/nhanes/Demo/demographics/demographics/SEX/male"
                                ],
                        "dataType":[
                                "STRING"
                                ]
                },
                "predicate":[
                        "CONTAINS"
                        ],
                "fields":{
                        "ENOUNTER":[
                                "YES"
                                ]
                }
        }
}'