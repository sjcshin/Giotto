% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spatial_enrichment.R
\name{runPAGEEnrich}
\alias{runPAGEEnrich}
\title{runPAGEEnrich}
\usage{
runPAGEEnrich(
  gobject,
  spat_unit = NULL,
  feat_type = NULL,
  sign_matrix,
  expression_values = c("normalized", "scaled", "custom"),
  min_overlap_genes = 5,
  reverse_log_scale = TRUE,
  logbase = 2,
  output_enrichment = c("original", "zscore"),
  p_value = FALSE,
  include_depletion = FALSE,
  n_times = 1000,
  max_block = 2e+07,
  name = NULL,
  verbose = TRUE,
  return_gobject = TRUE
)
}
\arguments{
\item{gobject}{Giotto object}

\item{spat_unit}{spatial unit}

\item{feat_type}{feature type}

\item{sign_matrix}{Matrix of signature genes for each cell type / process}

\item{expression_values}{expression values to use}

\item{min_overlap_genes}{minimum number of overlapping genes in sign_matrix
required to calculate enrichment}

\item{reverse_log_scale}{reverse expression values from log scale}

\item{logbase}{log base to use if reverse_log_scale = TRUE}

\item{output_enrichment}{how to return enrichment output}

\item{p_value}{calculate p-values (boolean, default = FALSE)}

\item{include_depletion}{calculate both enrichment and depletion}

\item{n_times}{number of permutations to calculate for p_value}

\item{max_block}{number of lines to process together (default = 20e6)}

\item{name}{to give to spatial enrichment results, default = PAGE}

\item{verbose}{be verbose}

\item{return_gobject}{return giotto object}
}
\value{
data.table with enrichment results
}
\description{
Function to calculate gene signature enrichment scores per
spatial position using PAGE.
}
\details{
sign_matrix: a binary matrix with genes as row names and cell-types as
column names.
Alternatively a list of signature genes can be provided to
makeSignMatrixPAGE, which will create the matrix for you. \cr

The enrichment Z score is calculated by using method (PAGE) from
Kim SY et al., BMC bioinformatics, 2005 as
\eqn{Z = ((Sm – mu)*m^(1/2)) / delta}.
For each gene in each spot, mu is the fold change values versus the mean
expression and delta is the standard deviation. Sm is the mean fold change
value of a specific marker gene set and  m is the size of a given marker
gene set.
}
\examples{
g <- GiottoData::loadGiottoMini("visium")
sign_gene <- c(
    "Bcl11b", "Lmo1", "F3", "Cnih3", "Ppp1r3c", "Rims2", "Gfap",
    "Gjc3", "Chrna4", "Prkcd", "Prr18", "Grb14", "Tprn", "Clic1", "Olig2",
    "Hrh3", "Tmbim1", "Carhsp1", "Tmem88b", "Ugt8a", "Arpp19", "Lamp5",
    "Galnt6", "Hlf", "Hs3st2", "Tbr1", "Myl4", "Cygb", "Ttc9b", "Ipcef1"
)

sign_matrix <- matrix(rnorm(length(sign_gene) * 3, mean = 10),
    nrow = length(sign_gene)
)
rownames(sign_matrix) <- sign_gene
colnames(sign_matrix) <- c("cell_type1", "cell_type2", "cell_type3")

runPAGEEnrich(gobject = g, sign_matrix = sign_matrix)
}
\seealso{
\code{\link{makeSignMatrixPAGE}}
}
