preprocessDataset = function()
{
    #set.seed(SEED)
    
    temp.dir = tempdir()
    
    zip.file = "bank.zip"
    zip.dataset.path = "bank-full.csv"
    
    flog.debug(paste("Unzipping", zip.file))
    
    unzip(zipfile=paste0(orig.dir, zip.file),
          files=zip.dataset.path,
          exdir=temp.dir)
    
    flog.debug(paste("Loading", zip.dataset.path))
    
    dataset = read.csv(paste0(temp.dir, "/", zip.dataset.path), sep=";")
    
    flog.debug("Preprocessing loaded dataset")
    
    dataset = dataset %>% 
        select(-c(duration, default)) %>%
        filter(job != "unknown" & marital != "unknown" & education != "unknown" & 
               education != "unknown" & housing != "unknown" & loan != "unknown") %>%
        droplevels()
    
    dataset = dataset %>% 
        mutate(
            education=factor(education, levels=c("primary", "secondary", 
                                                 "tertiary"),
                             ordered=TRUE),
            month=factor(month, levels=c("jan", "feb", "mar", 
                                         "apr", "may", "jun", 
                                         "jul", "aug", "sep", 
                                         "oct", "nov", "dec"), 
                         ordered=TRUE),
            pdays.bin=revalue(factor(pdays==-1), 
                              c("TRUE"="never", "FALSE"="successful")), 
            pdays=as.integer(replace(pdays, pdays==-1, 999))) %>%
        select(age:pdays, pdays.bin, previous:y)
    
    return(dataset)
}