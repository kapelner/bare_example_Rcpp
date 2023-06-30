#' A faster-than-base determinant function
#' 
#' Via the eigen package
#' 
#' @param X					A numeric matrix of size p x p
#' 
#' @return					The determinant as a scalar numeric value
#' 
#' @useDynLib bare, .registration=TRUE
#' @export
eigen_det = function(X){
	eigen_det_cpp(X)	
}

#' Sets the number of cores
#' 
#' Via the eigen package
#' 
#' @param num_cores 		The number of cores to use
#' 
#' @useDynLib bare, .registration=TRUE
#' @export
set_num_cores = function(num_cores){
	set_eigen_num_threads_cpp(num_cores)
}