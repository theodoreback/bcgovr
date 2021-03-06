% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_meta.R
\name{add_file_from_template}
\alias{add_file_from_template}
\title{Add a file to a directory from a template in inst/templates}
\usage{
add_file_from_template(path, fname, outfile = NULL, pkg = "bcgovr")
}
\arguments{
\item{path}{Directory path (default \code{"."})}

\item{fname}{the name of the template file in inst/templates}

\item{outfile}{name of the file to be written, if different from the name of the template file}

\item{pkg}{package from which to load the template}
}
\description{
Should really only be called by other functions
}
\seealso{
\code{\link{add_readme}}, \code{\link{add_contributing}}, \code{\link{add_license}}
}
\keyword{internal}
