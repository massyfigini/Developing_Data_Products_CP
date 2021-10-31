### Developing Data Product Course Project 1: map of Monza and Brianza results of the 2016 Italian referendum

This is the first project of the course.

You can see the result published at this link:
https://massyfigini.github.io/assets/Referendum_Course_Project_1.html

*Course Project Instruction: Create a web page using R Markdown that features a map created with Leaflet.*  

The map shows the results of the last Italian constitutional referendum (4 December 2016) in the municipality of my province, Monza and Brianza (Lombardy).  

**Data Information**  
Each record is a municipality of the province.The columns are:  
*denominazione*: name.  
*latitudine*: latitude.  
*longitudine*: longitude.  
*ELETTORI*: potential voters for the referendum.  
*VOTANTI*: voters for the referendum.  
*NUMVOTISI*: number of YES voters.  
*NUMVOTINO*: number of NO voters.

**Map design**  
*Circles colors*: red for the municipality where NO won (over 50% of valid vote was NO), green where YES won.  
*Circles dimension*: proportional to the number of voters.  
*Circles opacity*: based on election turnout (voters percentage).  
*Circles label*: name of municipality (when step on it).  
*Circles popup*: results of referendum for the municipality (when click on it) 
