*use "C:\Users\Anna\dc-economics-v2.1\data\raw\cepii\dist_cepii.dta", clear
import delimited 
"https://raw.githubusercontent.com/korenmiklos/dc-economics-data/master/data/web/gdp.csv", varnames(1) bindquotes(strict) encoding("utf-8") clear
reshape long gdp,i(countrycode) j(year)
rename gdp gdp_per_capita
*label variable 
