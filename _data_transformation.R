library(tidyverse)
df = read.csv("Speed Dating Data.csv")
col_common = c("iid", "pid", "gender", "match", "age", "field", "race", "from", "income", "goal", "career", "wave")

df_work <- df[c(col_common, "attr1_1", "sinc1_1", "intel1_1", "fun1_1", "amb1_1",
                "attr2_1", "sinc2_1", "intel2_1", "fun2_1", "amb2_1",
                "attr4_1", "sinc4_1", "intel4_1", "fun4_1", "amb4_1")]

df_work <- df_work[ which(df_work$wave >= 10),]


write.csv(df_work,"SpeedDatingFinal.csv", row.names = FALSE)
