require(knitr)
require(rmarkdown)

render('02/index.Rmd', output_dir = '02/')

browseURL('02/index.html')
