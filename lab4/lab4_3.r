library(mangoTraining, help, pos = 2, lib.loc = NULL)
print(
    subset(demoData,Subject=33)
)

print(
    subset(pkData,Subject=33)
)

fullpk = merge(demoData,pkData,by="Subject")
print(fullpk[1:10,])