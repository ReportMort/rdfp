#' ContentService
#' 
#' Service for retrieving Content.
#' Content entities can be targeted in
#' video LineItems.
#' You can query for content that belongs to a particular
#' category or has assigned metadata. Categories and metadata for Content are
#' stored in DFP as CustomCriteria.
#' For example, to find all Content that
#' is "genre=comedy", you would:
#' \itemize{
#'   \item{Retrieve the custom targeting key
#' corresponding to "genre" using
#' CustomTargetingService#getCustomTargetingKeysByStatement}
#'   \item{Using the
#' CustomTargetingService#getCustomTargetingValuesByStatement method and a
#' filter like "WHERE customTargetingKeyId = :genreKeyId and name = 'comedy'",
#' retrieve the ID for the "comedy" custom targeting value.}
#'   \item{Call
#' #getContentByStatementAndCustomTargetingValue with a filter like "WHERE
#' status = 'ACTIVE'" and the ID of the custom targeting value from step 2.}
#' } 
#' 
#' getContentByStatement
#' 
#' Gets a ContentPage of Content objects that satisfy the given \{@@link Statement query\}. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{status}
#'   \item{name}
#'   \item{lastModifiedDateTime}
#'   \item{lastDaiIngestDateTime}
#'   \item{daiIngestStatus}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/ContentService#getContentByStatement}{Google Documentation for getContentByStatement}
#' 
#' @param request_data a \code{list} or \code{data.frame} of data elements
#' to be formatted for a SOAP
#' request (XML format, but passed as character string)
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getContentByStatementResponse 
#' @examples
#' \dontrun{
#'  dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
#'  res <- dfp_getContentByStatement(dat)
#' }

#' @export
dfp_getContentByStatement <- function(request_data, as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ContentService', root_name='getContentByStatement', data=request_data)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getContentByStatementResponse', as_df=as_df)
  return(result)
}
#' 
#' getContentByStatementAndCustomTargetingValue
#' 
#' Gets a ContentPage of Content objects that satisfy the given Statement query. Additionally, filters on the given value ID and key ID that the value belongs to. The following fields are supported for filtering: 
#' \itemize{
#'   \item{id}
#'   \item{status}
#'   \item{name}
#'   \item{lastModifiedDateTime}
#' }
#' 
#' @seealso \href{https://developers.google.com/ad-manager/api/reference/v201905/ContentService#getContentByStatementAndCustomTargetingValue}{Google Documentation for getContentByStatementAndCustomTargetingValue}
#' 
#' @param as_df a boolean indicating whether to attempt to parse the result into
#' a \code{data.frame}
#' @param verbose a boolean indicating whether to print the service URL and POSTed XML
#' @return a \code{data.frame} or \code{list} containing all the elements of a getContentByStatementAndCustomTargetingValueResponse 
#' @examples
#' \dontrun{
#'  res <- dfp_getContentByStatementAndCustomTargetingValue()
#' }

#' @export
dfp_getContentByStatementAndCustomTargetingValue <- function(as_df=TRUE, verbose=FALSE){
  request_body <- form_request_body(service='ContentService', root_name='getContentByStatementAndCustomTargetingValue', data=NULL)
  httr_response <- execute_soap_request(request_body=request_body, verbose=verbose)
  result <- parse_soap_response(httr_response=httr_response, resp_element='getContentByStatementAndCustomTargetingValueResponse', as_df=as_df)
  return(result)
}
#' 
