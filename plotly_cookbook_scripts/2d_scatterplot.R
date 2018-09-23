library('plotly')

a <- subplot(
  plot_ly(mpg, x = ~cty, y = ~hwy, showlegend=FALSE) %>%
    add_markers(alpha = 0.6,
                size = ~cyl,
                sizes = c(30,50),
                color = ~cyl), 
  plot_ly(mpg, x = ~cty, y = ~hwy) %>%
    add_markers(alpha = 0.6,
                symbol = ~factor(cyl),
                symbols = c(0,1,5,10),
                color = ~factor(cyl)
    )
)

a

