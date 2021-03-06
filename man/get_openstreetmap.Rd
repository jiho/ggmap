\name{get_openstreetmap}
\alias{get_openstreetmap}
\title{Get an OpenStreetMap}
\usage{
  get_openstreetmap(bbox = c(left = -95.80204, bottom = 29.38048, right = -94.92313, top = 30.14344),
    scale = 606250,
    format = c("png", "jpeg", "svg", "pdf", "ps"),
    messaging = FALSE, urlonly = FALSE,
    filename = "ggmapTemp", color = c("color", "bw"),
    checkargs = TRUE)
}
\arguments{
  \item{bbox}{a bounding box in the format c(lowerleftlon,
  lowerleftlat, upperrightlon, upperrightlat)}

  \item{scale}{scale parameter, see
  \url{http://wiki.openstreetmap.org/wiki/MinScaleDenominator}.
  smaller scales provide a finer degree of detail, where
  larger scales produce more coarse detail}

  \item{format}{character string providing image format -
  png, jpeg, svg, pdf, and ps formats}

  \item{messaging}{turn messaging on/off}

  \item{urlonly}{return url only}

  \item{filename}{destination file for download (file
  extension added according to format)}

  \item{color}{color or black-and-white}

  \item{checkargs}{check arguments}
}
\value{
  a map image as a 2d-array of colors as hexadecimal
  strings representing pixel fill values.
}
\description{
  get_openstreetmap accesses a tile server for
  OpenStreetMap and downloads/formats a map image.
}
\details{
  this is simply a wrapper for the gui web-based version at
  \url{http://www.openstreetmap.org/}.  if you don't know
  how to get the map you want, go there, navigate to the
  map extent that you want, click the export tab at the top
  of the page, and copy the information into this function.
  the scale argument is a tricky number to properly
  specify.  in most cases, if you get an error when
  downloading an openstreetmap the error is attributable to
  an improper scale specification.
  \code{\link{OSM_scale_lookup}} can help; but the best way
  to get in the correct range is to go to
  \url{http://www.openstreetmap.org/}, navigate to the map
  of interest, click export at the top of the page, click
  'map image' and then copy down the scale listed. in some
  cases the OSM server is unavailable.  in these cases you
  will receive an error message for download.file with the
  message HTTP status was '503 Service Unavailable'.  you
  can confirm this by setting urlonly = TRUE, and then
  entering the URL in a web browser.  the solution is
  either (1) change sources or (2) wait for the OSM servers
  to come back up.
}
\examples{
\dontrun{
osm <- get_openstreetmap()
ggmap(osm)


}
}
\author{
  David Kahle \email{david.kahle@gmail.com}
}
\seealso{
  \url{http://www.openstreetmap.org/}, \code{\link{ggmap}}
}

