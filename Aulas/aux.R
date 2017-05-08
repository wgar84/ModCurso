require(knitr)
require(rmarkdown)

render('02/index.Rmd', output_dir = '02/')

render('02/guia.Rmd', output_dir = '02/')

render('../Tutoriais/algelin.Rmd', output_dir = '../Tutoriais')

render('../Tutoriais/matrizes.Rmd', output_dir = '../Tutoriais')

render('../Tutoriais/inicio.Rmd', output_dir = '../Tutoriais')



browseURL('02/index.html')

browseURL('../Tutoriais/algelin.html')

system('evince 02/guia.pdf &')
