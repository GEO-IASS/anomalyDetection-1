% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bd_row.R
\name{bd_row}
\alias{bd_row}
\title{Breakdown for Mahalanobis Distance}
\usage{
bd_row(data, row, n = NULL)
}
\arguments{
\item{data}{numeric data}

\item{row}{row of interest}

\item{n}{number of values to return.  By default, will return all variables
(columns) with their respective differences.  However, you can choose to view
only the top \code{n} variables by setting the \code{n} value.}
}
\value{
Returns a vector indicating the variables in \code{data} that are driving the
Mahalanobis distance for the respective row.
}
\description{
\code{bd_row} indicates which variables in data are driving the Mahalanobis
distance for a specific row \code{r}, relative to the mean vector of the data.
}
\examples{
\dontrun{
x = matrix(rnorm(200*3), ncol = 10)
colnames(x) = paste0("C", 1:ncol(x))

# compute the relative differences for row 5 and return all variables
x \%>\%
  mahalanobis_distance("bd", normalize = TRUE) \%>\%
  bd_row(5)

# compute the relative differences for row 5 and return the top 3 variables
# that are influencing the Mahalanobis Distance the most
x \%>\%
  mahalanobis_distance("bd", normalize = TRUE) \%>\%
  bd_row(5, 3)
  }

}
\seealso{
\code{\link{mahalanobis_distance}} for computing the Mahalanobis Distance values
}
