* Impact of Exchange Rate Fluctuations on Bangladesh's Jute Export Volume
* Annual data, FY2010-11 to FY2024-25 (15 observations)

import excel "jute_export_data.xlsx", sheet("Sheet1") firstrow clear

* 1. Descriptive statistics
summarize ExportVolumetonbales ExportValueUSD JuteShareofTotalExports ExchangeRateBDTUSD GlobalJutePriceUSDtonne InflationRateBDT InterestRateBDT ExportSubsidy
summarize, detail

* 2. Multiple regression: determinants of jute export volume
reg ExportVolumetonbales ExportValueUSD JuteShareofTotalExports ExchangeRateBDTUSD GlobalJutePriceUSDtonne InflationRateBDT InterestRateBDT ExportSubsidy

* 3. Correlation matrix
correlate ExportVolumetonbales JuteShareofTotalExports ExchangeRateBDTUSD GlobalJutePriceUSDtonne InflationRateBDT InterestRateBDT ExportSubsidy

* 4. Export volume vs interest rate with fitted line
twoway (scatter ExportVolumetonbales InterestRateBDT) (lfit ExportVolumetonbales InterestRateBDT)
