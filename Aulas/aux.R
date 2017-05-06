require(knitr)
require(rmarkdown)

render('02/index.Rmd', output_dir = '02/')

render('02/guia.Rmd', output_dir = '02/')

render('../Tutoriais/algelin.Rmd', output_dir = '../Tutoriais')

browseURL('02/index.html')

system('evince 02/guia.pdf &')
