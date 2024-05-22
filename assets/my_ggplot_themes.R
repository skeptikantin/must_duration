# To load:
#  library(extrafont)
#  font_import()
#  loadfonts(device = "postscript")
# To check:
#  windowsFonts() (?)
# To save:
#  ggsave("fonttest.pdf", device = cairo_pdf)




#' Minimal ggplot2 theme using the IBM Plex Sans fonts
#'
#' @param base_size base font size
#' @param strip_text_size,strip_text_margin plot strip text size and margin
#' @param subtitle_size,subtitle_margin plot subtitle size and margin
#' @param plot_title_size,plot_title_margin plot title size and margin
#' @param ... Other arguments passed to \code{theme_light}
#'
#' @details The IBM Plex fonts are open source and can be found at
#' \url{https://ibm.github.io/type/}. These fonts must be installed locally on
#' your computer for this theme to work.
#'
#' @examples
#' \dontrun{
#' library(ggplot2)
#'
#' ggplot(mtcars, aes(wt, mpg)) +
#'     geom_point() +
#'     labs(title = "A Lovely Plot",
#'          subtitle = "What can the subtitle tell us?") +
#'     theme_light_plex()
#'
#' ggplot(diamonds, aes(carat, price, color = clarity)) +
#'     geom_point(alpha = 0.7) +
#'     facet_wrap(~cut) +
#'     labs(title = "A Lovely Plot",
#'          subtitle = "What can the subtitle tell us?") +
#'          theme_light_plex()
#'
#'}
#'
#' @export
theme_source_sans <- function(base_size = 11,
                              strip_text_size = 12,
                              strip_text_margin = 5,
                              subtitle_size = 13,
                              subtitle_margin = 10,
                              plot_title_size = 15,
                              plot_title_margin = 10,
                              ...) {
  ret <- ggplot2::theme_light(base_family = "Source Sans Pro",
                              base_size = base_size, ...)
  ret$strip.text <- ggplot2::element_text(
    colour = "white",
    size = strip_text_size,
    margin = ggplot2::margin(b = strip_text_margin, t = strip_text_margin),
    family = "Source Sans Pro Light"
  )
  ret$plot.subtitle <- ggplot2::element_text(
    hjust = 0, size = subtitle_size,
    margin = ggplot2::margin(b = subtitle_margin),
    family = "Source Sans Pro"
  )
  ret$plot.title <- ggplot2::element_text(
    hjust = 0, size = plot_title_size,
    margin = ggplot2::margin(b = plot_title_margin),
    family = "Source Sans Pro Semibold"
  )
  
  ret$title <- ggtext::element_markdown()
  
  ret$axis.text <- ggplot2::element_text(
    size = 12
  )
  
  ret$axis.title <- ggplot2::element_text(
    size = 13
  )
  
  ret
}