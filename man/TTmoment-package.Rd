\name{TTmoment-package}
\alias{TTmoment-package}
\alias{TTmoment}
\docType{package}
\title{
Truncated Multivariate t (TMVT) Distribution
}
\description{
This package includes two functions related to the truncated multivariate t (TMVT) distribution described in Kotz and Nadarajah (2004) with the double truncation.
One is to generate random variates from the TMVT distribution, and the other is to compute the first two moments theoretically. 
}
\details{
\tabular{ll}{
Package: \tab TTmoment\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-05-04\cr
License: \tab GPL-2\cr
}
%~~ An overview of how to use the package, including the most ~~
%~~ important functions ~~
}
\author{
Hsiu J. Ho, Tsung-I Lin, Wan-Lun Wang, Aldo M. Garay, Victor H. Lachos, and Mauricio Castro

Maintainer: Hsiu J. Ho <hsiujho@gmail.com>
}
\references{
Hsiu J. Ho, Tsung-I Lin, Hsuan-Yu Chen, Wan-Lun Wang (2012), Some results on the truncated multivariate t distribution.
Journal of Statistical Planning and Inference, 142, 25-40.
}
%~~ Optionally other standard keywords, one per line, from file ~~
%~~ KEYWORDS in the R documentation directory ~~
\keyword{TMVT package}
\seealso{
%~~ Optional links to other man pages, e.g. ~~
%~~ \code{\link[mvtnorm:mvtnorm-package]{mvtnorm}} ~~
\code{\link{TT.GS}},
\code{\link{TT.moment}}
}
\examples{
# A test example
rho=0.9
S=matrix(c(1, rho ,rho, 1),2,2)
nu=5
p=2
mu = rep(0, p)
Y= TT.GS(n=10000, mu, S, nu, lower=c(1,2), upper=c(4,6))
# Empirical first moment
y.bar=colMeans(Y)
y.bar
# Sample covariance matrix
S.y=cov(Y)
S.y

M.Y=TT.moment(R=S, nu, lower=c(1,2), upper=c(4,6))
# First two moments
M.Y$EX
M.Y$EXX
# Covariance matrix
M.Y$EXX-M.Y$EX\%*\%t(M.Y$EX)
}
