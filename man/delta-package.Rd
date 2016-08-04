\name{delta-package}
\alias{delta-package}
\docType{package}
\title{
DELTA or MBDC is a Model-Based DEep cLustering Algorithm for biology network analysis
}
\description{
  In many informational fields, such as biological, environmental, medical, etc., lots of sets of data are created every day. A flexible system biology tool enables to analysis the biology metabolize network in question with efficiency and accuracy. Our work gave a hybrid system based on the deep clustering algorithm, computing the co-regulated genes, also called regulons or co-regulation modules. The experiment results, based on the hypergeometric distribution function scores, showed that the model-based deep clustering (MBDC), was more efficient and accurate than other network functions as ISA, BIMAX, XMOTIFS, QUBIC and QUBIC2. The further study showed that MBDC was not only available in cancer analysis, but also in some bacteria study such as Escherichia coli. MBDC, extends the traditional functions, using both the similar expression patterns and the feedback subset-clusters as the features to identify all the subgroup genes based on the stresses. For each layer in the function, the main purpose is to find: argmax(min(#genes, #stresses))). The main function \code{delta} is based on QUBIC 1.0.
 \cr \cr
Certain parts of the code uses open-source data structure library codes, including: \cr
- fib <\url{http://resnet.uoregon.edu/~gurney_j/jmpc/fib.html}>, copyright information in fib.c \cr
- Mark A. Weiss's data structure codes <\url{http://www.cs.fiu.edu/~weiss/}> \cr
 \cr
The main function of the package is delta(), and the more details you can find in \code{\link{delta-method}} \cr
}
\details{
\tabular{ll}{
Package: \tab delta\cr
Type: \tab Package\cr
Version: \tab 0.8\cr
Project: \tab 2013-04-28\cr
Date: \tab 2014-12-19\cr
Update: \tab 2016-08-04\cr
Depends: \tab R (>= 3.1.2), Rcpp (>= 0.11.3)\cr
LinkingTo: \tab Rcpp\cr
License: \tab GPL (>= 2)\cr
LazyLoad: \tab yes\cr
LazyData: \tab true\cr
}
}
\author{
Yu Shang (JLU & UGA) \email{yushang@uga.edu} \cr 
Qiong Yu (JLU & UGA) \email{yuqiong@uga.edu} \email{yujoan_2001@163.com} \cr 
Huansheng Cao (UGA) \email{hshcao@uga.edu} \cr 
Guoqing Liu (IMUST & UGA) \email{gqliu@uga.edu} \email{gqliu1010@163.com} \cr 
Xiufeng Liu (GZUCM & UGA) \email{xfliu@uga.edu} \email{liu_xf@gzucm.edu.cn} \cr 
Hao Wu (BIT & UGA) \email{wuhao@uga.edu} \email{wuhao@bit.edu.cn} \cr 
Yan Wang (JLU & UGA) \email{wy6868@hotmail.com} \cr 
Ying Xu (JLU & UGA) \email{xyn@uga.edu} \email{xyn@bmb.uga.edu} \cr \cr 
Maintainer: Yu Shang (JLU & UGA) \email{yushang@uga.edu} \cr 
}
\references{
citation("delta");
\cr 
Li, Ma, et al. (2009) \emph{QUBIC: a qualitative biclustering algorithm for analyses of gene expression data} Nucleic Acids Research 07/2009 37(15):e101 \cr
\url{https://code.google.com/p/qubic-biclustering/} \cr\cr 
}
\keyword{ cluster }
\keyword{ bicluster }
\seealso{
\code{\link{delta-method}} \code{\link{getBC-method}} \code{\link{LOG}} \cr
}
