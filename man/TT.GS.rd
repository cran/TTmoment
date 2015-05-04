\name{TT.GS}
\alias{TT.GS}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Slice Sampling for the Truncated Multivariate t (TMVT) Distribution
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function generates random variates from the truncated multivariate t (TMVT) distribution by using the slice sampling algorithm.
}
\usage{
TT.GS(n, mu=rep(0,nrow(S)), S=diag(length(mu)), nu=2, 
lower=rep(-Inf, length(mu)), upper=rep(Inf, length(mu)))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
%%     ~~Describe \code{x} here~~
\item{n}{Number of observations.}
\item{mu}{Location vector, default is rep(0, length = nrow(S)).}
\item{S}{Scale matrix, default is diag(length(mu)).}
\item{nu}{Degree of freedom, nu>2 is required to confirm the existence of the first two moments of TMVT distribution under slice sampling.}
\item{lower, upper}{Truncation bounds on the random vectors, default is rep(-Inf, length(mu)), rep(Inf, length(mu)).}
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
An n by p matrix
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
\keyword{Multivariate t distribution}
\keyword{Truncation}% __ONLY ONE__ keyword per line
