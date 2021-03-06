#
#
#
#
#
#
#
#
#
# read csv
ment.and.sub <- read.csv("prevalence-by-mental-and-substance-use-disorder.csv",
                         header = TRUE, sep = ",",stringsAsFactors = FALSE)
#
?read.csv


country.num <- unique(ment.and.sub$Entity)
country.num


# to find the rows that are world
world.rows <- which(ment.and.sub$Entity == "World")
world.rows


# to remove the rows that are world
new.ment.and.sub <- ment.and.sub[-c(world.rows),]
new.ment.and.sub
world.rows.gone <- which(new.ment.and.sub$Entity == "World")
world.rows.gone

# now lets look at the other things we don't want
rm.ent <- unique(new.ment.and.sub$Entity)
rm.ent

# to remove the rest of things we don't want

dont.want <- c("Andean Latin America", "Central Asia", "Central Europe", 
               "Central Europe, Eastern Europe, and Central Asia", 
               "Central Latin America", "Central Sub-Saharan Africa", 
               "Eastern Europe", "Eastern Sub-Saharan Africa", "High SDI", 
               "High-income", "High-income Asia Pacific", "High-middle SDI", 
               "Latin America and Caribbean", "Low SDI", "Low-middle SDI", 
               "Middle SDI", "North Africa and Middle East", "North America", 
               "Oceania", "South Asia", "Southeast Asia", 
               "Southeast Asia, East Asia, and Oceania", 
               "Southern Latin America", "Southern Sub-Saharan Africa",
               "Sub-Saharan Africa", "Tropical Latin America", 
               "United Kingdom", "Western Europe", "Western Sub-Saharan Africa")

dont.want
length(dont.want)

# --- freestyle coding -----
# data frame new.ment.and.sub
str(new.ment.and.sub)

# make copy called d.t
d.t <- new.ment.and.sub

# let's go through Entity and exclude all entries in dont.want
for(i in 1:length(dont.want)){
  
  #i <- 1
  print(i)
  print(paste("exclude ", dont.want[i], sep = ""))
  # temprary data set
  # which( d.t$Entity == dont.want[i]) # where are the specific names
  print(paste ("how many entries: ", length(which(d.t$Entity == dont.want[i])), 
                                           sep = ""))
  
  d.t <- d.t[d.t$Entity != dont.want[i],]
  # (d.t$Entity == dont.want[i])
  #print(length(which(d.t$Entity == dont.want[i])))
  print(paste ("how many entries after: ", length(which(d.t$Entity == dont.want[i])), 
               sep = ""))
}

# go and check if it is indeed gone
unique(d.t$Entity)

# make a loop to subset per country
head(d.t)

d.tt <- d.t[d.t$Year == "2017",]
d.tt$Year

head(d.tt)

# extra challeng -> for each country get regression coeeficient between two 
# disorders and plot them against something... #ME like country GDP


# -------

#



for(i in 1:length(dont.want)){
  if(new.ment.and.sub$Entity == dont.want[i]){
    store.result <- which(new.ment.and.sub$Entity == dont.want[i])
  }
}
warnings()
store.result

last <- which(new.ment.and.sub$Entity == "Western Sub-Saharan Africa")
last


sdis <- which
sdifind <- find(SDI, mode = "any", numeric = FALSE, simple.words = TRUE )
?which

# we want to remove everything 

### lets try deleting afghanistan
# test.rows <- which(ment.and.sub$Entity == "Afghanistan")
# test.rows
# 
# test.ment.and.sub <- ment.and.sub[-c(test.rows),]
# head(test.ment.and.sub)
# 
# test.ment.and.sub
# 
# new.ment.and.sub


##

storage.r <- rep(na,)


# clean 






# getting rid of rows
# kick.out <-  c(33,5,420)
# ment.and.sub <- -kick.out

#
#
#
#
#
#
