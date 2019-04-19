#install.packages("tidyverse")
library(tidyverse)

# load the data, need to check if this needs to be changed before submitting
climate_exp <- read_csv('C:/Users/archa/Documents/Archana/DSP_539/assignment_3/climate_spending.csv')
energy_exp <- read_csv('C:/Users/archa/Documents/Archana/DSP_539/assignment_3/energy_spending.csv') 

#some plots
ggplot(climate_exp,aes(x = year, y = gcc_spending, color = department)) + 
  geom_line()

# Order the legend
ordered_legend_clim <- filter(climate_exp,year == max(year)) %>% arrange(desc(gcc_spending)) %>%
  pull(department)
ggplot(climate_exp,aes(x = year, gcc_spending, color=department)) +
  geom_line(size = 1) + scale_color_discrete(breaks = ordered_legend_clim, name = "Department") +
  labs(title = "Climate Spending over the years",y = "Gcc Spending", x  = "Year")

    
    
    
    
    
    
  
    
    
    
    
  
  
  
  
  
  
  