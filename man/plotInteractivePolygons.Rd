% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interactivity.R
\name{plotInteractivePolygons}
\alias{plotInteractivePolygons}
\title{Select image regions by plotting interactive polygons}
\usage{
plotInteractivePolygons(x, width = "auto", height = "auto", ...)
}
\arguments{
\item{x}{A `ggplot` or `rast` plot object to draw polygons on}

\item{width, height}{An integer, defining the width/height in pixels.}

\item{...}{Graphical parameters passed on to `polygon` or `geom_point`.}
}
\value{
A `data.table` containing x,y coordinates from the plotted polygons.
}
\description{
Plot interactive polygons on an image and retrieve the polygons
coordinates.
}
