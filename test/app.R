#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinythemes)
library(ggplot2)
source("https://git.io/Jfqjv", local = T)

# Define UI for application that draws a histogram
ui <- fluidPage(theme = shinytheme("cosmo"),
                sidebarLayout(
                    sidebarPanel(
                        selectInput("country", label = h3("Country"),
                                    choices = list("Antigua & Barbuda" = "ATG",
                                                   "Bahamas"  = "BHS",
                                                   "Belize" = "BLZ",
                                                   "Barbados" = "BRB", 
                                                   "Dominica" = "DMA",
                                                   "Grenada" = "GRD",
                                                   "Guyana" = "GUY",
                                                   "Haiti" = "HTI",
                                                   "Jamaica" = "JAM",
                                                   "St. Kitts & Nevis" = "KNA", 
                                                   "St. Lucia" = "LCA",
                                                   "Suriname" = "SUR",
                                                   "Trinidad & Tobago"  = "TTO",
                                                   "St. Vincent & Grenadines" = "VCT", selected = 1)
                        
                    ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("distPlot")
        )
    )
),

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$distPlot <- renderPlot({
        
        # draw the histogram with the specified number of bins
        caricom_tidycovid19_cases %>% 
            filter(iso3c == input$country,
                   date >= as.Date("2020-03-15")) %>% 
            ggplot(aes(x = date, y = value, fill = cases)) +
            geom_area() +
            labs(x = "Date",
                 y = "Confirmed Cases",
                 title = "Disaggregation of Confirmed Cases")+
            ggthemes::scale_color_colorblind()
    })
})

# Run the application 
shinyApp(ui = ui, server = server)

