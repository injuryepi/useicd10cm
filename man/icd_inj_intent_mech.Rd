% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/icd_inj_intent_mech.R
\name{icd_inj_intent_mech}
\alias{icd_inj_intent_mech}
\title{Add intent, mechanism, and description to injury ICD-10-CM.}
\usage{
icd_inj_intent_mech(data, icd10cm_main, reference = c("matrix",
  "specific", "intent", "mechanism"), ignore_case = TRUE)
}
\arguments{
\item{data}{input data}

\item{icd10cm_main}{principal diagnosis column name without "quotation marks"}

\item{reference}{injury matrix reference with four possible choices:
"matrix"(the default) adding intent and mechanism to the input data
"specific" adding intent, mechanism and the description of the icd10cm code
"intent" adding intent only
"mechanism" adding mechanism only}
}
\value{
return the input with additional variables (intent, mechanism and description of the icd-10-cm) depending on the choice of the reference
}
\description{
Add intent, mechanism, and description to injury ICD-10-CM.
}
\examples{
library(tidyverse)
icd10cm_data150 \%>\% add_inj_intent_mech_icd10cm(icd10cm_main = principal_diag)

data_mech <- icd10cm_data150 \%>\%
icd_inj_intent_mech(icd10cm_main = principal_diag, reference = "mechanism")

data_mech \%>\%
drop_na() \%>\%
count(mechanism) \%>\% arrange(-n) \%>\%
top_n(10)

}
