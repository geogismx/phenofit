% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/phenofit_main.R
\name{curvefits}
\alias{curvefits}
\title{curvefits}
\usage{
curvefits(INPUT, brks, nptperyear = 46, wFUN = wTSM, iters = 2, lambda,
  south = FALSE, extend_month = 3, minT = 0, methods = c("AG", "zhang",
  "beck", "elmore", "Gu"), qc, debug = FALSE, ...)
}
\arguments{
\item{extend_month}{For every growing season, previous and afterwards 
`extend_month` are added to fitting daily time-series. In order to}
}
\description{
Curve fitting for INPUT time-series. Procedures of initial weight, growing
season dividing and curve fitting are separated.
}
\examples{
INPUT <- check_input(d$date, d$EVI_500m, d$w, trim = T, maxgap = nptperyear / 4, alpha = 0.02)
# The detailed information of those parameters can be seen in `season`.
brks  <- season(INPUT, lambda, nptperyear, iters = 3, wFUN = wFUN, IsPlot = F,
                south = south,
                Aymin_less = 0.7,
                max_MaxPeaksperyear =2.5, max_MinPeaksperyear = 3.5, ...) #, ...

fit <- curvefit_site(INPUT, brks, lambda =lambda, IsPlot = T,
                     methods = c("AG", "zhang", "beck", "elmore", 'Gu'), #,"klos"
                     nptperyear = nptperyear, debug = F, wFUN = wTSM,
                     ymax_min = ymax_min,
                     south = d$lat[1] < 0)
plot_phenofit(fit, d) # plot to check the curve fitting
}
