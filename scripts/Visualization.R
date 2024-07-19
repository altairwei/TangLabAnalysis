theme_dimred <- function(
    xlength = 0.3, ylength = 0.3, linesize = 0.5,
    arrow = grid::arrow(
      angle = 15, length = grid::unit(0.15, "inches"),
      type = "closed"),
    ...) {
  ggplot2::theme(
    axis.line = ggplot2::element_blank(), 
    axis.ticks = ggplot2::element_blank(), 
    axis.text = ggplot2::element_blank(),
    axis.line.x.bottom = tidydr::element_line2(
      id = 1, xlength = xlength, arrow = arrow, size = linesize),
    axis.line.y.left = tidydr::element_line2(
      id = 2, ylength = ylength, arrow = arrow, size = linesize), 
    axis.title = ggplot2::element_text(hjust=0.1),
    ...
  )
}