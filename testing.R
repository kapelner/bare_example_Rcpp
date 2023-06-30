pacman::p_load(bare, microbenchmark)

p = 100
M = matrix(rnorm(p^2), nrow = p)

Rcpp::cppFunction(depends = "RcppEigen", '					
	double eigen_det_cpp(const Eigen::Map<Eigen::MatrixXd> X, int n_cores) {
		Eigen::setNbThreads(n_cores);
		return X.determinant();
	}
')

microbenchmark(
  within_package =  eigen_det(M, 1),
  on_the_fly =      eigen_det_cpp(M, 1),
  times = 10
)
