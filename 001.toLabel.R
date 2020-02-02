###This function replaces the labelled entries of a vector by the corresponding label while keeping
###the unlabelled values unchanged

toLabel<-function(v){

if (!require(haven)) {
  install.packages("haven")
}
  
library(haven)

aux<-attributes(v)$labels
aux1<-match(v,aux)
aux<-names(aux)[aux1]

return(ifelse(!is.na(aux1),aux,v))

}


