\name{getBC}
\alias{getBC}
\alias{getBC-method}
\title{
Get the details of the MBDC
}
\description{
\code{getBC} is a function to get the bicluster of \code{DELTA}. \cr
\code{getBC} will return the gene names and condiction names of the bicluster you give. \cr \cr
thisBC = getBC(results, \ldots); \cr \cr
}
\arguments{
\item{results}{The result of DELTA.}
\item{numBC}{Which bicluster you want to see.}
}
\value{
The R function, \code{getBC} returns an object of \code{list}: \cr 
\tabular{ll}{
genes \tab The gene names in this bicluster. \cr 
conds \tab The condiction names in this bicluster. \cr 
num_gene \tab The number of genes in this bicluster. \cr 
num_cond \tab The number of condictions in this bicluster. \cr 
}
}
\details{
results = delta(data, file = "MBDC", q = 0.06, c = 0.95, f = 1, k = 2, r = 1, o = 100, d = "F"); \cr 
thisBC = getBC(results, numBC = 1);
}
\details{
models = DDMarkerFAST(data = data, method = "svm");
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
\code{\link{DELTA-package}} \code{\link{DELTA-method}} \code{\link{toy}} \code{\link{LOG}} \cr
}
\examples{

data(toy);
# load a discrete data named toy

results = delta(toy, file = "toy", d = "T");
# run delta to deal with the discrete data

thisBC = getBC(results, numBC = 3);
# get the gene and condiction names of the 3rd bicluster.

}
