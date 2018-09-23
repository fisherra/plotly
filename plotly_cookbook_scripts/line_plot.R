library('plotly')
library('dplyr')

top5 <- txhousing %>%
  group_by(city) %>%
  summarise(m = mean(sales, na.rm = TRUE)) %>%
  arrange(desc(m)) %>%
  top_n(5)
line_ex <- semi_join(txhousing, top5, by = "city")

col2 <- "Pastel2"

c <- plot_ly(line_ex, x = ~date, y = ~median) %>%
  add_lines(color = ~city,
            colors = col2,
            linetype = ~city
  )

c

# api_create(c, filename = "lineplot-ex")