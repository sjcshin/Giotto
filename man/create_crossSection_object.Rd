% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cross_section.R
\name{create_crossSection_object}
\alias{create_crossSection_object}
\title{create_crossSection_object}
\usage{
create_crossSection_object(
  name = NULL,
  method = NULL,
  thickness_unit = NULL,
  slice_thickness = NULL,
  cell_distance_estimate_method = NULL,
  extend_ratio = NULL,
  plane_equation = NULL,
  mesh_grid_n = NULL,
  mesh_obj = NULL,
  cell_subset = NULL,
  cell_subset_spatial_locations = NULL,
  cell_subset_projection_locations = NULL,
  cell_subset_projection_PCA = NULL,
  cell_subset_projection_coords = NULL
)
}
\arguments{
\item{name}{name of cross section object. (default = cross_section)}

\item{method}{method to define the cross section plane.}

\item{thickness_unit}{unit of the virtual section thickness. If "cell",
average size of the observed cells is used as length unit. If "natural",
the unit of cell location coordinates is used.(default = cell)}

\item{slice_thickness}{thickness of slice}

\item{cell_distance_estimate_method}{method to estimate average distance
between neighboring cells. (default = mean)}

\item{extend_ratio}{deciding the span of the cross section meshgrid, as a
ratio of extension compared to the borders of the virtual tissue section.
(default = 0.2)}

\item{plane_equation}{a numerical vector of length 4, in the form of
c(A,B,C,D), which defines plane Ax+By+Cz=D.}

\item{mesh_grid_n}{number of meshgrid lines to generate along both
directions for the cross section plane.}

\item{mesh_obj}{object that stores the cross section meshgrid information.}

\item{cell_subset}{cells selected by the cross section}

\item{cell_subset_spatial_locations}{locations of cells selected by the
cross section}

\item{cell_subset_projection_locations}{3D projection coordinates of
selected cells onto the cross section plane}

\item{cell_subset_projection_PCA}{pca of projection coordinates}

\item{cell_subset_projection_coords}{2D PCA coordinates of selected cells
in the cross section plane}
}
\value{
crossSection object
}
\description{
create a crossSection object
}
