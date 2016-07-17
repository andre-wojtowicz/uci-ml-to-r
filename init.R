# ---- init ----

# clear envirionment

rm(list = ls())

# load setup variables

source("config.R")

# set randomization

set.seed(SEED)

# load library management system

library(checkpoint)

if (CHECKPOINT.QUICK.LOAD) # approx. x10 faster checkpoint library loading
{
    # assume https
    options(checkpoint.mranUrl = CHECKPOINT.MRAN.URL)
    # disable url checking
    assignInNamespace("is.404", function(mran, warn = TRUE) { FALSE },
                      "checkpoint")
}

# knitr fix
checkpoint(CHECKPOINT.SNAPSHOT.DATE, verbose = TRUE, scanForPackages = FALSE)
if (system.file(package = "knitr") == "")
{
    install.packages("knitr")
}

# actual checkpoint loading
checkpoint(CHECKPOINT.SNAPSHOT.DATE, verbose = TRUE, scanForPackages = TRUE)

# load logging system

library(futile.logger)

flog.threshold(LOGGER.LEVEL)

# load libraries

library(RCurl)
library(tools)
library(yaml)

library(plyr)
library(dplyr)
library(foreign)
library(XLConnect)

# load helper functions

source("utils.R")

# perform additional custom init

if (file.exists(USER.INIT.FILE))
{
    source(USER.INIT.FILE)
}
