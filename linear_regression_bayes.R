### Linear Regression via Bayes, Three Ways

# Load packages, installing if necessary
ipak <- function(pkg){
    new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
    if (length(new.pkg)) 
        install.packages(new.pkg, dependencies = TRUE)
    sapply(pkg, require, character.only = TRUE)
}

packages <- c("ggplot2", "RCurl", "MCMCpack", "arm")
ipak(packages)

# Once again with the state registration deadlines: first load the data
states <- read.csv(text = getURL("https://raw2.github.com/fsolt/POLI5003/master/statereg.csv"))

# Do states with more income inequality have earlier registration deadlines?  Classical inference.
m1 <- lm(regdays ~ stategini + stdiversity + over64 + college + stincpc +
             south, data=states)

summary(m1)



m1.mcmc <- MCMCregress(regdays ~ stategini + stdiversity + over64 + college + stincpc +
                      south, data=states)

summary(m1.mcmc)

plot(m1.mcmc)

