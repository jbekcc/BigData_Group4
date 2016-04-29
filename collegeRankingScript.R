TIMES_SCORE = read.csv("~/Documents/BigData_Group4/TIMES_SCORE.csv", encoding="UTF-8")
CWUR_SCORE = read.csv("~/Documents/BigData_Group4/CWUR_SCORE.csv", encoding="UTF-8")
TIMES_SCORE_PUBLIC = subset(TIMES_SCORE, TIMES_SCORE$CONTROL == "Public")
TIMES_SCORE_PRIVATE = subset(TIMES_SCORE, TIMES_SCORE$CONTROL == "Private nonprofit")

CWUR_SCORE_PUBLIC = subset(CWUR_SCORE, CWUR_SCORE$CONTROL == "Public")
CWUR_SCORE_PRIVATE = subset(CWUR_SCORE, CWUR_SCORE$CONTROL == "Private nonprofit")

write.csv(CWUR_SCORE_PUBLIC, file = "~/Documents/BigData_Group4/CWUR_SCORE_PUBLIC.csv")
write.csv(TIMES_SCORE_PUBLIC, file = "~/Documents/BigData_Group4/TIMES_SCORE_PUBLIC.csv")
require(ggplot2)
qplot(TIMES_SCORE$female_male_ratio, TIMES_SCORE$ADM_RATE_ALL)
qplot(CWUR_SCORE$national_rank, CWUR_SCORE$ADM_RATE_ALL)

reg = lm(CWUR_SCORE$ADM_RATE_ALL ~ CWUR_SCORE$world_rank)
plot(CWUR_SCORE$world_rank, CWUR_SCORE$ADM_RATE_ALL)
abline(v = 194, col = "red")
abline(h = 0.7861, col = "red")
abline(reg)

reg = lm(CWUR_SCORE$ADM_RATE_ALL, CWUR_SCORE$national_rank)
plot(CWUR_SCORE$national_rank, CWUR_SCORE$ADM_RATE_ALL)
abline(reg)

reg = lm(CWUR_SCORE$NPT4_PUB ~ CWUR_SCORE$world_rank)
plot(CWUR_SCORE$world_rank, CWUR_SCORE$NPT4_PUB)
abline(reg)

reg = lm(CWUR_SCORE$RET_FT4 ~ CWUR_SCORE$world_rank)
plot(CWUR_SCORE$world_rank, CWUR_SCORE$RET_FT4)
abline(reg)

#CWUR_SCORE$gt_25k_p6 = as.numeric(CWUR_SCORE$gt_25k_p6)
reg = lm(CWUR_SCORE$ACTCM75 ~ CWUR_SCORE$world_rank)
plot(CWUR_SCORE$world_rank, CWUR_SCORE$ACTCM75)
abline(reg)

smoothScatter(CWUR_SCORE$national_rank, CWUR_SCORE$ADM_RATE_ALL)