# DELTA

DELTA or MBDC is a Model-Based DEep cLustering Algorithm for biology network analysis

# Description

In many informational fields, such as biological, environmental, medical, etc., lots of sets of data are created every day. A flexible system biology tool enables to analysis the biology metabolize network in question with efficiency and accuracy. Our work gave a hybrid system based on the deep clustering algorithm, computing the co-regulated genes, also called regulons or co-regulation modules. The experiment results, based on the hypergeometric distribution function scores, showed that the model-based deep clustering (MBDC), was more efficient and accurate than other network functions as ISA, BIMAX, XMOTIFS, QUBIC and QUBIC2. The further study showed that MBDC was not only available in cancer analysis, but also in some bacteria study such as Escherichia coli. MBDC, extends the traditional functions, using both the similar expression patterns and the feedback subset-clusters as the features to identify all the subgroup genes based on the stresses. For each layer in the function, the main purpose is to find: argmax(min(#genes, #stresses))). DELTA is based on QUBIC 1.0.

## Installation

You can install `DELTA` from `github` using the `devtools` package

```coffee
require(devtools);
install_github('yu-shang/delta');
citation("delta");
```

+ Package: DELTA
+ Version: 0.8
+ Project: 2013-04-28
+ Date: 2014-12-21
+ Update: 2016-08-04
+ Author: Yu Shang, Qiong Yu, Huansheng Cao, Guoqing Liu, Xiufeng Liu, Hao Wu, Yan Wang, Ying Xu
+ Maintainer: Yu Shang <yushang@uga.edu>, Qiong Yu <yuqiong@uga.edu>, Huansheng Cao <hshcao@uga.edu>, Ying Xu <xyn@bmb.uga.edu>
+ Depends: R (>= 3.0.3), Rcpp
+ Type: Package
+ License: GPL (>= 2)
+ LazyLoad: yes
+ LazyData: true


#### **LOG :**

##### `DELTA 0.0` `04/28/2013` **Project begin;**
##### `DELTA 0.1` `12/21/2014` **the system is send out for testing;**
##### `DELTA 0.8` `08/04/2016` **DELTA's C-version and R-version are published.**
