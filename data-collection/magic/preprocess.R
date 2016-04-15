preprocessDataset = function()
{   
    csv.file = "magic04.data"
    
    dataset = read.csv(paste0(orig.dir, "/", csv.file),
                       header=FALSE)
    
    colnames(dataset) = c("fLength", "fWidth", "fSize", "fConc", "fConc1", 
                          "fAsym", "fM3Long", "fM3Trans", "fAlpha", "fDist", 
                          "class")

    return(dataset)
}