library(shiny)
library(ggplot2)

function(input, output) {

  output$plot <- renderPlot({

    database <- load(file="data/Granja.RData")
    p <- plot(granja$TIMESTAMP,granja$VV_media)

    print(p)

  }, height=600)

  # Download handler
  output$downloadData <- downloadHandler(
    filename = function() {
      paste("download_test_name", ".csv", sep = "")
    },
    content = function(file) {
      write.csv(granja, file, row.names = FALSE)
    }
  )

}