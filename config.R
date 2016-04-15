# ---- checkpoint ----

CHECKPOINT.MRAN.URL      = "http://mran.microsoft.com/snapshot/"
CHECKPOINT.SNAPSHOT.DATE = "2016-04-10"

library(checkpoint)
options(checkpoint.mranUrl=CHECKPOINT.MRAN.URL)
checkpoint(CHECKPOINT.SNAPSHOT.DATE)

# ---- logger ----

LOGGER_LEVEL = futile.logger::INFO

library(futile.logger)
flog.threshold(LOGGER_LEVEL)

# ---- other ----

PATH_DATASETS             = "data-collection/"
PATH_DATASET_ORIGINAL     = paste0(PATH_DATASETS, "*/original/")
PATH_DATASET_PREPROCESSED = paste0(PATH_DATASETS, "*/preprocessed/")

FILE_CONFIG_YAML          = "config.yaml"
FILE_PREPROCESSING_SCRIPT = "preprocess.R"
FILE_PREPROCESSED_OUTPUT  = "dataset.rds"

if (file.exists("config.R.user"))
    source("config.R.user")
