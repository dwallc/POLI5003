###  Classical Linear Regression, Assumptions, and Violations (Part 2)

# What are the most important assumptions of the linear regression model?
# And how do we diagnose violations and correct problems?  

# 1. VALIDITY!
# The single most important issue encountered in doing regression analysis regards
# validity: the fit between the measures employed and the concepts that one seeks
# to investigate.  This is frequently skipped over in discussions of
# methods because problems of validity are often difficult to overcome.
# Nevertheless, the quality of your data should be your foremost concern (Gelman
# and Hill 2007, 45-46).

# 2. ADDITIVITY and LINEARITY
# Recall that the regression model is of the form y = XB + e. It assumes that the
# DV is appropriately modeled as a linear function of the IVs--that any
# similarly-sized change in an IV predicts the same amount of change in the DV.
# One should consider theoretical reasons this may not be so (e.g., one might 
# expect 30-year-olds to participate in politics more than 20-year-olds, but 
# 80-year-olds to participate *less* than 70-year-olds).  We can also check
# the additivity assumption empirically.

m1 <- lm(prestige ~ education + income + type, data=Prestige)
summary(m1)

residualPlots(m1)
# This function returns, first, a lack-of-fit test for each numerical predictor.
# These indicate the p-value of the square of that predictor if it were added
# to the model (Fox and Weisberg 2011, 288-89).  A *lack* of a statistically 
# significant value, then, indicates the assumption is not violated.  The
# function also produces a plot of the residuals--the difference, for each
# observation between the the actual value of the DV





