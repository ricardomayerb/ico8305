library (MASS)
library (colorspace)

thisdata <- painters

school = painters$School
school.freq = table(school)
barplot(school.freq, col=rainbow_hcl(nrow(school.freq)))
title(main = "Painters by School", font.main = 4)


school.relative_freq = school.freq / nrow(painters)


barplot(school.relative_freq, col=rainbow_hcl(nrow(school.relative_freq)))
title(main = "Relative Frequency Painters by School", font.main = 4)

pie(school.freq, col=rainbow_hcl(nrow(school.relative_freq)))
title(main = "Painters by School", font.main = 4)