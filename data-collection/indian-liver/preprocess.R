preprocess.dataset = function()
{   
    csv.file = "Indian Liver Patient Dataset (ILPD).csv"
    
    dataset = read.csv(file.path(orig.dir, csv.file), header = FALSE)
    
    colnames(dataset) = c("Age", "Gender", "TB", "DB", "Alkphos", "Sgpt", 
                          "Sgot", "TP", "ALB", "A/G Ratio", "Selector")
    
    dataset = dataset %>% 
        mutate(Selector = factor(Selector))

    return(dataset)
}