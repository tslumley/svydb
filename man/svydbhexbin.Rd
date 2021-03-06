% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/svydbhexbin.R
\name{svydbhexbin}
\alias{svydbhexbin}
\title{Hexagon Binning}
\usage{
svydbhexbin(formula, design, xbins = 30, shape = 1)
}
\arguments{
\item{formula}{A formula indicating x and y. i.e. y~x.}

\item{design}{\code{svydb.design} object.}

\item{xbins}{Number of bins on range of the x-axis.}

\item{shape}{plotting region, shape = height of y/width of x.}
}
\description{
Computes the co-ordinates and the necessary information to plot the hexagons.
}
\examples{
data(nhane)
nh.dbsurv = svydbdesign(st = SDMVSTRA , wt = WTMEC2YR,id = SDMVPSU , data = nhane)
hb = svydbhexbin(Height~Weight , design = nh.dbsurv)
svydbhexplot(hb, main = "Height vs Age")
# OR with a database connection
# require(MonetDBLite)
# require(DBI)
# require(dbplyr)
# con = dbConnect(MonetDBLite())
# dbWriteTable(con, "nhane", nhane)
# nhane.db = tbl(con, "nhane")
# nh.dbsurv = svydbdesign(st = SDMVSTRA , wt = WTMEC2YR,id = SDMVPSU , data = nhane.db)
}
\seealso{
\code{\link{svydbdesign}}, \code{\link{svydbhexplot}}
}
\author{
Charco Hui
}
