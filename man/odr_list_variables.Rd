% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/odr_list_variables.R
\name{odr_list_variables}
\alias{odr_list_variables}
\title{Get informations related to the variables available for a given collection}
\usage{
odr_list_variables(collection, credentials = NULL)
}
\arguments{
\item{collection}{string. mandatory. Collection of interest (see details of \link{odr_get_url}).}

\item{credentials}{vector string of length 2 with username and password. optional.}
}
\value{
A data.frame with the available variables for the collection, and a set of related information for each variable.
The variables marked as "extractable" in the column "extractable_w_opendapr" can be provided as input parameter \code{variables} of the function \link{odr_get_url}
}
\description{
Get the variables available for a given collection
}
\examples{

\donttest{
# odr_login to Earthdata
log <- odr_login(c(Sys.getenv("earthdata_un"),Sys.getenv("earthdata_pw")),source="earthdata")

# Get the variables available for the collection MOD11A1.006
(df_varinfo <- odr_list_variables("MOD11A1.006"))
}

}
