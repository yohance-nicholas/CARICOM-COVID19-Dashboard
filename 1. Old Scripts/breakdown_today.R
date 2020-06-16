# Breakdown of Total Today
### Breakdown of Total Today

```{r}
library(plotly)
horizontal_barplot <- caricom_tidycovid19_cases %>% 
  filter(date == max(date)) %>% 
  ggplot( 
    aes(x = country,
        y = value,
        fill = cases))+
  labs(x = "Total Cases by Status",
       y = "Member State") +
  geom_bar(position = "stack",
           stat = "identity") +
  coord_flip() 
ggplotly(horizontal_barplot)
```