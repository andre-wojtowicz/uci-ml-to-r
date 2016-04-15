preprocessDataset = function()
{
    #set.seed(SEED)
    
    temp.dir = tempdir()
    
    zip.file = "bank-additional.zip"
    zip.dataset.path = "bank-additional/bank-additional-full.csv"
    
    flog.debug(paste("Unzipping", zip.file))
    
    unzip(zipfile=paste0(orig.dir, zip.file),
          files=zip.dataset.path,
          exdir=temp.dir)
    
    flog.debug(paste("Loading", zip.dataset.path))
    
    dataset = read.csv(paste0(temp.dir, "/", zip.dataset.path), sep=";")
    
    flog.debug("Preprocessing loaded dataset")
    
    dataset = dataset %>% 
        select(-c(duration, pdays, default)) %>%
        filter(job != "unknown" & marital != "unknown" & education != "unknown" & 
               education != "illiterate" & housing != "unknown" & loan != "unknown") %>%
        droplevels()
    
    #dataset.yes = dataset %>% filter(y == "yes")
    #dataset.no = dataset %>% filter(y == "no") %>% sample_n(nrow(dataset.yes))
    #
    #dataset = rbind(dataset.yes, dataset.no)
    
    dataset = dataset %>% mutate(
                        education=factor(education, levels=c("basic.4y", "basic.6y", 
                                                             "basic.9y", "high.school",
                                                             "professional.course",
                                                             "university.degree"),
                                         ordered=TRUE),
                        month=factor(month, levels=c("jan", "feb", "mar", 
                                                     "apr", "may", "jun", 
                                                     "jul", "aug", "sep", 
                                                     "oct", "nov", "dec"), 
                                     ordered=TRUE),
                        day_of_week=factor(day_of_week, levels=c("mon", "tue", "wed",
                                                                 "thu", "fri"),
                                           ordered=TRUE)
    )
    
    return(dataset)
}