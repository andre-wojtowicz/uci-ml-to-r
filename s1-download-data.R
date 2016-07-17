# ---- download-data ----

source("init.R")
source("utils.R")

setup.logger(LOGGER.OUTPUT.S1.FILE)

flog.info("Step 1: download dataset collection")

for (dir.name in dir(DATASETS.DIR))
{
    flog.info(paste("Dataset:", dir.name))
    
    dest.dir  = gsub(DATASET.NAME.PATTERN, dir.name, DATASET.ORIGINAL.DIR)
    config.yaml.file = file.path(DATASETS.DIR, dir.name, DATASET.CONFIG.FILE)
    
    urls.list = yaml.load_file(config.yaml.file)$urls

    if (!dir.exists(dest.dir))
    {
        dir.create(dest.dir)
    }
    
    for (url in urls.list)
    {
        flog.info(paste("URL:", url))
        
        dest.file      = URLdecode(basename(url))
        dest.file.path = file.path(dest.dir, dest.file)
        
        if (!file.exists(dest.file.path) | OVERWRITE.OUTPUT.FILES)
        {
            tryCatch(
                raw.content <- 
                    getBinaryURL(url, .opts = curlOptions(ssl.verifypeer = 
                                                              SSL.VERIFY.PEER)),
                error = function(e){flog.error(e); stop(e)}
            )
            
            writeBin(raw.content, dest.file.path)
        } else {
            flog.warn(paste("Target file", basename(dest.file.path),
                            "already exists, skipping"))
        }
    }
    
    flog.info(paste(rep("*", 25), collapse = ""))
}
