preprocess.dataset = function()
{   
    csv.file = "wdbc.data"
    
    dataset = read.csv(file.path(orig.dir, csv.file), header = FALSE)
    
    colnames(dataset) = c("id", "diagnosis", 
                          apply(expand.grid(c("radius", "texture", "perimeter", 
                                              "area", "smoothness", "compactness", 
                                              "concavity", "concave points", 
                                              "symmetry", "fractal dimension"),
                                            c("mean", "se", "worst")), 
                                1, function(x){paste(x[2], x[1])}))
    
    dataset = dataset %>% 
        select(`mean radius`:`worst fractal dimension`, diagnosis)

    return(dataset)
}