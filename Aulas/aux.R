require(knitr)
require(rmarkdown)

render('02/index.Rmd', output_dir = '02/')

render('02/guia.Rmd', output_dir = '02/')

render('../Tutoriais/algelin.Rmd', output_dir = '../Tutoriais', output_format = 'html_document')

render('../Tutoriais/detectando_modularidade.Rmd', output_dir = '../Tutoriais', output_format = 'html_document')



render('../Tutoriais/matrizes.Rmd', output_dir = '../Tutoriais')

render('../Tutoriais/inicio.Rmd', output_dir = '../Tutoriais')

render('../index.Rmd', output_dir = '../')


browseURL('02/index.html')

browseURL('../Tutoriais/algelin.html')

system('evince 02/guia.pdf &')

system('evince ../Tutoriais/algelin.pdf &')
