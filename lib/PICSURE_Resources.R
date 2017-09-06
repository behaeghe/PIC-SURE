#Let's load some constants that will make the use of the API easier...
IRCT_REST_BASE_URL <- "https://nhanes.hms.harvard.edu/"
##TO DO: should we use paste0 ?
#REST URL
IRCT_CL_SERVICE_URL <- paste(IRCT_REST_BASE_URL,"rest/v1/",sep="")

#Service URLS
IRCT_RESOURCE_BASE_URL <- paste(IRCT_CL_SERVICE_URL,"resourceService/",sep="")
IRCT_QUERY_BASE_URL <- paste(IRCT_CL_SERVICE_URL,"queryService/",sep="")
IRCT_RESULTS_BASE_URL <- paste(IRCT_CL_SERVICE_URL,"resultService/",sep="")
IRCT_PROCESS_BASE_URL <- paste(IRCT_CL_SERVICE_URL,"processService/",sep="")
IRCT_SECURITY_BASE_URL <- paste(IRCT_CL_SERVICE_URL,"securityService/", sep="")

#Security
IRCT_CREATE_STATE_URL <- paste(IRCT_SECURITY_BASE_URL,"createState/",sep="")
IRCT_CREATE_KEY_URL <- paste0(IRCT_SECURITY_BASE_URL,"createKey/")
IRCT_CREATE_KEY_URL <- paste0(IRCT_SECURITY_BASE_URL,"createKey/")
IRCT_START_SESSION_URL <- paste0(IRCT_SECURITY_BASE_URL,"startSession?key=")

#List resources
IRCT_LIST_RESOURCE_URL <- paste(IRCT_RESOURCE_BASE_URL,"resources",sep="")
IRCT_PATH_RESOURCE_URL <- paste(IRCT_RESOURCE_BASE_URL,"path",sep="")

#Query
IRCT_START_QUERY_URL <- paste(IRCT_QUERY_BASE_URL,"startQuery",sep="")
IRCT_CLAUSE_URL <- paste(IRCT_QUERY_BASE_URL,"clause",sep="")
IRCT_RUN_QUERY_URL <- paste(IRCT_QUERY_BASE_URL,"runQuery",sep="")

#Process
IRCT_START_PROCESS_URL <- paste(IRCT_PROCESS_BASE_URL,"startProcess",sep="")
IRCT_UPDATE_PROCESS_URL <- paste(IRCT_PROCESS_BASE_URL,"updateProcess",sep="")
IRCT_RUN_PROCESS_URL <- paste(IRCT_PROCESS_BASE_URL,"runProcess",sep="")

#Result
IRCT_GET_RESULTS_STATUS_URL <- paste(IRCT_RESULTS_BASE_URL,"resultStatus",sep="")
IRCT_GET_RESULTS_FORMATS_URL <- paste(IRCT_RESULTS_BASE_URL,"availableFormats",sep="")
IRCT_GET_RESULTS_URL <- paste(IRCT_RESULTS_BASE_URL,"result",sep="")

#Key
IRCT_PUB_KEY <- "ai1abpkibuijsidutaalicmofl" ##Replace with your own key