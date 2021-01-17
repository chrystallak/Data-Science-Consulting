

report.name <- "January 2020 Monthly Report"
monthly.views <- "views -- January 2020.csv"
monthly.transactions <- "transactions -- January 2020.csv"
ending.date <- "2020-01-31"
weekly.report.first.day <- "2020-01-01"
weekly.report.last.day <- "2020-01-07"

params = list(views = monthly.views, dat = monthly.transactions, report.name = report.name,
            ending.date = ending.date, weekly.report.first.day = weekly.report.first.day,
            weekly.report.last.day =  weekly.report.last.day)


the.year <- lubridate::year(ending.date)
the.month <- lubridate::month(ending.date)
out.path <- sprintf("../Reports/Monthly Reports/%s/%s", the.year, the.month)
print(out.path)
dir.create(path = out.path, showWarnings = F, recursive = T)


render(input = "Report.Rmd", output_file = sprintf("%s/%s", out.path, report.name), params = params)