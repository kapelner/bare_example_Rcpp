library(microbenchmark)
library(bare)

p = 100
M = matrix(rnorm(p^2), nrow = p)

Rcpp::cppFunction(depends = "RcppEigen", '					
	double eigen_det_cpp_on_the_fly(const Eigen::Map<Eigen::MatrixXd> X) {
		return X.determinant();
	}
')

microbenchmark(
  within_package =  eigen_det(M),
  on_the_fly =      eigen_det_cpp_on_the_fly(M),
  times = 10
)
