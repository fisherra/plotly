library('plotly')

p1 <- plot_ly(diamonds, x = ~cut) %>% 
  add_histogram()

p2 <- diamonds %>%
  dplyr::count(cut) %>%
  plot_ly(x = ~cut, y = ~n, showlegend=FALSE) %>% 
  add_bars()

h <- subplot(p1, p2) 

h

api_create(h, filename = "barchart-ex")