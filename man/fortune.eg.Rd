\name{fortune.eg}
\alias{fortune.eg}
\title{Example data set that comes with Fortune's code.}
\description{This is a small example data set that comes with the
  Fortune code.  There are just 100 points in the unit square.}
\examples{
\dontrun{
data(fortune.eg)
v <- vorcr(fortune.eg[,1], fortune.eg[,2], 0, 1, 0, 1)
plot(v)
}
}
\author{Stephen Eglen, from Steve Fortune}
\keyword{spatial}
