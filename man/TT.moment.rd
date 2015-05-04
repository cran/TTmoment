\name{TT.moment}
\alias{TT.moment}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
First Two Moments of Truncated Multivariate t (TMVT) Distribution}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function calculates the first two moments of the TMVT distribution with zero location vector and correlation matrix.}
\usage{
TT.moment(R=diag(length(lower)), nu=5, lower=rep(-Inf, nrow(R)), upper=rep(Inf, nrow(R)))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{R}{Nonsingular correlation matrix, default is diag(length(a)).}
\item{nu}{Degree of freedom, must be a positive integer, nu>4 is required to calculate the second moment of TMVT distribution.}
\item{lower}{Lower (left) truncation bound on the random vector, default is rep(-Inf, nrow(R)).}
\item{upper}{Upper (right) truncation bound on the random vector, default is rep(Inf, nrow(R)).}
}
%\details{
%%  ~~ If necessary, more details than the description above ~~
%}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
\item{EX}{The first moment}
\item{EXX}{The second moment}
}
\references{
%% ~put references to the literature/web site here ~
Hsiu J. Ho, Tsung-I Lin, Hsuan-Yu Chen, Wan-Lun Wang (2012), Some results on the truncated multivariate t distribution.
Journal of Statistical Planning and Inference, 142, 25-40.
}
\author{
%%  ~~who you are~~
Hsiu J. Ho, Tsung-I Lin, Wan-Lun Wang, Aldo M. Garay, Victor H. Lachos, and Mauricio Castro

}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
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
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{Truncated MVT}
\keyword{Moments}% __ONLY ONE__ keyword per line
