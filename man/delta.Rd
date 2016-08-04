\name{Delta}
\alias{delta}
\alias{Delta-method}
\alias{Delta}
\title{
DELTA or MBDC is a Model-Based DEep cLustering Algorithm for biology network analysis
}
\description{
results = delta(data, \ldots); \cr \cr
}
\arguments{
\item{data}{Data matrix.}
\item{file}{-file shoud be a string. The filename you want the DELTA to write to. \cr default: "MBDC"}
\item{q}{-q should be (0, 0.5]. Use quantile discretization for continuous data.\cr default: 0.06 (see details in Method section in paper)}
\item{c}{-c should be (0.5, 1]. Consistency level of the block (0.5-1.0], the minimum ratio between the number of identical valid symbols in a column and the total number of rows in the output. \cr default: 0.95}
\item{f}{-f should be [0, 1.0]. Filtering overlapping blocks. \cr default: 1 (do not remove any blocks)}
\item{k}{-k should be >= 2. Minimum column width of the block. \cr default: 5\% of columns, minimum 2 columns}
\item{r}{-r should be a number. The number of ranks as which we treat the up(down)-regulated value when discretization. \cr default: 1}
\item{o}{-o should be a number. Number of blocks to report. \cr default: 100}
\item{d}{-d should be either ("True", "False"). Discrete data, where user should send their processed data to different value classes, see above. \cr default: False}
}
\value{
The R function, \code{delta} returns an object of \code{list}: \cr 
\tabular{ll}{
Discrete \tab The discrete data of your given matrix. \cr 
ROWS_COLS \tab The rows and cols of the discrete data. \cr 
BC \tab The number of genes and conditions of every bicluster. \cr 
WriteToFile \tab The filename you have writen to. \cr 
ArgumentList \tab The parameters you have given to. \cr 
}
The R function, \code{delta} writes servel files to your \code{Working Directory}, being the same as the C-code DELTA does. \cr

}
\details{
results = delta(data, file = "MBDC", q = 0.06, c = 0.95, f = 1, k = 2, r = 1, o = 100, d = "F");
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
\code{\link{DELTA-package}} \code{\link{getBC-method}} \code{\link{data}} \code{\link{toy}} \code{\link{LOG}} \cr
}
\examples{

data(data);
# load the example matrix

results = delta(data);
# run DELTA with default parameters
# results is a variable of list with, 
#   the discrete data itself, 
#   the rows and cols of discrete data, 
#   the filename you want the DELTA to write the results to, 
#   the argument list you sent to the DELTA, 
# the more details of results, you will see in your Working Directory, 
# the name of that is what you sent to DELTA (DEFAULT "MBDC"), 

thisBC = getBC(results, numBC = 1);
# get the gene and condiction names of the biggest, the 1st bicluster.

data(toy);
# load a discrete data named toy

results = delta(toy, file = "toy", d = "T");
# run delta to deal with the discrete data
}
