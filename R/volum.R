#' Title
#'
#' @param x first
#' @param y second
#' @param z third
#' @export
#'
#' @examples
#' three(2,3,4)
#' three(2:5,3:6,4:7)
#'
three<-function(x,y,z){
  area = x * y
  v = area * z
  return(cbind(x,y,area,v))
}

