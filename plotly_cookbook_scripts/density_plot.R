library('plotly')

kerns <- c("gaussian", "epanechnikov", "rectangular", 
           "triangular", "biweight", "cosine", "optcosine")

p <- plot_ly()

for (k in kerns) {
  d <- density(txhousing$median, kernel = k, na.rm = TRUE)
  p <- add_lines(p, x = d$x, y = d$y, name = k)
}

d <- layout(p, xaxis = list(title = "Median monthly price"))

d

api_create(d, filename="density-ex")