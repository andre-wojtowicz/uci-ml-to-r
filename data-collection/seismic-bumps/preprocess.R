preprocessDataset = function()
{   
    #set.seed(SEED)
    
    arff.file = "seismic-bumps.arff"
    
    dataset = read.arff(paste0(orig.dir, "/", arff.file))
    
    dataset = dataset %>% select(-c(nbumps6:nbumps89)) %>%
              mutate(genergy=as.integer(genergy),
                     gpuls=as.integer(gpuls),
                     gdenergy=as.integer(gdenergy),
                     gdpuls=as.integer(gdpuls),
                     nbumps=as.integer(nbumps),
                     nbumps2=as.integer(nbumps2),
                     nbumps3=as.integer(nbumps3),
                     nbumps4=as.integer(nbumps4),
                     nbumps5=as.integer(nbumps5),
                     energy=as.integer(energy),
                     maxenergy=as.integer(maxenergy)
              )
    
    #dataset.1 = dataset %>% filter(class == "1")
    #dataset.0 = dataset %>% filter(class == "0") %>% 
    #            sample_n(nrow(dataset.1)*4)
    #
    #dataset = rbind(dataset.0, dataset.1)

    return(dataset)
}