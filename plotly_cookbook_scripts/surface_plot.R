library('plotly')

x <- seq_len(nrow(volcano)) + 100
y <- seq_len(ncol(volcano)) + 500

g <- plot_ly() %>% 
  add_surface(x = ~x, y = ~y, z = ~volcano)

g

api_create(g, filename = "surfaceplot")