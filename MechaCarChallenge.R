library(dplyr)
mc_mpg_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,mc_mpg_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,mc_mpg_df))

coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F)
total_summary <- coil_table %>% summarize(Mean=mean(PSI),
                                  Median=median(PSI),
                                  Variance=var(PSI),
                                  SD=sd(PSI))
lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                 Median=median(PSI),
                                                                 Variance=var(PSI),
                                                                 SD=sd(PSI))

t.test(subset(coil_table,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
t.test(subset(coil_table,Manufacturing_Lot=="Lot2")$PSI,mu=1500)
t.test(subset(coil_table,Manufacturing_Lot=="Lot3")$PSI,mu=1500)