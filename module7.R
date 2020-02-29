library(pryr)
library(dbplyr)
#starwars
#otype(starwars)
#using the starwars tibble that is in the dplyr package
#set as a dataframe
#StarWars <-data.frame(starwars)
#otype(StarWars)
#str(StarWars)
#StarWars$name
#StarWars[1:5]

lukeS3 <-list(Name="Luke", Height=172, Mass=77.0, Force_user=T)
c3poS3 <-list(Name="C3PO",Height=167,Mass=75.0,Force_user=F)
lukeS3$Height

isS4(lukeS3)

setClass("person", representation(
  name="character",
  height="numeric",
  mass="numeric",
  force_user="logical")
)
"person"
luke <-new("person",name="Luke",height=172,mass=77.0,force_user=T)
C3PO <-new("person",name="C3PO",height=167,mass=75.0,force_user=F)

isS4(luke)
luke
luke@mass
#luke@hight <-168
#S4 object doesn't allow misspelling
#gives error message below when trying to change the "height":
#Error in (function (cl, name, valueClass)  : 
#'hight' is not a slot in class "person"

isS4(lukeS3)
isS4(c3poS3)
isS4(luke)
isS4(C3PO)

#Everthing below is the experimenting I was doing 
#with the course and text notes and other examples I found
#online
#starwars
#str(starwars)
#print(starwars)
s3 <-list(Name="Bob", Age=99, GPA=3.25)
s3
#s4 <- new("student",name="Bob", age=99, GPA=3.25)
s4 <- list("student",name="Bob", age=99, GPA=3.25)
s4
s4$GPA
#s4@GPA
#slot"GPA":
isS4(s)  
?new()
#s4 <- new('student',name="Bob", age=99, GPA=3.25)
isS4(s3)
class(s) <- "student"
s  
s <- student("Paul", 26, 3.7)
s$GPA
student = function(n,a,g)
  {
  if(g>4 || g< 0) stop("GPA must be between 0 and 4")
  value  = list(name = n, age = a, GPA = g)
  
  attr(value,"class") = "student"
  value
}
s <- student("Paul", 26, 3.7)
s
#s <- student("Paul", 26, 5)
setClass("employee", representation(
  name="character",
  salary="numeric",
  union="logical")
)
"employee"
joe <-new("employee",name="Joe",salary=55000,union=T)
joe
isS4(joe)
#library(pryr)
otype(joe)
?otype
# NOT RUN {
otype(data.frame())
otype(1:10)
# }
otype(s)
otype(student)
typeof(joe)
typeof(s)
typeof(student)
typeof(1:10)
mode(s)
?mode
mode(1:10)
otype(starwars)
isS4(student)
