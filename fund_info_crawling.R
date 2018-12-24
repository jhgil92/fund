# 펀드슈퍼마켓 펀드정보 크롤링

library(jsonlite)

tmp <- fromJSON(readLines('http://www.fundsupermarket.co.kr/fmm/FMM1010301/selectFundList.do?fsType01=B1&fstChk02=BB&fstChk03=&fstChk04=T&fstChk05=T&fstChk06=T&fstChk07=T&rlzRt=&type01_con1=-9999&type01_con2=9999&type02_con1=0&type02_con2=-999&type03_con1=0&type03_con2=20&saleRate=ON&afrcvRate=ON&gradeGbn=1&zeroin=T&mstar=&kfr=&fng=&type04_con1=0&type04_con2=100&type05_con1=0&type05_con2=100&type06_con1=0&type06_con2=100&sClass=N&eClass=N&fundName2=&pageNo=1&pageCnt=2000&openAbleYn=Y', encoding = "UTF-8"))
fund_info <- tmp$json$resList

fund_info <- fund_info[,sort(colnames(fund_info))]