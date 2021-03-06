% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BuildModule.R
\name{BuildModule}
\alias{BuildModule}
\title{BuildModule}
\usage{
BuildModule(object, type, dir = ".", title = "", description = "",
  details = "", author = "", email = "", version = 0.1, paras = NULL,
  dataType = NULL, check = TRUE)
}
\arguments{
\item{object}{A function that will be made into a module file. It is good
practise to ensure your function does not have the same name as a base
function, another module, or other common functions.}

\item{type}{A string that defines the type of module. Possible module types
are occurrence, covariate, process, model, diagnostic and output.}

\item{dir}{The directory to put the module into (defaults to the
working directory).}

\item{title}{A short description of the module.}

\item{description}{(required) A single string giving a full description of the module.}

\item{details}{(optional) A single string giving details of the module.}

\item{author}{(required) String giving the author(s) name(s)}

\item{email}{(required) String giving the correspondance address for the module (only give one address).}

\item{version}{(optional) Numeric giving the version number. Default 0.1.}

\item{paras}{A list of the form 
list(parameterName = 'Parameter description.',
anotherParameter = 'Another description.')
This is required if the module takes non-default arguements}

\item{dataType}{Character vector required for all module types except 'covariate'.
Indicates the types of data that this module works with. Values can be any of
'presence-only', 'presence/absence', 'presence/background', 'abundance' or 'proportion'. For a occurrence
model this should indicate the type of data that is returned and for other modules
should indicate the type of data they will work with. If the module works with
multiple types they can be supplied in a vector, e.g. c('presence-only',
'presence/absence')}

\item{check}{Logical indicating if the module should be run through checks
once it has been built. Defaults to TRUE.}
}
\value{
Name of the module. AS a side effect outputs a .R file to the directory
specified.
}
\description{
Turn a function in the namespace into a module.
Will later add functions to upload module to figshare etc.
And add testing that the module name is unique.
}

