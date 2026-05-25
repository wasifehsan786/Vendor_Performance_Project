# Vendor Performance Analysis
### End-to-End Data Analytics Project | SQL Server · Python · Power BI

---

## Project Overview

A company-standard, end-to-end data analytics project analyzing vendor performance in the retail and wholesale industry. The goal is to identify underperforming brands, evaluate vendor contribution to sales and profit, assess bulk purchasing impact, and provide actionable business recommendations.

**Business Problem:** Companies need to ensure they are not incurring losses due to inefficient pricing, poor inventory turnover, and vendor dependency.

---

## Project Structure

```
Vendor_Performance_Project/
│
├── data/                          # Raw CSV files
│   ├── purchases.csv              # 2,372,474 purchase transactions
│   ├── sales.csv                  # 12,825,363 sales transactions
│   ├── vendor_invoice.csv         # 5,543 invoice records
│   ├── purchase_prices.csv        # 12,261 product price records
│   ├── begin_inventory.csv        # 206,529 opening inventory records
│   ├── end_inventory.csv          # 224,489 closing inventory records
│   └── vendor_sales_summary.csv   # Final aggregated table for Power BI
│
├── notebooks/
│   ├── 01_ingest_db.ipynb         # Load CSVs into SQL Server
│   ├── 02_sql_exploration.ipynb   # SQL EDA and aggregated table creation
│   └── 03_vendor_performance_analysis.ipynb  # Python EDA and Research Questions
│
├── scripts/
│   └── ingest_db.py               # ETL script with logging
│
├── sql/                           # SQL queries used in exploration
│
├── dashboards/                    # Power BI dashboard file (.pbix)
│
├── reports/                       # All charts and visualizations
│   ├── distribution_plots.png
│   ├── correlation_heatmap.png
│   ├── rq1_target_brands.png
│   ├── rq2_top_vendors_brands.png
│   ├── rq3_purchase_contribution.png
│   ├── rq4_bulk_purchasing.png
│   ├── rq5_low_turnover.png
│   ├── rq6_unsold_inventory.png
│   └── rq7_rq8_confidence_hypothesis.png
│
├── logs/                          # Auto-generated log files
│   ├── ingest_db.log
│   ├── sql_exploration.log
│   └── vendor_performance_analysis.log
│
└── README.md
```

---

## Tools & Technologies

| Tool | Purpose |
|------|---------|
| SQL Server (SSMS) | Database storage and SQL exploration |
| Python 3.14 | Data ingestion, EDA, analysis |
| Pandas | Data manipulation and aggregation |
| Matplotlib / Seaborn | Data visualization |
| SQLAlchemy + pyodbc | Database connection |
| Power BI | Interactive dashboard |
| Jupyter Notebook (VS Code) | Analysis environment |

---

## Dataset

- **Source:** Retail and wholesale industry data (2024)
- **Total Records:** 15,846,843 rows across 6 tables
- **Database:** SQL Server (VendorPerformanceDB)
- **Final Analysis Table:** 8,891 rows · 18 columns (after filtering)

---

## Project Workflow

```
Raw CSV Files
     ↓
SQL Server Database (VendorPerformanceDB)
     ↓
SQL Exploration → Aggregated Table (vendor_sales_summary)
     ↓
Python EDA → Research Questions → Visualizations
     ↓
Power BI Dashboard
     ↓
Word Report + PowerPoint Presentation
```

---

## Key Metrics

| Metric | Value |
|--------|-------|
| Total Sales | $448,809,343 |
| Total Purchases | $311,971,646 |
| Gross Profit | $136,837,697 |
| Profit Margin | 30.49% |
| Total Vendors | 119 |
| Unsold Inventory Capital | $3,660,837 |

---

## Research Questions & Findings

**RQ1 — Brands Needing Promotional Adjustments**
- 193 brands identified with low sales (< $577) but high profit margin (> 65%)
- Recommendation: Run promotions, reduce pricing, offer bundle deals

**RQ2 — Top Vendors and Brands by Sales**
- Top Vendor: DIAGEO NORTH AMERICA INC — $67.99M
- Top Brand: Jack Daniels No 7 Black — $7.96M
- Vodka, Whiskey and Rum dominate the top 10 brands

**RQ3 — Vendor Purchase Contribution**
- Top 10 vendors contribute 64.72% of total purchases
- DIAGEO alone accounts for 16.06% — high concentration risk

**RQ4 — Bulk Purchasing Impact on Unit Cost**
- Small orders: $41.38/unit → Large orders: $10.74/unit
- 74% cost reduction from small to large orders confirmed

**RQ5 — Low Inventory Turnover Vendors**
- ALISA CARR BEVERAGES lowest turnover at 0.615
- All flagged vendors significantly below target of 1.0

**RQ6 — Capital Locked in Unsold Inventory**
- $3.66M total unsold capital
- DIAGEO leads with $984.2K in unsold stock

**RQ7 — Confidence Intervals (95%)**
- Top Vendors: 30.89% to 31.74% profit margin
- Low Vendors: 40.65% to 42.74% — low performers have HIGHER margins

**RQ8 — Hypothesis Testing**
- T-Statistic: -17.9851 | P-Value: 0.000000
- REJECT H0 — Significant difference in margins confirmed statistically

---

## Strategic Recommendations

1. Re-evaluate pricing for 193 high-margin, low-sales brands to boost visibility
2. Diversify vendor base to reduce dependency on top 10 vendors (64.72%)
3. Reinforce bulk purchasing strategy — 74% unit cost reduction opportunity
4. Clear $3.66M locked in unsold inventory through clearance sales
5. Improve marketing and distribution for low-performing vendors
6. Negotiate return policies with top vendors to reduce inventory holding risk

---

## How to Run

**1. Clone the repository**
```bash
git clone https://github.com/yourusername/vendor-performance-analysis.git
cd vendor-performance-analysis
```

**2. Create virtual environment**
```bash
py -m venv venv
venv\Scripts\activate
```

**3. Install dependencies**
```bash
pip install pandas sqlalchemy pyodbc matplotlib seaborn scipy
```

**4. Set up SQL Server**
- Create a database named `VendorPerformanceDB` in SSMS
- Update the server name in notebooks if different from `Wasif\SQLExpress`

**5. Run notebooks in order**
```
01_ingest_db.ipynb                       → Load data into SQL Server
02_sql_exploration.ipynb                 → SQL EDA and table creation
03_vendor_performance_analysis.ipynb     → Python analysis
```

**6. Open Power BI dashboard**
- Open `dashboards/` folder and launch the `.pbix` file
- Refresh data connection to your SQL Server

---

## Author

**Wasif Ehsan**    
