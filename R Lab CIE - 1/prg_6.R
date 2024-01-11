library(forecast)

sales_data<-data.frame(
  Month = seq(as.Date("2023-01-01"),as.Date("2023-06-01"),by="months"),
  Sales = c(12000,15000,18000,16000,20000,22000)
  
)

print(sales_data)
cat("\n")
print(sales_data$Month)
print(sales_data$Sales)
cat("\n")

sales_ts<-ts(sales_data$Sales,frequency = 12)
print(sales_ts)
cat("\n")

arima_model<- auto.arima(sales_ts)

#forecast sales for next 3 months

forecast_results<-forecast(arima_model,h=3)

print(forecast_results)
plot(forecast_results)