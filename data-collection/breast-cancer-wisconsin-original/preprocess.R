preprocess.dataset = function()
{   
    csv.file = "breast-cancer-wisconsin.data"
    
    dataset = read.csv(file.path(orig.dir, csv.file), header = FALSE)
    
    colnames(dataset) = c("Sample code number", "Clump Thickness", 
                          "Uniformity of Cell Size", "Uniformity of Cell Shape", 
                          "Marginal Adhesion", "Single Epithelial Cell Size", 
                          "Bare Nuclei", "Bland Chromatin", "Normal Nucleoli", 
                          "Mitoses", "Class")
    
    dataset = dataset %>% 
        select(-`Sample code number`) %>%
        filter(`Bare Nuclei` != "?") %>%
        mutate(Class = factor(Class), 
               `Bare Nuclei` = as.integer(`Bare Nuclei`)) %>%
        droplevels()
    
    return(dataset)
}