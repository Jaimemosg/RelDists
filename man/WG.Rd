% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/WG.R
\name{WG}
\alias{WG}
\alias{dWG}
\alias{pWG}
\alias{qWG}
\alias{rWG}
\alias{hWG}
\title{The Weibull Geometric Distribution}
\usage{
WG(mu.link = "log", sigma.link = "log", nu.link = "logit")

dWG(x, mu, sigma, nu, log = FALSE)

pWG(q, mu, sigma, nu, lower.tail = TRUE, log.p = FALSE)

qWG(p, mu, sigma, nu, lower.tail = TRUE, log.p = FALSE)

rWG(n, mu, sigma, nu)

hWG(x, mu, sigma, nu)
}
\arguments{
\item{x, q}{vector of quantiles.}

\item{mu}{shape parameter.}

\item{sigma}{scale parameter.}

\item{nu}{parameter of geometric random variable.}

\item{log, log.p}{logical; if TRUE, probabilities p are given as log(p).}

\item{lower.tail}{logical; if TRUE (default), probabilities are 
P[X <= x], otherwise, P[X > x].}

\item{p}{vector of probabilities.}

\item{n}{number of observations.}
}
\value{
\code{dWG} gives the density, \code{pWG} gives the distribution 
function, \code{qWG} gives the quantile function, \code{rWG}
generates random deviates and \code{hWG} gives the hazard function.
}
\description{
Density, distribution function, quantile function, 
random generation and hazard function for the weibull geometric distribution with
parameters \code{mu}, \code{sigma} and \code{nu}.
}
\details{
The weibull geometric distribution with parameters \code{mu},
\code{sigma} and \code{nu} has density given by

f(x) = (mu*(sigma)^mu*(1-nu)*x^(mu-1)*exp(-(sigma*x)^mu))/(1- nu*exp(-(sigma*x)^mu))^2

for x > 0.
}
\examples{
 
## The probability density function 
curve(dWG(x, mu = 0.5, sigma = 0.2, nu = 0.95), from = 0, to = 5, ylim = c(0, 1.5), col = "red", las = 1, ylab = "The probability density function")

## The cumulative distribution and the Reliability function
par(mfrow = c(1, 2))
curve(pWG(x, mu = 0.5, sigma = 0.2, nu = 0.95), from = 0, to = 5, ylim = c(0, 1), col = "red", las = 1, ylab = "The cumulative distribution function")
curve(pWG(x, mu = 0.5, sigma = 0.2, nu = 0.95, lower.tail = FALSE), from = 0, to = 5, ylim = c(0, 1), col = "red", las = 1, ylab = "The Reliability function")

## The quantile function
p <- seq(from = 0, to = 0.99999, length.out = 100)
plot(x = qWG(p = p, mu = 0.5, sigma = 0.2, nu = 0.95), y = p, xlab = "Quantile", las = 1, ylab = "Probability")
curve(pWG(x, mu = 0.5, sigma = 0.2, nu = 0.95), from = 0, add = TRUE, col = "red")

## The random function
hist(rWG(1000, mu = 0.5, sigma = 0.2, nu = 0.95), freq = FALSE, xlab = "x", ylim = c(0, 0.2), las = 1, main = "")
curve(dWG(x, mu = 0.5, sigma = 0.2, nu = 0.95),  from = 0, add = TRUE, col = "red", ylim = c(0, 0.2))

## The Hazard function
curve(hWG(x, mu = 0.5, sigma = 0.2, nu = 0.95), from = 0, to = 15, ylim = c(0, 2.2), col = "red", ylab = "The hazard function", las = 1)
}
