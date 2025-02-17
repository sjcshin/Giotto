% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clustering.R
\name{.node_clusters}
\alias{.node_clusters}
\title{Node clusters}
\usage{
.node_clusters(hclus_obj, verbose = TRUE)
}
\arguments{
\item{hclus_obj}{hclus object}

\item{verbose}{be verbose}
}
\value{
list of splitted dendrogram nodes from high to low node height
}
\description{
Merge selected clusters based on pairwise correlation scores
and size of cluster.
}
\keyword{internal}
