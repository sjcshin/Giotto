% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spatial_genes.R
\name{getBalancedSpatCoexpressionFeats}
\alias{getBalancedSpatCoexpressionFeats}
\title{Get balanced spatial coexpression features}
\usage{
getBalancedSpatCoexpressionFeats(
  spatCorObject,
  maximum = 50,
  rank = c("weighted", "random", "informed"),
  informed_ranking = NULL,
  seed = NA,
  verbose = TRUE
)
}
\arguments{
\item{spatCorObject}{spatial correlation object}

\item{maximum}{maximum number of genes to get from each spatial
co-expression module}

\item{rank}{ranking method (see details)}

\item{informed_ranking}{vector of ranked features}

\item{seed}{seed}

\item{verbose}{verbosity}
}
\value{
balanced vector with features for each co-expression module
}
\description{
Extract features from spatial co-expression modules in a
balanced manner
}
\details{
There are 3 different ways of selecting features from the spatial
co-expression modules
\enumerate{
\item \strong{weighted:} Features are ranked based on summarized pairwise
co-expression scores
\item \strong{random:} A random selection of features, set seed for
reproducibility
\item \strong{informed:} Features are selected based on prior information/ranking
}
}
