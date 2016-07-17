preprocess.dataset = function()
{   
    csv.file.w = "winequality-white.csv"
    csv.file.r = "winequality-red.csv"
    
    dataset.w = read.csv(file.path(orig.dir, "/", csv.file.w), sep = ";",
                         check.names = FALSE)
    dataset.w = dataset.w %>% 
        mutate(color = "white")
    
    dataset.r = read.csv(paste0(orig.dir, "/", csv.file.r), sep = ";",
                         check.names = FALSE)
    dataset.r = dataset.r %>% 
        mutate(color = "red")
    
    dataset = 
        rbind(dataset.w, dataset.r) %>%
        mutate(color   = factor(color),
               quality = ifelse(quality > 5, 1, 0)) %>%
        select(`fixed acidity`:alcohol, color, quality) %>%
        mutate(quality = factor(quality))

    return(dataset)
}