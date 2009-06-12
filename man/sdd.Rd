\name{sdd}
\Rdversion{1.1}
\alias{sdd}
\title{
Semidiscrete Decomposition
}
\description{
 The semidiscrete decomposition (SDD) approximates a matrix as a weighted sum of outer products formed by vectors with entries constrained to be in the set \{-1, 0, 1\}. 
}
\usage{
sdd(A, kmax = 100, alphamin = 0.01, lmax = 100, rhomin = 10e-20)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{A}{ matrix of values on which to run sdd}
  \item{kmax}{ number of outer-loop iterations (see References)}
  \item{alphamin}{ progress check (see References) }
  \item{lmax}{ number of inner-loop iterations (see References) }
  \item{rhomin}{ threshold test (See References) }
}
\details{
 The semidiscrete decomposition (SDD) approximates a matrix as a weighted sum of outer products formed by vectors with entries constrained to be in the set \{-1, 0, 1\}.

It is useful for image compression and for latent semantic indexing (LSI) in information retrieval.

The primary advantage of the SDD over other types of matrix approximations such as the truncated singular value decomposition (SVD) is that it typically provides a more accurate approximation for far less storage.

The package has been ported from Matlab code given on \code{http://www.cs.umd.edu/~oleary/SDDPACK/}.
See the webpage for full documentation.
}
\value{
 \item{x }{ matrix of \code{X}'s, where \code{A} is approximately equal to  \code{X\%*\%diag(D)\%*\%Y}}
 \item{d }{ vector of \code{D}'s, where \code{A} is approximately equal to \code{X\%*\%diag(D)\%*\%Y}}
 \item{y }{ matrix of \code{Y}'s, where \code{A} is approximately equal to \code{X\%*\%diag(D)\%*\%Y}}
}
\references{
http://www.cs.umd.edu/~oleary/SDDPACK/
}
\author{
Tamara G. Kolda, Dianne P. O'Leary (Matlab code)}
\note{
Ported to R by Eric Sun <esun@cs.stanford.edu>
}


\seealso{
}
\examples{
A = matrix(rnorm(100), nrow=10)
sdd(A)
}