local indicator pop
local long_name population

import delimited "https://raw.githubusercontent.com/korenmiklos/dc-economics-data/master/data/web/`indicator'.csv", varnames(1) bindquotes(strict) encoding("utf-8") clear
reshape long `indicator',i(countrycode) j(year)
rename `indicator' `long_name'
save "data/derived/`long_name'.dta", replace
