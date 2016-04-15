rm(list=ls())

source("config.R")
source("utils.R")

library(RCurl)
library(tools)
library(yaml)

flog.info("Started downloading dataset collection")

for (dir.name in dir(PATH_DATASETS))
{
    flog.info(paste("Dataset:", dir.name))
    
    dest.dir  = gsub("\\*", dir.name, PATH_DATASET_ORIGINAL)
    config.yaml.file = paste0(PATH_DATASETS, dir.name, "/", FILE_CONFIG_YAML)
    
    urls.list = yaml.load_file(config.yaml.file)$urls

    mkdir(dest.dir)
    
    for (url in urls.list)
    {
        flog.info(paste("URL:", url))
        
        dest.file = URLdecode(basename(url))
        dest.file.path = paste0(dest.dir, dest.file)
        
        if (file.exists(dest.file.path))
        {
            flog.warn(paste("Target file", basename(dest.file.path), 
                            "already exists; skipping..."))
            next
        }
        
        tryCatch(
            raw.content <- getBinaryURL(url, .opts=curlOptions(ssl.verifypeer=FALSE)),
            error = function(e){flog.error(e); stop(e)}
        )
        
        writeBin(raw.content, dest.file.path)
        
    }
    
    flog.info("*****")
}

flog.info("Finished downloading dataset collection")
