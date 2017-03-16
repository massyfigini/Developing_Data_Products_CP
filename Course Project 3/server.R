library(shiny)
library(datasets)
data(mtcars)
library(ggdendro)
shinyServer(function(input, output) {
output$clust <- renderPlot({
  # distances matrix
  dscars <- dist(mtcars[input$auto,input$VarClus])
  # clustering
  hc <- hclust(dscars)
  # dendrogram
  ggdendrogram(hc, theme_dendro = FALSE)
})
output$group <- renderPrint({
  # distances matrix
  dscars <- dist(mtcars[input$auto,input$VarClus])
  # clustering
  hc <- hclust(dscars)
  # cut the tree
  n <- input$GrNum
  tree <- cutree(hc, k=n)
  result <- vector("list",n)
  for (group in 1:n){
    x <- subset(mtcars[input$auto,input$VarClus], tree==group)
    result[[group]] = rownames(x)
  }
  for (group in 1:n){
    HTML(cat("<b>","Group ",group,": ","</b>","<br/>"))
    HTML(cat(result[[group]],"<br/>","<br/>"))
  }
})
})