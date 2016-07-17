preprocess.dataset = function()
{   
    xls.file = "default of credit card clients.xls"
    
    wk      = loadWorkbook(file.path(orig.dir, xls.file))
    dataset = readWorksheet(wk, sheet = "Data", startRow = 2, startCol = 2,
                            check.names = FALSE)
    
    dataset = dataset %>% 
        mutate(LIMIT_BAL = as.integer(LIMIT_BAL),
               SEX       = factor(SEX),
               EDUCATION = factor(EDUCATION), # can not order due to
                                              # inconsistency with
                                              # UCI description
               MARRIAGE  = factor(MARRIAGE),
               AGE       = as.integer(AGE),
               PAY_0     = as.integer(replace(PAY_0, PAY_0 < 0, 0)),
               PAY_2     = as.integer(replace(PAY_2, PAY_2 < 0, 0)),
               PAY_3     = as.integer(replace(PAY_3, PAY_3 < 0, 0)),
               PAY_4     = as.integer(replace(PAY_4, PAY_4 < 0, 0)),
               PAY_5     = as.integer(replace(PAY_5, PAY_5 < 0, 0)),
               PAY_6     = as.integer(replace(PAY_6, PAY_6 < 0, 0)),
               BILL_AMT1 = as.integer(BILL_AMT1),
               BILL_AMT2 = as.integer(BILL_AMT2),
               BILL_AMT3 = as.integer(BILL_AMT3),
               BILL_AMT4 = as.integer(BILL_AMT4),
               BILL_AMT5 = as.integer(BILL_AMT5),
               BILL_AMT6 = as.integer(BILL_AMT6),
               PAY_AMT1  = as.integer(PAY_AMT1),
               PAY_AMT2  = as.integer(PAY_AMT2),
               PAY_AMT3  = as.integer(PAY_AMT3),
               PAY_AMT4  = as.integer(PAY_AMT4),
               PAY_AMT5  = as.integer(PAY_AMT5),
               PAY_AMT6  = as.integer(PAY_AMT6),
               `default payment next month` = 
                   factor(`default payment next month`)
        )

    return(dataset)
}