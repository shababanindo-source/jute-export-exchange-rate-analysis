# Exchange Rate Fluctuations and Bangladesh's Jute Exports

Research and analysis project testing whether exchange rate movements drive the export volume of Bangladesh's jute industry, using multiple regression in Stata on 15 years of annual data (FY2010–11 to FY2024–25). Completed as a team project.

## Research question
Does depreciation of the Bangladeshi Taka increase jute export volumes, after controlling for export value, jute's share of total exports, global jute prices, inflation and interest rates?

## Data
| Variable | Description | Source |
|---|---|---|
| Export volume | Yearly jute exports (tonnes/bales) | Export Promotion Bureau, Bangladesh Bureau of Statistics |
| Export value | Yearly jute exports (USD) | Export Promotion Bureau |
| Jute share of total exports | Jute exports as % of total exports | Export Promotion Bureau |
| Exchange rate | BDT per USD (scaled ÷100) | Bangladesh Bank, FRED |
| Global jute price | USD per tonne | FAO, UN Comtrade |
| Inflation rate | Annual inflation | World Bank |
| Interest rate | Repo / reverse repo rate | Bangladesh Bank |
| Export subsidy | Dummy (1 = subsidy in place) | — |

## Method
1. Descriptive statistics for all variables.
2. Correlation analysis between export volume and its potential drivers.
3. Multiple linear regression:

   `Export Volume = β0 + β1·Exchange Rate + β2·Export Value + β3·Jute Share + β4·Global Jute Price + β5·Inflation + β6·Interest Rate + ε`

## Key findings
- The model explains **88% of the variation** in jute export volume (R² = 0.884, adjusted R² = 0.797) and is jointly significant (F(6, 8) = 10.14, p = 0.002).
- **Exchange rate:** negative but **not significant** (p = 0.31) — a weaker Taka did not reliably boost export volumes, contrary to standard trade theory.
- **Jute's share of total exports** is the variable most strongly correlated with export volume (r = 0.86); export value (p = 0.11) and inflation (p = 0.12) are positive but not significant at 5%.
- Global jute price and interest rate show no significant effect.
- The export subsidy dummy was constant (always 1), so Stata omitted it from the regression.
- **Takeaway:** jute export volumes appear driven more by demand and the sector's structural decline than by currency movements. With only 15 annual observations, results should be read as indicative.

## Tools
Stata · Multiple regression · Correlation analysis · Descriptive statistics

## Repository contents
| File | Description |
|---|---|
| `analysis.do` | Stata commands: descriptive statistics, regression, correlation, scatter plot |
| `stata_output.txt` | Stata output for all analyses |
| `jute_export_data.xlsx` | Dataset (15 years, FY2010–11 to FY2024–25) |
| `jute_export_data.dta` | Same dataset in Stata format |

## Author
**Shabab Tousif Aman** — Master of Business Analytics, Adelaide University
