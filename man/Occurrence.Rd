% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/accessors.R
\name{Occurrence}
\alias{Covariate}
\alias{Model}
\alias{Occurrence}
\alias{Output}
\alias{Process}
\title{Accessor functions for getting module outputs from a workflow object}
\usage{
Occurrence(workflow)

Covariate(workflow)

Process(workflow)

Model(workflow)

Output(workflow)
}
\arguments{
\item{workflow}{A workflow object}
}
\description{
These functions access the output from each module type. If workflows
  are split using list, they will return a list with the output of 
  each seperate workflow being one element of the list.
}
\examples{
\dontrun{
work1 <- workflow(occurrence = UKAnophelesPlumbeus,
                 covariate  = UKAir,
                 process    = Background(n = 70),
                 model      = list(LogisticRegression, LogisticRegression),
                 output     = PrintMap)

Occurrence(work1)
Covariate(work1)
Process(work1)
Model(work1)
Model(work1)[[1]]
Output(work1)
}
}

