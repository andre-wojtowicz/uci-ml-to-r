rm(list=ls())

source("config.R")
source("utils.R")

library(dplyr)
library(foreign)
library(XLConnect)

flog.info("Started preprocessing dataset collection")

for (dir.name in dir(PATH_DATASETS))
{
    flog.info(paste("Dataset:", dir.name))
    
    orig.dir = gsub("\\*", dir.name, PATH_DATASET_ORIGINAL)
    dest.dir = gsub("\\*", dir.name, PATH_DATASET_PREPROCESSED)
    dest.file.path = paste0(dest.dir, FILE_PREPROCESSED_OUTPUT)
    
    if (file.exists(dest.file.path))
    {
        flog.warn(paste("Target file", basename(dest.file.path), 
                        "already exists; skipping..."))
        flog.info("*****")
        next
    }
    
    r.src.file = paste0(PATH_DATASETS, dir.name, "/", FILE_PREPROCESSING_SCRIPT)
    
    source(r.src.file)
    dataset = preprocessDataset() # custom per-dataset preprocessing
    
    # change column names
    colnames(dataset) = tolower(
                            make.names(
                                gsub("^\\.|\\.$", "", colnames(dataset)),
                            unique=TRUE, allow_=FALSE))
    
    # change factor levels
    for (name in colnames(dataset))
    {
        if (any(class(dataset[[name]]) == "factor"))
        {
            levels(dataset[[name]]) = tolower(
                                        make.names(
                                            gsub("^\\.|\\.$", "", 
                                                 levels(dataset[[name]])),
                                            unique=TRUE, allow_=FALSE))
            
        }
    }
    
    printDatasetStatistics(dataset)
    
    mkdir(dest.dir)
    saveRDS(dataset, dest.file.path)
    
    flog.info(paste("Created preprocessed file", FILE_PREPROCESSED_OUTPUT))
    
    flog.info("*****")
}

flog.info("Finished preprocessing dataset collection")