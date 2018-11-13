# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'
require(lubridate)

#s = as.Date("11/1/2017", "%m/%d/%Y")
#e = as.Date("10/31/2018", "%m/%d/%Y")

holidays = c(
  as.Date("1/1/2018", "%m/%d/%Y"),
  as.Date("1/15/2018", "%m/%d/%Y"),
  as.Date("2/19/2018", "%m/%d/%Y"),
  as.Date("5/28/2018", "%m/%d/%Y"),
  as.Date("7/4/2018", "%m/%d/%Y"),
  as.Date("9/3/2018", "%m/%d/%Y"),
  as.Date("11/23/2017", "%m/%d/%Y"),
  as.Date("12/25/2017", "%m/%d/%Y")
)

net_work_days <- function(startdate,enddate,holidays) {
  result = 0
  for (i in 0:(enddate - startdate)) {
    temp = startdate + i
    if (!(weekdays(temp) %in% c("Saturday", "Sunday")) & !(temp %in% holidays)) {
      result = result + 1
    }
  }
  return(result)
}
