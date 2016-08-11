# ---- preprocess-data ----

source("init.R")
source("utils.R")

setup.logger(LOGGER.OUTPUT.S2.FILE, LOGGER.OVERWRITE.EXISTING.FILES)

flog.info("Step 2: preprocess dataset collection")

for (dir.name in dir(DATASETS.DIR))
{
    flog.info(paste("Dataset:", dir.name))
    
    orig.dir = gsub(DATASET.NAME.PATTERN, dir.name, DATASET.ORIGINAL.DIR)
    dest.dir = gsub(DATASET.NAME.PATTERN, dir.name, DATASET.PREPROCESSED.DIR)
    dest.file.path = file.path(dest.dir, DATASET.PREPROCESSED.OUTPUT.FILE)
    
    if (!file.exists(dest.file.path) | OVERWRITE.OUTPUT.FILES)
    {
        r.src.file = file.path(DATASETS.DIR, dir.name, 
                               DATASET.PREPROCESSING.SCRIPT)
        source(r.src.file)
        dataset = preprocess.dataset() # custom per-dataset preprocessing
        
        # change column names
        colnames(dataset) = tolower(
            make.names(
                gsub("^\\.|\\.$", "", colnames(dataset)),
                unique = TRUE, allow_ = FALSE))
        
        # change factor levels
        for (name in colnames(dataset))
        {
            if (any(class(dataset[[name]]) == "factor"))
            {
                levels(dataset[[name]]) = tolower(
                    make.names(
                        gsub("^\\.|\\.$", "", 
                             levels(dataset[[name]])),
                        unique = TRUE, allow_ = FALSE))
            }
        }
        
        print.dataset.statistics(dataset)
        
        if (!dir.exists(dest.dir))
        {
            dir.create(dest.dir)
        }
        
        saveRDS(dataset, dest.file.path)
        
        flog.info(paste("Created preprocessed file", 
                        DATASET.PREPROCESSED.OUTPUT.FILE))
    } else {
        flog.warn(paste("Target file", basename(dest.file.path), 
                        "already exists, skipping"))
    }
    
    flog.info(paste(rep("*", 25), collapse = ""))
}
