myfunction <- function()  {
 R <- rnorm(100)
 mean(R)
}
secondfunction <- function(x) {
  x + rnorm(length(x))
}