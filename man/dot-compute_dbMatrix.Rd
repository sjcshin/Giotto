% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auxiliary_giotto.R
\name{.compute_dbMatrix}
\alias{.compute_dbMatrix}
\title{compute_dbMatrix}
\usage{
.compute_dbMatrix(dbMatrix, name, verbose = TRUE)
}
\description{
saves dbMatrix to db if global option is set
}
\details{
Set \code{options(giotto.dbmatrix_compute = FALSE)} if saving dbMatrix
after each step of normalization workflow is not desired.
}
\keyword{internal}
