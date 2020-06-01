library(plotly)
gg_barchart <- caricom_today %>%
  arrange(desc(confirmed)) %>% 
  ggplot(
    aes(x = confirmed,
        y = country)) +
  geom_col() + 
  coord_flip()
ggplotly(gg_barchart)
