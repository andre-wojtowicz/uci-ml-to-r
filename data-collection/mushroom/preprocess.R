preprocess.dataset = function()
{
    csv.file = "agaricus-lepiota.data"
    
    dataset = read.csv(file.path(orig.dir, csv.file), header = FALSE,
                       na.strings = "?")
    
    colnames(dataset) = c("class", "cap.shape", "cap.surface", "cap.color", 
                          "bruises", "odor", "gill.attachment", "gill.spacing", 
                          "gill.size", "gill.color", "stalk.shape", "stalk.root", 
                          "stalk.surface.above.ring", "stalk.surface.below.ring",
                          "stalk.color.above.ring", "stalk.color.below.ring", 
                          "veil.type", "veil.color", "ring.number", "ring.type",
                          "spore.print.color", "population", "habitat")
    
    dataset = dataset %>% 
        select(cap.shape:habitat, class, -veil.type) %>% 
        filter(complete.cases(.)) %>% 
        mutate(ring.number = as.integer(as.integer(ring.number) - 1))
    
    return(dataset)
}