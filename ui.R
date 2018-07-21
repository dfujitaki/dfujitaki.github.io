require(shiny)
require(leaflet)
shinyUI(
      pageWithSidebar(
            
            headerPanel('July 21, 2018'),
            sidebarPanel(
                  numericInput(inputId = 'latitude', 
                               label = "Latitude", value = 38, 
                               min=-180, max=180),
                  numericInput(inputId = 'longitude', 
                               label = "Longitude", value = 38, 
                               min=-180, max=180)

            ),
            mainPanel(leafletOutput('map'), offset=1)
            


      
)
)