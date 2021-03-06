% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CAnutrients.R
\docType{data}
\name{ca_refuse_amount}
\alias{ca_refuse_amount}
\title{Refuse amount dataset}
\format{a \code{tbl_df} with 6,897 observations of the following 4 fields:
\describe{
\item{FoodID}{Sequential number generated by the database identifying the
food records. Joins with \link{ca_food_name}.}
\item{RefuseID}{	Sequential number generated by the database for the refuse
descriptions. Joins with \link{ca_refuse_name}.}
\item{RefuseAmount}{Percent refuse}
\item{RefuseDateOfEntry}{Date the data was entered into the database.}
}}
\source{
The data comes from Canadian Nutrient File 2015.
}
\description{
This dataset contains the percent of refuse, or inedible portion, for each food.
}
\examples{
ca_refuse_amount

if(require("dplyr")){
ca_refuse_amount \%>\% 
left_join(ca_food_name) \%>\%
filter(RefuseAmount > 0) \%>\%
left_join(ca_refuse_name) \%>\%
filter(RefuseDescription != "total refuse") \%>\%
select(FoodDescription, RefuseDescription)
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
\link{ca_refuse_name}
\link{ca_yield_amount}
\link{ca_yield_name}
}
