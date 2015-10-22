# this file is here to pull table from html for fun 
library(XML)
theurl <- "https://en.wikipedia.org/wiki/Brazil_national_football_team"
tables <- readHTMLTable(theurl)
n.rows <- unlist(lapply(tables, function(t) dim(t)[1]))

# not  working find the error
library(XML)
 url <- "https://en.wikipedia.org/wiki/World_population"
 tbls <- readHTMLTable(url)
 tbls
 #reading the table
 library(RCurl)
 library(XML)
 
 # Download page using RCurl
 # You may need to set proxy details, etc.,  in the call to getURL
 theurl <- "http://en.wikipedia.org/wiki/Brazil_national_football_team"
 webpage <- getURL(theurl)
 # Process escape characters
 webpage <- readLines(tc <- textConnection(webpage)); close(tc)
 
 # Parse the html tree, ignoring errors on the page
 pagetree <- htmlTreeParse(webpage, error=function(...){})
 
 # Navigate your way through the tree. It may be possible to do this more efficiently using getNodeSet
 body <- pagetree$children$html$children$body 
 divbodyContent <- body$children$div$children[[1]]$children$div$children[[4]]
 tables <- divbodyContent$children[names(divbodyContent)=="table"]
 
 #In this case, the required table is the only one with class "wikitable sortable"  
 tableclasses <- sapply(tables, function(x) x$attributes["class"])
 thetable  <- tables[which(tableclasses=="wikitable sortable")]$table
 
 #Get columns headers
 headers <- thetable$children[[1]]$children
 columnnames <- unname(sapply(headers, function(x) x$children$text$value))
 
 # Get rows from table
 content <- c()
 for(i in 2:length(thetable$children))
 {
   tablerow <- thetable$children[[i]]$children
   opponent <- tablerow[[1]]$children[[2]]$children$text$value
   others <- unname(sapply(tablerow[-1], function(x) x$children$text$value)) 
   content <- rbind(content, c(opponent, others))
 }
 
 # Convert to data frame
 colnames(content) <- columnnames
 as.data.frame(content)
 content

 data()
 cities<- us.cities
 str(cities)
 cities<- rbind(cities,data.frame(name="abc",country.etc="ABC",pop=456322,lat=33.5,long=-99.6,capital=0))
 nrow(cities)
 cities[[1]]
 head(cities)
 tail(cities)
 head(cities[1])
 head(cities[c(1,3,4)])
 head(cities[,1])
 cities[,1]
 head(cities[,c(1,3,4)])
 citi16<- subset(cities[1:25,])
 citi16[1]
citi16[c(1,3)]
citi16[[1]]
citi16[1]
citi16[,c(1,3)]
citi16["pop"]
citi16[,"lat"]
library(MASS)
str(Cars93)
car3<- subset(Cars93,select = Model,subset=(MPG.city >30))
car3
car31<-subset(Cars93, Cars93$Model== "Swift",MPG.city> 30)
car31
cars41<- subset(Cars93,select = c(Model,Min.Price,Max.Price),subset = (Cylinders==4 &Origin=="USA"))
cars41
cars42<- subset(Cars93,select = c(Manufacturer,Model),subset = (MPG.highway > median(MPG.highway)) )
cars42
# changing the data frame wel its called editing proceed with caution 
temp<- edit(Cars93)
carsedited<- temp
fix(Cars93)

? edit
t<- edit()