% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CAnutrients.R
\docType{data}
\name{ca_measure_name}
\alias{ca_measure_name}
\title{Measure name dataset}
\format{a \code{tbl_df} with 1,162 observations of the following 3 fields:
\describe{
\item{MeasureID}{Sequential number generated by the database for the measure
descriptions. Joins with \link{ca_conversion_factor}.}
\item{MeasureDescription}{Measure description in English.}
\item{MeasureDescriptionF}{Measure description in French.}
}}
\source{
The data comes from Canadian Nutrient File 2015.
}
\description{
This dataset is a support or "list" table that is used to link to the
\link{ca_conversion_factor} table. It contains a list of measures (in English
and French).
}
\examples{
ca_measure_name

if (require("dplyr")){
head(ca_food_name) \%>\% 
left_join(ca_conversion_factor) \%>\%
left_join(ca_measure_name) \%>\% 
select(FoodDescription, MeasureDescription)
}
}
\seealso{
\link{CAnutrients}
\link{ca_conversion_factor}
\link{ca_food_group}
\link{ca_food_name}
\link{ca_food_source}
\link{ca_nutrient_amount}
\link{ca_nutrient_name}
\link{ca_nutrient_source}
\link{ca_refuse_amount}
\link{ca_refuse_name}
\link{ca_yield_amount}
\link{ca_yield_name}
}
