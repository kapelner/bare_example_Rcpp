#include <Rcpp.h>
#include <RcppEigen.h>
#include <omp.h>
using namespace Rcpp;

// [[Rcpp::export]]
double eigen_det_cpp(const Eigen::Map<Eigen::MatrixXd> X) {
  return X.determinant();
}

// [[Rcpp::export]]
void set_eigen_num_threads_cpp(int n_cores) {
  Eigen::setNbThreads(n_cores);
}
