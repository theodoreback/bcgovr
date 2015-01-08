#' Default theme for EnvReportBC graphs and plots
#'
#' 
#' 
#' @import ggplot2
#' @param  base_size base font size (default = 12)
#' @param  base_family base font family (default = Verdana)
#' @param  use_sizes use relative font sizes (?)
#' @param  facet facetting? (advise to not use directly, is set by \code{theme_soe_facet})
#' @export
#' @keywords plotting theme
#' @return returns a plot theme
#' @examples \dontrun{
#' 
#'}
theme_soe <- function(base_size=12, base_family="Verdana", use_sizes=TRUE, facet = FALSE) {
  thm <- theme_foundation_null(base_size = base_size, 
                               base_family = base_family) +
    theme(
      text = element_text(color="black"),
      axis.line = element_line(colour="black"),
      axis.text = element_text(color = 'black'),
      axis.text.y = element_text(hjust = 1),
      axis.ticks = element_blank(),
      plot.title = element_text(vjust=2),
      legend.title = element_text(face="plain"),
      panel.background = element_blank(),
      panel.border = element_blank(),
      panel.grid.minor = element_blank(),
      panel.grid.major = element_line(colour = "grey80",size=0.5),
      axis.title.y = element_text(vjust=1, angle = 90),
      axis.title.x = element_text(vjust=0),
      panel.margin.x = unit(0, "lines"),
      panel.margin.y = unit(0, "lines"),
      plot.background = element_blank(),
      panel.border = element_blank(),
      legend.key = element_blank())
  
  if (use_sizes) {
    thm <- thm + theme_foundation_sizes(facet = facet)
  }
  
  thm
}  

#' Soe plot theme for facetted graphs
#' 
#' @import ggplot2
#' @param  base_size base font size (default = 12)
#' @param  base_family base font family (default = Verdana)
#' @param  use_sizes use relative font sizes (?)
#' @export
#' @keywords plotting theme
#' @return a ggplot2 theme
#' @examples \dontrun{
#' 
#'}
theme_soe_facet <- function(base_size=12, base_family="Verdana", use_sizes=TRUE) {
  theme_soe(facet = TRUE) + 
    theme(
      panel.margin.x = unit(.6,"lines"),
      panel.margin.y = unit(.6,"lines"),
      panel.border = element_rect(colour = "black", fill = NA),
      strip.background = element_rect(colour = "black", fill = "grey85"))
}
