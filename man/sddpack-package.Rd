\name{sddpack-package}
\Rdversion{1.1}
\alias{sddpack-package}
\alias{sddpack}
\docType{package}
\title{
Semidiscrete Decomposition
}
\description{
The semidiscrete decomposition (SDD) approximates a matrix as a weighted sum of outer products formed by vectors with entries constrained to be in the set \{-1, 0, 1\}.
}
\details{
\tabular{ll}{
Package: \tab sddpack\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2009-06-12\cr
License: \tab GPL v2\cr
LazyLoad: \tab yes\cr
}

}
\author{
Tamara G. Kolda, Dianne P. O'Leary (Matlab code)
Eric Sun <esun@cs.stanford.edu> (Ported to R)
}
\references{
http://www.cs.umd.edu/~oleary/SDDPACK/#authors
}
\keyword{ package }
\seealso{
}
\examples{
	A = matrix(rnorm(100), nrow=10)
	sdd(A)
}