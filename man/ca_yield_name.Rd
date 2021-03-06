% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CAnutrients.R
\docType{data}
\name{ca_yield_name}
\alias{ca_yield_name}
\title{Yield name dataset}
\format{a \code{tbl_df} with 1,047,266 observations of the following 3 fields:
\describe{
\item{YieldID}{Sequential number generated by the database for the yield
descriptions. Joins with \link{ca_yield_amount}.}
\item{YieldDescription}{Yield description in English.}
\item{YieldDescriptionF}{Yield description in French.}
}}
\source{
The data comes from Canadian Nutrient File 2015.
}
\description{
This dataset is a support or "list" table that is used to link to the yield
table. It contains a list of yield types or yield descriptions (in English
and French).
}
\examples{
ca_yield_name

if (require("dplyr")){
  head(ca_yield_name) \%>\% 
    left_join(ca_yield_amount) \%>\%
    left_join(ca_food_name) \%>\%
    select(FoodDescription, YieldDescription, YieldAmount)
}
}
\seealso{
\link{CAnutrients}
\link{ca_conversion_factor}
\link{ca_food_group}
\link{ca_food_name}
\link{ca_food_source}
\link{ca_measure_name}
\link{ca_nutrient_amount}
\link{ca_nutrient_name}
\link{ca_nutrient_source}
\link{ca_refuse_amount}
\link{ca_refuse_name}
\link{ca_yield_amount}
}
