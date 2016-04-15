library(futile.logger)

mkdir = function(dest.dir)
{
    if (!dir.exists(dest.dir))
    {
        flog.debug(paste("Creating directory", dest.dir))
        dir.create(dest.dir)
    } else {
        flog.debug(paste("Target directory", dest.dir, "already exists"))
    }
}

printDatasetStatistics = function(dataset)
{
    if (ncol(dataset)==0) # for mockups
    {
        flog.warn("Empty dataset")
        return()
    }
    
    no.cases = nrow(dataset)
    no.attributes = ncol(dataset) - 1
    perc.classes = round(100*as.numeric(table(dataset[, ncol(dataset)]))/nrow(dataset), 0)
    
    flog.info(paste0("Cases: ", no.cases, ", attributes: ", no.attributes,
                     ", classes: ", perc.classes[1], "%/", perc.classes[2], "%"))
}
