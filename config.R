# ---- config ----

# randomization and output files

SEED                   = 1337
OVERWRITE.OUTPUT.FILES = TRUE # overwrite downloaded and created datasets

# extra user configuration and init

USER.CONFIG.FILE      = "config.R.user"
USER.INIT.FILE        = "init.R.user"

# checkpoint library

CHECKPOINT.MRAN.URL      = "https://mran.microsoft.com/"
CHECKPOINT.SNAPSHOT.DATE = "2016-07-01"
CHECKPOINT.QUICK.LOAD    = TRUE # skip testing https and checking url

# logging system

LOGGER.OUTPUT.S1.FILE           = "output-s1.log"
LOGGER.OUTPUT.S2.FILE           = "output-s2.log"
LOGGER.LEVEL                    = 6 # futile.logger::INFO
LOGGER.OVERWRITE.EXISTING.FILES = TRUE

# datasets

DATASETS.DIR                     = "data-collection"

DATASET.NAME.PATTERN             = "DS-NAME"
DATASET.ORIGINAL.DIR             = 
    file.path(DATASETS.DIR, DATASET.NAME.PATTERN, "original")
DATASET.PREPROCESSED.DIR         = 
    file.path(DATASETS.DIR, DATASET.NAME.PATTERN, "preprocessed")
DATASET.CONFIG.FILE              = "config.yaml"
DATASET.PREPROCESSING.SCRIPT     = "preprocess.R"
DATASET.PREPROCESSED.OUTPUT.FILE = "dataset.rds"

# curl

SSL.VERIFY.PEER = FALSE

# load custom config

if (file.exists(USER.CONFIG.FILE))
{
    source(USER.CONFIG.FILE)
}
