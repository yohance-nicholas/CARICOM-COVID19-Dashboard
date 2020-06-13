library(knitr)
a <- summarise(by_income, mean(confirmed_per_100k), mean(mortality_rate), mean(recovery_rate))
b <- summarise(by_economy_type, mean(confirmed_per_100k), mean(mortality_rate), mean(recovery_rate))
c <- summarise(by_oecs, mean(confirmed_per_100k), mean(mortality_rate), mean(recovery_rate))
  
abc <- inner_join(a,b,c)

  kable(summarise(by_income, mean(confirmed_per_100k), mean(mortality_rate), mean(recovery_rate)))
kable(summarise(by_economy_type, mean(confirmed_per_100k), mean(mortality_rate), mean(recovery_rate)))
kable(summarise(by_oecs, mean(confirmed_per_100k), mean(mortality_rate), mean(recovery_rate)))