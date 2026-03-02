# S3 Object
student <- list(name = "Naomi", age = 29, GPA = 3.5)
class(student) <- "student"
student
# S4 Object
setClass("student",
         slots = list(
           name = "character",
           age = "numeric",
           GPA = "numeric"
         ))

s4_student <- new("student", name = "Naomi", age = 29, GPA = 3.5)
s4_student