% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spatial_clusters.R
\name{identifyTMAcores}
\alias{identifyTMAcores}
\title{Split cluster annotations based on a spatial network}
\usage{
identifyTMAcores(
  gobject,
  spat_unit = NULL,
  feat_type = NULL,
  spatial_network_name = "Delaunay_network",
  core_id_name = "core_id",
  include_all_ids = TRUE,
  missing_id_name = "not_connected",
  return_gobject = TRUE
)
}
\arguments{
\item{gobject}{giotto object}

\item{spat_unit}{spatial unit (e.g. "cell")}

\item{feat_type}{feature type (e.g. "rna", "dna", "protein")}

\item{spatial_network_name}{character. Name of spatial network to use}

\item{core_id_name}{metadata column name for the core information}

\item{include_all_ids}{Boolean. Include all ids, including vertex ids not found
in the spatial network}

\item{missing_id_name}{Character. Name for vertices that were missing from 
spatial network}

\item{return_gobject}{Boolean. Return giotto object}
}
\value{
cluster annotations
}
\description{
Split cluster annotations based on a spatial network
}
