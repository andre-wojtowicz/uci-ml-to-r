preprocessDataset = function()
{   
    xls.file = "CTG.xls"
    
    wk = loadWorkbook(paste0(orig.dir, "/", xls.file))
    dataset = readWorksheet(wk, sheet="Raw Data")
    
    dataset = dataset %>% select(LB:FS, NSP, -c(DS, DR)) %>% 
              filter(complete.cases(.)) %>%
              mutate(LB=as.integer(LB),
                     AC=as.integer(AC),
                     FM=as.integer(FM),
                     UC=as.integer(UC),
                     ASTV=as.integer(ASTV),
                     ALTV=as.integer(ALTV),
                     DL=as.integer(DL),
                     DP=as.integer(DP),
                     Width=as.integer(Width),
                     Min=as.integer(Min),
                     Max=as.integer(Max),
                     Nmax=as.integer(Nmax),
                     Nzeros=as.integer(Nzeros),
                     Mode=as.integer(Mode),
                     Mean=as.integer(Mean),
                     Median=as.integer(Median),
                     Variance=as.integer(Variance),
                     Tendency=factor(Tendency, levels=c(-1,0,1), ordered=TRUE),
                     A=factor(A),
                     B=factor(B),
                     C=factor(C),
                     D=factor(D),
                     E=factor(E),
                     AD=factor(AD),
                     DE=factor(DE),
                     LD=factor(LD),
                     FS=factor(FS),
                     NSP=factor(replace(NSP, NSP==2, 3)))

    return(dataset)
}