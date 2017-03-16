library(shiny)
library(datasets)
data(mtcars)
library(rafalib)
library(ggdendro)
shinyUI(fluidPage(
  
  titlePanel(HTML("<h1>Hierarchical clustering on mtcars</h1>")),
  
  sidebarLayout(
    sidebarPanel(
     tabsetPanel(
       # First tab (Instruction)
       tabPanel("Documentation",
                HTML("<br/>
<b>Instruction</b><br/>
This app make a hierarchical clustering on the mtcars dataset.<br/>
In the input tab, you can choose how many groups the app will split the data, and which variables and which cars will be used for the clustering.<br/>
On the right, the cluster and the dendrogram will update at every change.<br/>
By default all the cars and all the variables are selected, and the number of groups are set to 4.<br/>
<br/><b>Data</b><br/>
The mtcars data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models).<br/>
The variables are:<br/>
<ul>
  <li><i>mpg</i> - Miles/(US) gallon</li>
  <li><i>cyl</i> - Number of cylinders</li>
  <li><i>disp</i> - Displacement (cu.in.)</li>
  <li><i>hp</i> - Gross horsepower</li>
  <li><i>drat</i> - Rear axle ratio</li>
  <li><i>wt</i> - Weight (1000 lbs)</li>
  <li><i>qsec</i> - 1/4 mile time</li>
  <li><i>vs</i> - V/S</li>
  <li><i>am</i> - Transmission (0 = automatic, 1 = manual)</li>
  <li><i>gear</i> - Number of forward gears</li>
  <li><i>carb</i> - Number of carburetors</li>
</ul>
                     ")),
       # Second tab (input)
       tabPanel("Input",
        numericInput("GrNum", HTML("<br/>Number of groups (max 32)"), 
                     value = 4, min = 1, max = 32, step = 1),
        checkboxGroupInput("VarClus","Variables used for clustering"
                          ,colnames(mtcars),selected = colnames(mtcars), inline = TRUE),
        checkboxGroupInput("auto", "Cars used for clustering", 
                           rownames(mtcars[order(row.names(mtcars)), ]),selected = rownames(mtcars), inline = FALSE, 
                           width = NULL)
       )

     )
      
    ,width=4
    ),
    
    mainPanel(
      h3("Cluster"),
      htmlOutput("group"),
      h3("Dendrogram"),
      plotOutput("clust")
      )
  )
))
      