\name{sjevor}
\alias{vorcr}
\alias{del.plot}
\alias{plot.sjevor}
\alias{ianglesplot}
\alias{vorcr.polygons}
\title{Voronoi analysis}
\description{
  Compute the Voronoi tesselation,  using Steve Fortune's code.
}
\usage{
vorcr(x,y, xl, xh, yl, yh, fuzz, opts)
}
\arguments{
  \item{x,y}{x and y coordinates of the sites}
\item{xl, xh}{lowest and highest x coordinate value}
\item{yl, yh}{lowest and highest y coordinate value}
\item{fuzz}{amount of random noise to add to the position of each point}
\item{opts}{useful options when calculating voronoi information.  TODO
These will need documenting.}
\item{v}{The structure returned by the Voronoi code.}
\item{show.pts,show.rejects}{If true, then sites are drawn as circles.
Furthermore, if show.rejects is true, the reject cells are filled.}
\item{show.areas}{If true, then show.pts is ignored and instead the
area of each polygon is displayed.}
}
\value{
  \item{v}{A data structure that contains several interesting things}
}
\examples{
x <- runif(100); y <- runif(100)
plot(x, y, asp=1)
v <- vorcr(x, y, 0, 1, 0, 1)
class(v)
names(v)
plot(v)
del.plot(v)
vorcr.polygons(v)
ianglesplot(v$iangles, show=TRUE)
%%Each triplet of delaunay angles should sum to 180.
stopifnot((apply(v$delangs, 1, sum) - 180) < 0.001)
}
\keyword{manip}
