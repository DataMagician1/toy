#' A Function to load l
#'
#' This function allows load libraries and if needed import them on the fly
#' @param library string parameter to pass
#' @keywords lib library
#' @export
#' @examples
#' lib("ggplot2")

lib <- function(lib_tocheck) {
    
  list_installed_pack = installed.packages()
  check = lib_tocheck %in% list_installed_pack
  
  if (check) { 
    print("library found & loaded")
    
    library(lib_tocheck, character.only = T)
  } else {
    print("library not found, installing it...")
    install.packages(lib_tocheck)
    library(lib_tocheck, character.only = T)
    print("library loaded")
    }
  
}

#' A short function for View
#'
#' This function replace View with see
#' @param data data object, vec or df to pass
#' @keywords fast calls to library
#' @export
#' @examples
#' see(c(1,2,3))
see = function(dat){View(dat)}


#' A short function for head, plot, names
#'
#' This function replace View with see
#' @param data data object, vec or df to pass
#' @keywords fast calls to library
#' @export
#' @examples
#' h(c(1,2,3))
#' p(x, y)
#' n(dataset)
h = function(dat){head(dat)}
p = function(x, y){plot(x, y)}
n = function(dat){names(dat)}