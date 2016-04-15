# UCI Machine Learning datasets for R
Andrzej Wójtowicz  



Document generation date: 2016-04-16 01:01:04.


# Bank Marketing 

**Local directory**: bank-marketing 

**Details**: [link](https://archive.ics.uci.edu/ml/datasets/Bank+Marketing)

**Files**:

* [bank-additional.zip](https://archive.ics.uci.edu/ml/machine-learning-databases/00222/bank-additional.zip)

**Cite**:
```nohighlight
[Moro et al., 2014] S. Moro, P. Cortez and P. Rita. A Data-Driven Approach to Predict the Success of Bank Telemarketing. Decision Support Systems, Elsevier, 62:22-31, June 2014
```

**Dataset**:

```nohighlight
'data.frame':	38227 obs. of  18 variables:
 $ age           : int  56 57 37 40 56 45 59 24 25 25 ...
 $ job           : Factor w/ 11 levels "admin.","blue-collar",..: 4 8 8 1 8 8 1 10 8 8 ...
 $ marital       : Factor w/ 3 levels "divorced","married",..: 2 2 2 2 2 2 2 3 3 3 ...
 $ education     : Ord.factor w/ 6 levels "basic.4y"<"basic.6y"<..: 1 4 4 2 4 3 5 5 4 4 ...
 $ housing       : Factor w/ 2 levels "no","yes": 1 1 2 1 1 1 1 2 2 2 ...
 $ loan          : Factor w/ 2 levels "no","yes": 1 1 1 1 2 1 1 1 1 1 ...
 $ contact       : Factor w/ 2 levels "cellular","telephone": 2 2 2 2 2 2 2 2 2 2 ...
 $ month         : Ord.factor w/ 12 levels "jan"<"feb"<"mar"<..: 5 5 5 5 5 5 5 5 5 5 ...
 $ day_of_week   : Ord.factor w/ 5 levels "mon"<"tue"<"wed"<..: 1 1 1 1 1 1 1 1 1 1 ...
 $ campaign      : int  1 1 1 1 1 1 1 1 1 1 ...
 $ previous      : int  0 0 0 0 0 0 0 0 0 0 ...
 $ poutcome      : Factor w/ 3 levels "failure","nonexistent",..: 2 2 2 2 2 2 2 2 2 2 ...
 $ emp.var.rate  : num  1.1 1.1 1.1 1.1 1.1 1.1 1.1 1.1 1.1 1.1 ...
 $ cons.price.idx: num  94 94 94 94 94 ...
 $ cons.conf.idx : num  -36.4 -36.4 -36.4 -36.4 -36.4 -36.4 -36.4 -36.4 -36.4 -36.4 ...
 $ euribor3m     : num  4.86 4.86 4.86 4.86 4.86 ...
 $ nr.employed   : num  5191 5191 5191 5191 5191 ...
 $ y             : Factor w/ 2 levels "no","yes": 1 1 1 1 1 1 1 1 1 1 ...

```

**Class imbalance**: 11% / 89%

---

# Breast Cancer Wisconsin (Diagnostic) 

**Local directory**: breast-cancer-wisconsin-diagnostic 

**Details**: [link](https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Wisconsin+%28Diagnostic%29)

**Files**:

* [wdbc.data](https://archive.ics.uci.edu/ml/machine-learning-databases/breast-cancer-wisconsin/wdbc.data)
* [wdbc.names](https://archive.ics.uci.edu/ml/machine-learning-databases/breast-cancer-wisconsin/wdbc.names)

**Cite**:
```nohighlight
https://archive.ics.uci.edu/ml/citation_policy.html
@misc{Lichman:2013 , author = "M. Lichman", year = "2013", title = "{UCI} Machine Learning Repository", url = "http://archive.ics.uci.edu/ml", institution = "University of California, Irvine, School of Information and Computer Sciences" } 
```

**Dataset**:

```nohighlight
'data.frame':	569 obs. of  31 variables:
 $ mean radius            : num  18 20.6 19.7 11.4 20.3 ...
 $ mean texture           : num  10.4 17.8 21.2 20.4 14.3 ...
 $ mean perimeter         : num  122.8 132.9 130 77.6 135.1 ...
 $ mean area              : num  1001 1326 1203 386 1297 ...
 $ mean smoothness        : num  0.1184 0.0847 0.1096 0.1425 0.1003 ...
 $ mean compactness       : num  0.2776 0.0786 0.1599 0.2839 0.1328 ...
 $ mean concavity         : num  0.3001 0.0869 0.1974 0.2414 0.198 ...
 $ mean concave points    : num  0.1471 0.0702 0.1279 0.1052 0.1043 ...
 $ mean symmetry          : num  0.242 0.181 0.207 0.26 0.181 ...
 $ mean fractal dimension : num  0.0787 0.0567 0.06 0.0974 0.0588 ...
 $ se radius              : num  1.095 0.543 0.746 0.496 0.757 ...
 $ se texture             : num  0.905 0.734 0.787 1.156 0.781 ...
 $ se perimeter           : num  8.59 3.4 4.58 3.44 5.44 ...
 $ se area                : num  153.4 74.1 94 27.2 94.4 ...
 $ se smoothness          : num  0.0064 0.00522 0.00615 0.00911 0.01149 ...
 $ se compactness         : num  0.049 0.0131 0.0401 0.0746 0.0246 ...
 $ se concavity           : num  0.0537 0.0186 0.0383 0.0566 0.0569 ...
 $ se concave points      : num  0.0159 0.0134 0.0206 0.0187 0.0188 ...
 $ se symmetry            : num  0.03 0.0139 0.0225 0.0596 0.0176 ...
 $ se fractal dimension   : num  0.00619 0.00353 0.00457 0.00921 0.00511 ...
 $ worst radius           : num  25.4 25 23.6 14.9 22.5 ...
 $ worst texture          : num  17.3 23.4 25.5 26.5 16.7 ...
 $ worst perimeter        : num  184.6 158.8 152.5 98.9 152.2 ...
 $ worst area             : num  2019 1956 1709 568 1575 ...
 $ worst smoothness       : num  0.162 0.124 0.144 0.21 0.137 ...
 $ worst compactness      : num  0.666 0.187 0.424 0.866 0.205 ...
 $ worst concavity        : num  0.712 0.242 0.45 0.687 0.4 ...
 $ worst concave points   : num  0.265 0.186 0.243 0.258 0.163 ...
 $ worst symmetry         : num  0.46 0.275 0.361 0.664 0.236 ...
 $ worst fractal dimension: num  0.1189 0.089 0.0876 0.173 0.0768 ...
 $ diagnosis              : Factor w/ 2 levels "B","M": 2 2 2 2 2 2 2 2 2 2 ...

```

**Class imbalance**: 37% / 63%

---

# Breast Cancer Wisconsin (Original) 

**Local directory**: breast-cancer-wisconsin-original 

**Details**: [link](https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Wisconsin+%28Original%29)

**Files**:

* [breast-cancer-wisconsin.data](https://archive.ics.uci.edu/ml/machine-learning-databases/breast-cancer-wisconsin/breast-cancer-wisconsin.data)
* [breast-cancer-wisconsin.names](https://archive.ics.uci.edu/ml/machine-learning-databases/breast-cancer-wisconsin/breast-cancer-wisconsin.names)

**Cite**:
```nohighlight
O. L. Mangasarian and W. H. Wolberg: "Cancer diagnosis via linear programming", SIAM News, Volume 23, Number 5, September 1990, pp 1 & 18.
```

**Dataset**:

```nohighlight
'data.frame':	683 obs. of  10 variables:
 $ Clump Thickness            : int  5 5 3 6 4 8 1 2 2 4 ...
 $ Uniformity of Cell Size    : int  1 4 1 8 1 10 1 1 1 2 ...
 $ Uniformity of Cell Shape   : int  1 4 1 8 1 10 1 2 1 1 ...
 $ Marginal Adhesion          : int  1 5 1 1 3 8 1 1 1 1 ...
 $ Single Epithelial Cell Size: int  2 7 2 3 2 7 2 2 2 2 ...
 $ Bare Nuclei                : int  2 3 4 6 2 3 3 2 2 2 ...
 $ Bland Chromatin            : int  3 3 3 3 3 9 3 3 1 2 ...
 $ Normal Nucleoli            : int  1 2 1 7 1 7 1 1 1 1 ...
 $ Mitoses                    : int  1 1 1 1 1 1 1 1 5 1 ...
 $ Class                      : Factor w/ 2 levels "2","4": 1 1 1 1 1 2 1 1 1 1 ...

```

**Class imbalance**: 35% / 65%

---

# Cardiotocography 

**Local directory**: cardiotocography 

**Details**: [link](https://archive.ics.uci.edu/ml/datasets/Cardiotocography)

**Files**:

* [CTG.xls](https://archive.ics.uci.edu/ml/machine-learning-databases/00193/CTG.xls)

**Cite**:
```nohighlight
Ayres de Campos et al. (2000) SisPorto 2.0 A Program for Automated Analysis of Cardiotocograms. J Matern Fetal Med 5:311-318 
```

**Dataset**:

```nohighlight
'data.frame':	2126 obs. of  30 variables:
 $ LB      : int  120 132 133 134 132 134 134 122 122 122 ...
 $ AC      : int  0 4 2 2 4 1 1 0 0 0 ...
 $ FM      : int  0 0 0 0 0 0 0 0 0 0 ...
 $ UC      : int  0 4 5 6 5 10 9 0 1 3 ...
 $ ASTV    : int  73 17 16 16 16 26 29 83 84 86 ...
 $ MSTV    : num  0.5 2.1 2.1 2.4 2.4 5.9 6.3 0.5 0.5 0.3 ...
 $ ALTV    : int  43 0 0 0 0 0 0 6 5 6 ...
 $ MLTV    : num  2.4 10.4 13.4 23 19.9 0 0 15.6 13.6 10.6 ...
 $ DL      : int  0 2 2 2 0 9 6 0 0 0 ...
 $ DP      : int  0 0 0 0 0 2 2 0 0 0 ...
 $ Width   : int  64 130 130 117 117 150 150 68 68 68 ...
 $ Min     : int  62 68 68 53 53 50 50 62 62 62 ...
 $ Max     : int  126 198 198 170 170 200 200 130 130 130 ...
 $ Nmax    : int  2 6 5 11 9 5 6 0 0 1 ...
 $ Nzeros  : int  0 1 1 0 0 3 3 0 0 0 ...
 $ Mode    : int  120 141 141 137 137 76 71 122 122 122 ...
 $ Mean    : int  137 136 135 134 136 107 107 122 122 122 ...
 $ Median  : int  121 140 138 137 138 107 106 123 123 123 ...
 $ Variance: int  73 12 13 13 11 170 215 3 3 1 ...
 $ Tendency: Ord.factor w/ 3 levels "-1"<"0"<"1": 3 2 2 3 3 2 2 3 3 3 ...
 $ A       : Factor w/ 2 levels "0","1": 1 1 1 1 1 1 1 1 1 1 ...
 $ B       : Factor w/ 2 levels "0","1": 1 1 1 1 2 1 1 1 1 1 ...
 $ C       : Factor w/ 2 levels "0","1": 1 1 1 1 1 1 1 1 1 1 ...
 $ D       : Factor w/ 2 levels "0","1": 1 1 1 1 1 1 1 1 1 1 ...
 $ E       : Factor w/ 2 levels "0","1": 1 1 1 1 1 1 1 1 1 1 ...
 $ AD      : Factor w/ 2 levels "0","1": 1 2 2 2 1 1 1 1 1 1 ...
 $ DE      : Factor w/ 2 levels "0","1": 1 1 1 1 1 1 1 1 1 1 ...
 $ LD      : Factor w/ 2 levels "0","1": 1 1 1 1 1 2 2 1 1 1 ...
 $ FS      : Factor w/ 2 levels "0","1": 2 1 1 1 1 1 1 2 2 2 ...
 $ NSP     : Factor w/ 2 levels "1","3": 2 1 1 1 1 2 2 2 2 2 ...

```

**Class imbalance**: 22% / 78%

---

# Default of credit card clients 

**Local directory**: credit-card 

**Details**: [link](https://archive.ics.uci.edu/ml/datasets/default+of+credit+card+clients)

**Files**:

* [default of credit card clients.xls](https://archive.ics.uci.edu/ml/machine-learning-databases/00350/default%20of%20credit%20card%20clients.xls)

**Cite**:
```nohighlight
Yeh, I. C., & Lien, C. H. (2009). The comparisons of data mining techniques for the predictive accuracy of probability of default of credit card clients. Expert Systems with Applications, 36(2), 2473-2480.
```

**Dataset**:

```nohighlight
'data.frame':	30000 obs. of  24 variables:
 $ LIMIT_BAL                 : int  20000 120000 90000 50000 50000 50000 500000 100000 140000 20000 ...
 $ SEX                       : Factor w/ 2 levels "1","2": 2 2 2 2 1 1 1 2 2 1 ...
 $ EDUCATION                 : Factor w/ 7 levels "0","1","2","3",..: 3 3 3 3 3 2 2 3 4 4 ...
 $ MARRIAGE                  : Factor w/ 4 levels "0","1","2","3": 2 3 3 2 2 3 3 3 2 3 ...
 $ AGE                       : int  24 26 34 37 57 37 29 23 28 35 ...
 $ PAY_0                     : int  2 0 0 0 0 0 0 0 0 0 ...
 $ PAY_2                     : int  2 2 0 0 0 0 0 0 0 0 ...
 $ PAY_3                     : int  0 0 0 0 0 0 0 0 2 0 ...
 $ PAY_4                     : int  0 0 0 0 0 0 0 0 0 0 ...
 $ PAY_5                     : int  0 0 0 0 0 0 0 0 0 0 ...
 $ PAY_6                     : int  0 2 0 0 0 0 0 0 0 0 ...
 $ BILL_AMT1                 : int  3913 2682 29239 46990 8617 64400 367965 11876 11285 0 ...
 $ BILL_AMT2                 : int  3102 1725 14027 48233 5670 57069 412023 380 14096 0 ...
 $ BILL_AMT3                 : int  689 2682 13559 49291 35835 57608 445007 601 12108 0 ...
 $ BILL_AMT4                 : int  0 3272 14331 28314 20940 19394 542653 221 12211 0 ...
 $ BILL_AMT5                 : int  0 3455 14948 28959 19146 19619 483003 -159 11793 13007 ...
 $ BILL_AMT6                 : int  0 3261 15549 29547 19131 20024 473944 567 3719 13912 ...
 $ PAY_AMT1                  : int  0 0 1518 2000 2000 2500 55000 380 3329 0 ...
 $ PAY_AMT2                  : int  689 1000 1500 2019 36681 1815 40000 601 0 0 ...
 $ PAY_AMT3                  : int  0 1000 1000 1200 10000 657 38000 0 432 0 ...
 $ PAY_AMT4                  : int  0 1000 1000 1100 9000 1000 20239 581 1000 13007 ...
 $ PAY_AMT5                  : int  0 0 1000 1069 689 1000 13750 1687 1000 1122 ...
 $ PAY_AMT6                  : int  0 2000 5000 1000 679 800 13770 1542 1000 0 ...
 $ default payment next month: Factor w/ 2 levels "0","1": 2 2 1 1 1 1 1 1 1 1 ...

```

**Class imbalance**: 22% / 78%

---

# ILPD (Indian Liver Patient Dataset) 

**Local directory**: indian-liver 

**Details**: [link](https://archive.ics.uci.edu/ml/datasets/ILPD+(Indian+Liver+Patient+Dataset))

**Files**:

* [Indian Liver Patient Dataset (ILPD).csv](https://archive.ics.uci.edu/ml/machine-learning-databases/00225/Indian%20Liver%20Patient%20Dataset%20(ILPD).csv)

**Cite**:
```nohighlight
https://archive.ics.uci.edu/ml/citation_policy.html
@misc{Lichman:2013 , author = "M. Lichman", year = "2013", title = "{UCI} Machine Learning Repository", url = "http://archive.ics.uci.edu/ml", institution = "University of California, Irvine, School of Information and Computer Sciences" } 
```

**Dataset**:

```nohighlight
'data.frame':	583 obs. of  11 variables:
 $ Age      : int  65 62 62 58 72 46 26 29 17 55 ...
 $ Gender   : Factor w/ 2 levels "Female","Male": 1 2 2 2 2 2 1 1 2 2 ...
 $ TB       : num  0.7 10.9 7.3 1 3.9 1.8 0.9 0.9 0.9 0.7 ...
 $ DB       : num  0.1 5.5 4.1 0.4 2 0.7 0.2 0.3 0.3 0.2 ...
 $ Alkphos  : int  187 699 490 182 195 208 154 202 202 290 ...
 $ Sgpt     : int  16 64 60 14 27 19 16 14 22 53 ...
 $ Sgot     : int  18 100 68 20 59 14 12 11 19 58 ...
 $ TP       : num  6.8 7.5 7 6.8 7.3 7.6 7 6.7 7.4 6.8 ...
 $ ALB      : num  3.3 3.2 3.3 3.4 2.4 4.4 3.5 3.6 4.1 3.4 ...
 $ A/G Ratio: num  0.9 0.74 0.89 1 0.4 1.3 1 1.1 1.2 1 ...
 $ Selector : Factor w/ 2 levels "1","2": 1 1 1 1 1 1 1 1 2 1 ...

```

**Class imbalance**: 29% / 71%

---

# MAGIC Gamma Telescope 

**Local directory**: magic 

**Details**: [link](https://archive.ics.uci.edu/ml/datasets/MAGIC+Gamma+Telescope)

**Files**:

* [magic04.data](https://archive.ics.uci.edu/ml/machine-learning-databases/magic/magic04.data)
* [magic04.names](https://archive.ics.uci.edu/ml/machine-learning-databases/magic/magic04.names)

**Cite**:
```nohighlight
https://archive.ics.uci.edu/ml/citation_policy.html
@misc{Lichman:2013 , author = "M. Lichman", year = "2013", title = "{UCI} Machine Learning Repository", url = "http://archive.ics.uci.edu/ml", institution = "University of California, Irvine, School of Information and Computer Sciences" } 
```

**Dataset**:

```nohighlight
'data.frame':	19020 obs. of  11 variables:
 $ fLength : num  28.8 31.6 162.1 23.8 75.1 ...
 $ fWidth  : num  16 11.72 136.03 9.57 30.92 ...
 $ fSize   : num  2.64 2.52 4.06 2.34 3.16 ...
 $ fConc   : num  0.3918 0.5303 0.0374 0.6147 0.3168 ...
 $ fConc1  : num  0.1982 0.3773 0.0187 0.3922 0.1832 ...
 $ fAsym   : num  27.7 26.27 116.74 27.21 -5.53 ...
 $ fM3Long : num  22.01 23.82 -64.86 -6.46 28.55 ...
 $ fM3Trans: num  -8.2 -9.96 -45.22 -7.15 21.84 ...
 $ fAlpha  : num  40.09 6.36 76.96 10.45 4.65 ...
 $ fDist   : num  81.9 205.3 256.8 116.7 356.5 ...
 $ class   : Factor w/ 2 levels "g","h": 1 1 1 1 1 1 1 1 1 1 ...

```

**Class imbalance**: 35% / 65%

---

# Seismic bumps 

**Local directory**: seismic-bumps 

**Details**: [link](https://archive.ics.uci.edu/ml/datasets/seismic-bumps)

**Files**:

* [seismic-bumps.arff](https://archive.ics.uci.edu/ml/machine-learning-databases/00266/seismic-bumps.arff)

**Cite**:
```nohighlight
Sikora M., Wrobel L.: Application of rule induction algorithms for analysis of data collected by seismic hazard monitoring systems in coal mines. Archives of Mining Sciences, 55(1), 2010, 91-114.
```

**Dataset**:

```nohighlight
'data.frame':	2584 obs. of  16 variables:
 $ seismic       : Factor w/ 2 levels "a","b": 1 1 1 1 1 1 1 1 1 1 ...
 $ seismoacoustic: Factor w/ 3 levels "a","b","c": 1 1 1 1 1 1 1 1 1 1 ...
 $ shift         : Factor w/ 2 levels "N","W": 1 1 1 1 1 2 2 1 1 2 ...
 $ genergy       : int  15180 14720 8050 28820 12640 63760 207930 48990 100190 247620 ...
 $ gpuls         : int  48 33 30 171 57 195 614 194 303 675 ...
 $ gdenergy      : int  -72 -70 -81 -23 -63 -73 -6 -27 54 4 ...
 $ gdpuls        : int  -72 -79 -78 40 -52 -65 18 -3 52 25 ...
 $ ghazard       : Factor w/ 3 levels "a","b","c": 1 1 1 1 1 1 1 1 1 1 ...
 $ nbumps        : int  0 1 0 1 0 0 2 1 0 1 ...
 $ nbumps2       : int  0 0 0 0 0 0 2 0 0 1 ...
 $ nbumps3       : int  0 1 0 1 0 0 0 1 0 0 ...
 $ nbumps4       : int  0 0 0 0 0 0 0 0 0 0 ...
 $ nbumps5       : int  0 0 0 0 0 0 0 0 0 0 ...
 $ energy        : int  0 2000 0 3000 0 0 1000 4000 0 500 ...
 $ maxenergy     : int  0 2000 0 3000 0 0 700 4000 0 500 ...
 $ class         : Factor w/ 2 levels "0","1": 1 1 1 1 1 1 1 1 1 1 ...

```

**Class imbalance**: 7% / 93%

---

# Spambase 

**Local directory**: spambase 

**Details**: [link](https://archive.ics.uci.edu/ml/datasets/Spambase)

**Files**:

* [spambase.DOCUMENTATION](https://archive.ics.uci.edu/ml/machine-learning-databases/spambase/spambase.DOCUMENTATION)
* [spambase.data](https://archive.ics.uci.edu/ml/machine-learning-databases/spambase/spambase.data)
* [spambase.names](https://archive.ics.uci.edu/ml/machine-learning-databases/spambase/spambase.names)

**Cite**:
```nohighlight
https://archive.ics.uci.edu/ml/citation_policy.html
@misc{Lichman:2013 , author = "M. Lichman", year = "2013", title = "{UCI} Machine Learning Repository", url = "http://archive.ics.uci.edu/ml", institution = "University of California, Irvine, School of Information and Computer Sciences" }
```

**Dataset**:

```nohighlight
'data.frame':	4601 obs. of  58 variables:
 $ word_freq_make            : num  0 0.21 0.06 0 0 0 0 0 0.15 0.06 ...
 $ word_freq_address         : num  0.64 0.28 0 0 0 0 0 0 0 0.12 ...
 $ word_freq_all             : num  0.64 0.5 0.71 0 0 0 0 0 0.46 0.77 ...
 $ word_freq_3d              : num  0 0 0 0 0 0 0 0 0 0 ...
 $ word_freq_our             : num  0.32 0.14 1.23 0.63 0.63 1.85 1.92 1.88 0.61 0.19 ...
 $ word_freq_over            : num  0 0.28 0.19 0 0 0 0 0 0 0.32 ...
 $ word_freq_remove          : num  0 0.21 0.19 0.31 0.31 0 0 0 0.3 0.38 ...
 $ word_freq_internet        : num  0 0.07 0.12 0.63 0.63 1.85 0 1.88 0 0 ...
 $ word_freq_order           : num  0 0 0.64 0.31 0.31 0 0 0 0.92 0.06 ...
 $ word_freq_mail            : num  0 0.94 0.25 0.63 0.63 0 0.64 0 0.76 0 ...
 $ word_freq_receive         : num  0 0.21 0.38 0.31 0.31 0 0.96 0 0.76 0 ...
 $ word_freq_will            : num  0.64 0.79 0.45 0.31 0.31 0 1.28 0 0.92 0.64 ...
 $ word_freq_people          : num  0 0.65 0.12 0.31 0.31 0 0 0 0 0.25 ...
 $ word_freq_report          : num  0 0.21 0 0 0 0 0 0 0 0 ...
 $ word_freq_addresses       : num  0 0.14 1.75 0 0 0 0 0 0 0.12 ...
 $ word_freq_free            : num  0.32 0.14 0.06 0.31 0.31 0 0.96 0 0 0 ...
 $ word_freq_business        : num  0 0.07 0.06 0 0 0 0 0 0 0 ...
 $ word_freq_email           : num  1.29 0.28 1.03 0 0 0 0.32 0 0.15 0.12 ...
 $ word_freq_you             : num  1.93 3.47 1.36 3.18 3.18 0 3.85 0 1.23 1.67 ...
 $ word_freq_credit          : num  0 0 0.32 0 0 0 0 0 3.53 0.06 ...
 $ word_freq_your            : num  0.96 1.59 0.51 0.31 0.31 0 0.64 0 2 0.71 ...
 $ word_freq_font            : num  0 0 0 0 0 0 0 0 0 0 ...
 $ word_freq_000             : num  0 0.43 1.16 0 0 0 0 0 0 0.19 ...
 $ word_freq_money           : num  0 0.43 0.06 0 0 0 0 0 0.15 0 ...
 $ word_freq_hp              : num  0 0 0 0 0 0 0 0 0 0 ...
 $ word_freq_hpl             : num  0 0 0 0 0 0 0 0 0 0 ...
 $ word_freq_george          : num  0 0 0 0 0 0 0 0 0 0 ...
 $ word_freq_650             : num  0 0 0 0 0 0 0 0 0 0 ...
 $ word_freq_lab             : num  0 0 0 0 0 0 0 0 0 0 ...
 $ word_freq_labs            : num  0 0 0 0 0 0 0 0 0 0 ...
 $ word_freq_telnet          : num  0 0 0 0 0 0 0 0 0 0 ...
 $ word_freq_857             : num  0 0 0 0 0 0 0 0 0 0 ...
 $ word_freq_data            : num  0 0 0 0 0 0 0 0 0.15 0 ...
 $ word_freq_415             : num  0 0 0 0 0 0 0 0 0 0 ...
 $ word_freq_85              : num  0 0 0 0 0 0 0 0 0 0 ...
 $ word_freq_technology      : num  0 0 0 0 0 0 0 0 0 0 ...
 $ word_freq_1999            : num  0 0.07 0 0 0 0 0 0 0 0 ...
 $ word_freq_parts           : num  0 0 0 0 0 0 0 0 0 0 ...
 $ word_freq_pm              : num  0 0 0 0 0 0 0 0 0 0 ...
 $ word_freq_direct          : num  0 0 0.06 0 0 0 0 0 0 0 ...
 $ word_freq_cs              : num  0 0 0 0 0 0 0 0 0 0 ...
 $ word_freq_meeting         : num  0 0 0 0 0 0 0 0 0 0 ...
 $ word_freq_original        : num  0 0 0.12 0 0 0 0 0 0.3 0 ...
 $ word_freq_project         : num  0 0 0 0 0 0 0 0 0 0.06 ...
 $ word_freq_re              : num  0 0 0.06 0 0 0 0 0 0 0 ...
 $ word_freq_edu             : num  0 0 0.06 0 0 0 0 0 0 0 ...
 $ word_freq_table           : num  0 0 0 0 0 0 0 0 0 0 ...
 $ word_freq_conference      : num  0 0 0 0 0 0 0 0 0 0 ...
 $ char_freq_;               : num  0 0 0.01 0 0 0 0 0 0 0.04 ...
 $ char_freq_(               : num  0 0.132 0.143 0.137 0.135 0.223 0.054 0.206 0.271 0.03 ...
 $ char_freq_[               : num  0 0 0 0 0 0 0 0 0 0 ...
 $ char_freq_!               : num  0.778 0.372 0.276 0.137 0.135 0 0.164 0 0.181 0.244 ...
 $ char_freq_$               : num  0 0.18 0.184 0 0 0 0.054 0 0.203 0.081 ...
 $ char_freq_#               : num  0 0.048 0.01 0 0 0 0 0 0.022 0 ...
 $ capital_run_length_average: num  3.76 5.11 9.82 3.54 3.54 ...
 $ capital_run_length_longest: int  61 101 485 40 40 15 4 11 445 43 ...
 $ capital_run_length_total  : int  278 1028 2259 191 191 54 112 49 1257 749 ...
 $ class                     : Factor w/ 2 levels "0","1": 2 2 2 2 2 2 2 2 2 2 ...

```

**Class imbalance**: 39% / 61%

---

# Wine Quality 

**Local directory**: wine-quality 

**Details**: [link](https://archive.ics.uci.edu/ml/datasets/Wine+Quality)

**Files**:

* [winequality-red.csv](https://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/winequality-red.csv)
* [winequality-white.csv](https://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/winequality-white.csv)
* [winequality.names](https://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/winequality.names)

**Cite**:
```nohighlight
P. Cortez, A. Cerdeira, F. Almeida, T. Matos and J. Reis. Modeling wine preferences by data mining from physicochemical properties. In Decision Support Systems, Elsevier, 47(4):547-553, 2009.
```

**Dataset**:

```nohighlight
'data.frame':	6497 obs. of  13 variables:
 $ fixed acidity       : num  7 6.3 8.1 7.2 7.2 8.1 6.2 7 6.3 8.1 ...
 $ volatile acidity    : num  0.27 0.3 0.28 0.23 0.23 0.28 0.32 0.27 0.3 0.22 ...
 $ citric acid         : num  0.36 0.34 0.4 0.32 0.32 0.4 0.16 0.36 0.34 0.43 ...
 $ residual sugar      : num  20.7 1.6 6.9 8.5 8.5 6.9 7 20.7 1.6 1.5 ...
 $ chlorides           : num  0.045 0.049 0.05 0.058 0.058 0.05 0.045 0.045 0.049 0.044 ...
 $ free sulfur dioxide : num  45 14 30 47 47 30 30 45 14 28 ...
 $ total sulfur dioxide: num  170 132 97 186 186 97 136 170 132 129 ...
 $ density             : num  1.001 0.994 0.995 0.996 0.996 ...
 $ pH                  : num  3 3.3 3.26 3.19 3.19 3.26 3.18 3 3.3 3.22 ...
 $ sulphates           : num  0.45 0.49 0.44 0.4 0.4 0.44 0.47 0.45 0.49 0.45 ...
 $ alcohol             : num  8.8 9.5 10.1 9.9 9.9 10.1 9.6 8.8 9.5 11 ...
 $ color               : Factor w/ 2 levels "red","white": 2 2 2 2 2 2 2 2 2 2 ...
 $ quality             : Factor w/ 2 levels "0","1": 2 2 2 2 2 2 2 2 2 2 ...

```

**Class imbalance**: 37% / 63%

---

