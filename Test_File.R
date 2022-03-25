### https://yaojenkuo.io/build_r_package/build_r_package_tutorial_basic

packages_to_use <- c("devtools", "roxygen2")
install.packages(packages_to_use)
lapply(packages_to_use, library, character.only = TRUE)

##
# setwd("~") # 我們想將套件放在 /~ 的路徑下
# create("TestMakePackage")

# create(here::here("TestMakePackage")) # 我們的套件名稱叫做 TestMakePackage

#create(paste0(getwd(),"/TestMakePackage"))
create(getwd())

##
#setwd("./TestMakePackage") # 切換至套件資料夾下
dir() # 可以看到有三個檔案，一個資料夾


##
#setwd(paste0(getwd(),"/R")) # 切換至 ~/TestMakePackage/R 資料夾下
setwd("./R") # 切換至 ~/TestMakePackage/R 資料夾下

file.create("median_function.R") # 建立一個檔案

############
#' #' A Self-made Median Function
#' #'
#' #' This function allows you to calculate the median from a numeric vector.
#' #' @param x A numeric vector.
#' #' @keywords median
#' #' @export
#' #' @examples
#' #' median_function(seq(1:10))
#'
#' median_function <- function(x) {
#'   x_sorted <- sort(x)
#'   if (length(x) %% 2 == 1) {
#'     return(x_sorted[(length(x) + 1) / 2])
#'   } else {
#'     return((x_sorted[length(x) / 2] + x_sorted[(length(x) / 2) + 1]) / 2)
#'   }
#' }
############

##
# setwd("~/TestMakePackage")
# roxygenize()

setwd("../")
getwd()
roxygenize()

##
# setwd("~/TestMakePackage/man")
setwd("./man")
dir()


##
# setwd("~")
# ## install("TestMakePackage") # 這裡我們不使用 install.packages 因為我們的套件並沒有發佈到 CRAN
# library(TestMakePackage)
#
# ?median_function # 你可以在本機呼叫出剛才編寫的說明文件
# median_function(seq(1:10))

setwd("../")
getwd()
library(TestMakePackage)
?median_function # 你可以在本機呼叫出剛才編寫的說明文件
median_function(seq(1:10))

#########
library("devtools")
install_github("Charlene717/Test_Make_Package")

library("TestMakePackage")
