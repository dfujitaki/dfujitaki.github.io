require(shiny)
require(leaflet)
require(tidyverse)
shinyServer(
      function(input,output){
            output$map <-  renderLeaflet({
                  leaflet() %>% 
                        setView(lat = input$latitude, 
                                lng =input$longitude,
                                zoom=4) %>%
                        addTiles() %>%
                        addMarkers(lat = input$latitude, 
                                   lng =input$longitude)
}            )
            
      }
)