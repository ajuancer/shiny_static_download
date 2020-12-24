library(shiny)
library(ggplot2)


fluidPage(

  titlePanel("Download modes"),

  sidebarPanel(

    downloadButton("downloadData", "Download")
  ),

  mainPanel(
    plotOutput('plot')

  )
)