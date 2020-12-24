library(shiny)
library(ggplot2)


fluidPage(

  titlePanel("Download modes"),

  sidebarPanel(
    p('A Shiny application test to try out different ways of exporting data, to be able to serve it on a non-session-dependent route.'),
    div(p(HTML(paste0('All the code and more information can be found at ', a(href = 'https://github.com/ajuancer/shiny_static_download', 'https://www.github.com/ajuancer/shiny_static_download'), '. Feel free to open an issue if you have any suggestion or problem.')))),

    h3('License'),
    div(p(HTML(paste0('Under the MIT license. Please reffer to ', a(href = 'https://github.com/ajuancer/shiny_static_download/LICENSE.md', 'the repository lincense'), ' for more information.')))),

    div(p(HTML(paste0('The used database belongs to the REMEDHUS network, part of the ', a(href = 'https://ismn.geo.tuwien.ac.at/en/', 'ISMN'), '. This infrastructure is maintained by the ', a(href = 'http://campus.usal.es/~hidrus/index.htm', 'Water Resources Research Group of the University of Salamanca'),'.')))),

    h3('Downloads tests'),
    div(p(HTML(paste0('The below button allows the download of the database through the ', a(href = 'https://shiny.rstudio.com/reference/shiny/1.0.4/downloadHandler.html', 'downloadHandler'), ' function. This same file is stored in ', a(href='export/test_02.csv', 'export/test_02.csv'), '.', strong(' Please wait until the graph is loaded'), '.')))),
    downloadButton("downloadData", "Download")
  ),

  mainPanel(
    plotOutput('plot')

  )
)