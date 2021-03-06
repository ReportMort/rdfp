% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CmsMetadataService.R
\name{dfp_getCmsMetadataValuesByStatement}
\alias{dfp_getCmsMetadataValuesByStatement}
\title{getCmsMetadataValuesByStatement}
\usage{
dfp_getCmsMetadataValuesByStatement(request_data, as_df = TRUE,
  verbose = FALSE)
}
\arguments{
\item{request_data}{a \code{list} or \code{data.frame} of data elements
to be formatted for a SOAP
request (XML format, but passed as character string)}

\item{as_df}{a boolean indicating whether to attempt to parse the result into
a \code{data.frame}}

\item{verbose}{a boolean indicating whether to print the service URL and POSTed XML}
}
\value{
a \code{data.frame} or \code{list} containing all the elements of a getCmsMetadataValuesByStatementResponse
}
\description{
Returns a page of CmsMetadataValues matching the specified Statement. The following fields are supported for filtering: 
\itemize{
  \item{id}
  \item{cmsValue}
  \item{cmsKey}
  \item{keyValueMemberContent}
}
}
\examples{
\dontrun{
 dat <- list(filterStatement=list('query'="WHERE status='ACTIVE'")) 
 res <- dfp_getCmsMetadataValuesByStatement(dat)
}
}
\seealso{
\href{https://developers.google.com/ad-manager/api/reference/v201905/CmsMetadataService#getCmsMetadataValuesByStatement}{Google Documentation for getCmsMetadataValuesByStatement}
}
