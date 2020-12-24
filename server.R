library(shiny)
library(ggplot2)

function(input, output) {
  database <- load(file="data/Granja.RData")

  addResourcePath('export', 'export')
  write.csv(granja, paste("export/test_02.csv"), row.names = FALSE)


  output$plot <- renderPlot({

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