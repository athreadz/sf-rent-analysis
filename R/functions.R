pretty_chart <- function(data, 
                         x,
                         y,
                         color = NULL,
                         fill = NULL,
                         title,
                         subtitle = NULL,
                         caption = NULL,
                         FUN) {
  
  data %>% 
    ggplot(
      aes(x = {{ x }}, y = {{ y }}, color = {{ color }}, fill = {{ fill }})
    ) +
    FUN +
    labs(
      title = title,
      subtitle = subtitle,
      caption = caption
    ) +
    theme_minimal() +
    theme(
      legend.position = "top",
      legend.justification = "left",
      legend.title = element_blank()
    )
  
}