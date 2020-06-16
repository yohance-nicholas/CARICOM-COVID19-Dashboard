# Test 3



# Scatterplot

hchart(world_today, "scatter", hcaes(x = pop_65_over_2018, y = log(confirmed_per_100k), group = income))


# Treemap

hchart(caricom_today, "treemap", hcaes(x = iso3c, value = confirmed , color = confirmed))

# Treemap v2

library(treemap)
library(viridisLite)

tm <- treemap(caricom_today, index = c("income", "iso3c"),
              vSize = "confirmed", vColor = "confirmed",
              type = "value", palette = viridis(10))

hctreemap(tm)

# Shinyapp

library("shiny")
library("highcharter")

data(citytemp)

ui <- fluidPage(
  fluidRow(
    column(class = "panel",
           selectInput("iso3c", 
                       label = "Country", 
                       width = "100%",
                       choices = c("line", "column", "bar", "spline"))
           )
    ),
    column(width = 8,
           highchartOutput("hcontainer",height = "500px")
    )
  )
)

server = function(input, output) {
  
  output$hcontainer <- renderHighchart({
    
    hc <- hc_demo() %>%
      hc_rm_series("Berlin") %>% 
      hc_chart(type = input$type)
    
    if (input$stacked != FALSE) {
      hc <- hc %>%
        hc_plotOptions(series = list(stacking = input$stacked))
    }
    
    if (input$theme != FALSE) {
      theme <- switch(input$theme,
                      null = hc_theme_null(),
                      darkunica = hc_theme_darkunica(),
                      gridlight = hc_theme_gridlight(),
                      sandsignika = hc_theme_sandsignika(),
                      fivethirtyeight = hc_theme_538(),
                      economist = hc_theme_economist(),
                      chalk = hc_theme_chalk(),
                      handdrwran = hc_theme_handdrawn()
      )
      
      hc <- hc %>% hc_add_theme(theme)
      
    }
    
    hc
    
  })
  
}

shinyApp(ui = ui, server = server)