print.dataset.statistics = function(dataset)
{
    if (ncol(dataset) == 0) # for mockups
    {
        flog.warn("Empty dataset")
        return()
    }
    
    no.cases = nrow(dataset)
    no.attributes = ncol(dataset) - 1
    perc.classes = 
        round(100*as.numeric(table(dataset[, ncol(dataset)]))/nrow(dataset), 0)
    
    flog.info(paste0("Cases: ", no.cases, ", attributes: ", no.attributes,
                     ", classes: ", perc.classes[1], "%/", perc.classes[2], "%"))
}

setup.logger = function(output.file, overwrite.existing.files)
{
    if (overwrite.existing.files & file.exists(output.file))
    {
        file.remove(output.file)
    }
    
    invisible(flog.appender(appender.tee(output.file)))
}
