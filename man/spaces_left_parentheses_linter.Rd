% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spaces_left_parentheses_linter.R
\name{spaces_left_parentheses_linter}
\alias{spaces_left_parentheses_linter}
\title{Spaces before parentheses linter}
\usage{
spaces_left_parentheses_linter()
}
\description{
Check that all left parentheses have a space before them unless they are in a function call.
}
\examples{
# will produce lints
lint(
  text = "if(TRUE) x else y",
  linters = spaces_left_parentheses_linter()
)

# okay
lint(
  text = "if (TRUE) x else y",
  linters = spaces_left_parentheses_linter()
)

}
\seealso{
\link{linters} for a complete list of linters available in lintr. \cr
\url{https://style.tidyverse.org/syntax.html#parentheses} \cr
\code{\link[=function_left_parentheses_linter]{function_left_parentheses_linter()}}
}
\section{Tags}{
\link[=default_linters]{default}, \link[=readability_linters]{readability}, \link[=style_linters]{style}
}
