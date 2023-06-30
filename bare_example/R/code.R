#' A faster-than-base determinant function
#' 
#' Via the eigen package
#' 
#' @param X					A numeric matrix of size p x p
#' @param num_cores 		The number of cores to use
#' 
#' @return					The determinant as a scalar numeric value
#' 
#' @export
eigen_det = function(X, num_cores = 1){
	eigen_det_cpp(X, num_cores)	
}