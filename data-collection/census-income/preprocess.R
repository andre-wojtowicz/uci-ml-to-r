preprocess.dataset = function()
{
    csv.file.1 = "adult.data"
    csv.file.2 = "adult.test"
    
    dataset.1 = read.csv(file.path(orig.dir, csv.file.1), header = FALSE,
                         na.strings = " ?")
    dataset.2 = read.csv(file.path(orig.dir, csv.file.2), header = FALSE,
                         na.strings = " ?", skip = 1)
    
    column.names = c("age", "workclass", "fnlwgt", "education", 
                     "education.num", "marital.status", "occupation", 
                     "relationship", "race", "sex", "capital.gain", 
                     "capital.loss", "hours.per.week", "native.country", 
                     "class")
    
    colnames(dataset.1) = column.names
    colnames(dataset.2) = column.names
    
    levels(dataset.2$class) = gsub("\\.", "", levels(dataset.2$class))
    
    dataset = rbind(dataset.1, dataset.2)
    
    for (column.name in column.names)
    {
        if (is.factor(dataset[[column.name]]))
        {
            levels(dataset[[column.name]]) = trimws(levels(dataset[[column.name]]))
        }
    }
    
    education.ordered.levels = dataset %>% 
        select(education.num, education) %>% 
        unique %>% 
        arrange(education.num) %>% 
        select(education) %>% 
        c %>% 
        unlist %>% 
        unname %>%
        as.character
    
    dataset = dataset %>% 
        mutate(education = factor(education, levels = education.ordered.levels, 
                                  ordered = TRUE)) %>%
        select(-education.num) %>% 
        filter(complete.cases(.))
    
    return(dataset)
}