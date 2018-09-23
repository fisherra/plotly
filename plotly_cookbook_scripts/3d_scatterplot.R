library('plotly')

col1 <- colorRamp(c("red", "blue"))

b <- plot_ly(mpg, x = ~cty, y = ~hwy, z = ~cyl) %>%
  add_markers(color = ~cyl,
              colors = col1
  )

b

# api_create(b, filename = "3d-scatterplot-ex")
