#Eventually I will be a package for this...

#' load_PICSURE
#' load environment variables for PICSURE API
#' @return
#' @export
#'
#' @examples
init <-function(){
        require(httr)
        require(readr)
        require(jsonlite)
        source("./lib/PICSURE_Resources.R") 
        
}

#' startSession
#'
#' @param myKey 
#'
#' @return session
#' @export
#'
#' @examples
startSession <- function(myKey="ai1abpkibuijsidutaalicmofl"){
        IRCT_PUB_KEY <- myKey
        content(GET(paste0(IRCT_START_SESSION_URL,IRCT_PUB_KEY)))
}
runQuery <- function(queryBody) {
        POST(IRCT_RUN_QUERY_URL,body=queryBody)
}
