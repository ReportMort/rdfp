% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dfp_utils.R
\name{dfp_select_parse}
\alias{dfp_select_parse}
\title{Take select request and return data.frame}
\usage{
dfp_select_parse(result)
}
\arguments{
\item{result}{a \code{list} returned from \link{dfp_select}}
}
\value{
a \code{data.frame} of report results as specified by the result
}
\description{
Take a select request result from the 
PublishersQueryLanguage service and parse into a data.frame
}
\note{
This function is meant to be used internally. Only use when debugging.
}
\seealso{
dfp_select
}
\keyword{internal}
