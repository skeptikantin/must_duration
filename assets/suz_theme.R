light_theme <- function() {
  
  # define common 
  theme(
    title = ggtext::element_markdown(),
    subtitle = ggtext::element_markdown(),
    
    axis.text = element_text(size = 12),
    plot.title = element_text(size = 14)
  )
}
