library('plotly')

p1 <- plot_ly(diamonds, x = ~price) %>% 
  add_histogram(name = "plotly.js")

price_hist <- function(method = "FD") {
  h <- hist(diamonds$price, breaks = method, plot = FALSE)
  plot_ly(x = h$mids, y = h$counts) %>% 
    add_bars(name = method)
}

e <- subplot(
  p1, 
  price_hist(),
  price_hist("Sturges"),
  price_hist("Scott"),
  nrows = 4, 
  shareX = TRUE
)

e

api_create(e, filename = "histogram-ex")