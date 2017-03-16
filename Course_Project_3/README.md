## Developing Data Product Course Project 3: hierarchical clustering on mtcars

This is the second project of the course.

You can see the presentation published at this link:
[LINK]

### Course Project Instruction

- Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.
- Deploy the application on Rstudio's shiny server  
- Share the application link by pasting it into the provided text box  
- Share your server.R and ui.R code on github  
The application must include the following:
- Some form of input (widget: textbox, radio button, checkbox, ...)
- Some operation on the ui input in sever.R
- Some reactive output displayed as a result of server calculations
- You must also include enough documentation so that a novice user could use your application.
- The documentation should be at the Shiny website itself. Do not post to an external link.


### My project

“Hierarchical clustering on mtcars” is my app for the third Course Project of the Developing Data Product Course, part of the Data Science Specialization by Johns Hopkins University on Coursera.  
The app allow to perform a hierarchical clustering on the mtcars data.
The user can choose what cars and what variables will be part of the analysis, and in how many group the cars will be splitted.  


### The Data

The mtcars data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models).
The variables are:
- mpg: Miles/(US) gallon
- cyl: Number of cylinders
- disp: Displacement (cu.in.)
- hp: Gross horsepower
- drat: Rear axle ratio
- wt: Weight (1000 lbs)
- qsec: ¼ mile time
- vs: V/S
- am: Transmission (0 = automatic, 1 = manual)
- gear: Number of forward gears
- carb: Number of carburetors


### App use

In the left part of the webpage, you have two tab:
The documentation tab show the instruction for the app use and a description of the data.
In the input tab, you can choose how many groups the app will split the data, and which variables and which cars will be used for the clustering.
On the right, the cluster and the dendrogram will update at every change.
By default all the cars and all the variables are selected, and the number of groups is set to 4.
