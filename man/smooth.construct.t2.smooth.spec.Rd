\name{smooth.construct.t2.smooth.spec}
\alias{smooth.construct.t2.smooth.spec}
%- Also NEED an `\alias' for EACH other topic documented here.
\title{Tensor product smoothing constructor}

\description{A special \code{smooth.construct} method function for creating tensor product smooths from any
combination of single penalty marginal smooths, using the construction of Wood, Scheipl and Faraway (2013). 
}

\usage{
\method{smooth.construct}{t2.smooth.spec}(object, data, knots)
}

\arguments{ 
\item{object}{a smooth specification object of class \code{t2.smooth.spec}, 
              usually generated by a term like \code{t2(x,z)} in a \code{\link{gam}} model formula}

\item{data}{a list containing just the data (including any \code{by} variable) required by this term, 
            with names corresponding to \code{object$term} (and \code{object$by}). The \code{by} variable 
            is the last element.} 

\item{knots}{a list containing any knots supplied for basis setup --- in same order and with same names as \code{data}. 
             Can be \code{NULL}. See details for further information.}

}

\value{ An object of class \code{"t2.smooth"}.
}

\details{Tensor product smooths are smooths of several variables which allow the degree of smoothing to be different with respect
to different variables. They are useful as smooth interaction terms, as they are invariant to linear rescaling of the covariates,
which means, for example, that they are insensitive to the measurement units of the different covariates. They are also useful 
whenever isotropic smoothing is inappropriate. See \code{\link{t2}}, \code{\link{te}}, \code{\link{smooth.construct}} and 
\code{\link{smooth.terms}}. The construction employed here produces tensor smooths for which the smoothing penalties are non-overlapping portions of the identity matrix. This makes their estimation by mixed modelling software rather easy.
}

\references{

Wood, S.N., F. Scheipl and J.J. Faraway (2013) Straightforward intermediate rank tensor product smoothing in mixed models.
Statistics and Computing 23: 341-360.

}

\author{ Simon N. Wood \email{simon.wood@r-project.org}}

\seealso{\code{\link{t2}}}

\examples{
## see ?t2

}
\keyword{models} \keyword{regression}%-- one or more ..


