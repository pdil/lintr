% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/with.R
\name{modify_defaults}
\alias{modify_defaults}
\title{Modify lintr defaults}
\usage{
modify_defaults(defaults, ...)
}
\arguments{
\item{defaults}{named list of elements to modify.}

\item{...}{arguments of elements to change. If unnamed, the argument is automatically named.
If the named argument already exists in \code{defaults}, it is replaced by the new element.
If it does not exist, it is added. If the value is \code{NULL}, the element is removed.}
}
\value{
A modified list of elements, sorted by name. To achieve this sort in a platform-independent way, two
transformations are applied to the names: (1) replace \verb{_} with \code{0} and (2) convert \code{\link[=tolower]{tolower()}}.
}
\description{
Modify a list of defaults by name, allowing for replacement, deletion and addition of new elements.
}
\examples{
# custom list of undesirable functions:
#    remove `sapply` (using `NULL`)
#    add `cat` (with an accompanying message),
#    add `print` (unnamed, i.e. with no accompanying message)
#    add `source` (as taken from `all_undesirable_functions`)
my_undesirable_functions <- modify_defaults(
  defaults = default_undesirable_functions,
  sapply = NULL, "cat" = "No cat allowed", "print", all_undesirable_functions[["source"]]
)

# list names of functions specified as undesirable
names(my_undesirable_functions)
}
\seealso{
\link{linters_with_tags}, \link{linters_with_defaults} for creating linter lists.
}
