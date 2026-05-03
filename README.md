# Bright-Coffee-Shop-Sonia-Reports
## 1. Problem Statement

Bright Coffee Shop operates three locations across three stores  (Hell's Kitchen, Astoria, and Lower Manhattan) and has recently appointed a new CEO tasked with growing revenue and improving product performance. Despite having six months of transactional data available, the business lacked a structured analytical view of its sales performance. There was no clear visibility into which products were driving revenue, which times of day were most profitable, how sales trended over time, or where operational and marketing opportunities existed. Without these insights, strategic decision-making remained largely intuitive rather than data-driven.

---

## 2. Aim of the Project

The aim of this project was to analyse Bright Coffee Shop's historical sales data (January to June 2023) to surface actionable insights that would directly support the new CEO in making informed decisions to grow revenue and improve product performance across all store locations.

---

## 3. Objectives — Steps Taken to Solve for the Aim

The following steps were taken to achieve the project aim:

**Step 1 — Data acquisition and understanding**
The dataset (`Coffee_shop_analysis.xlsx`) was loaded and inspected to understand its structure, dimensions, and column definitions. The dataset contained 63,796 transaction records across 14 fields including purchase date, day name, month name, time bucket, store location, product category, product detail, and revenue per day.

**Step 2 — Data exploration and profiling**
Key fields were profiled to identify unique values, data types, and distributions. This included examining store locations (3 stores), product categories (9 categories), time buckets (Morning, Afternoon, Evening), day classifications (Weekday vs Weekend), and spend buckets (Low, Medium, High). No significant data quality issues were identified.

**Step 3 — Revenue analysis by product category**
Total revenue was aggregated by product category to determine which categories contributed most to overall business performance. Percentage share of revenue was calculated for each category to understand relative importance.

**Step 4 — Time-of-day performance analysis**
Revenue and transaction counts were grouped by time bucket (Morning, Afternoon, Evening) to identify peak and off-peak trading periods. Average spend per transaction was also computed per time bucket to understand customer spending behaviour across the day.

**Step 5 — Monthly trend analysis**
Revenue was aggregated by month across the six-month period (January–June 2023) to identify growth trends, seasonal patterns, and momentum heading into the second half of the year.

**Step 6 — Store location comparison**
Revenue was compared across the three store locations to assess whether performance was balanced or whether specific stores were under- or over-performing relative to peers.

**Step 7 — Top product identification**
Individual product-level revenue was ranked to identify the top-performing SKUs, enabling targeted product strategy decisions around promotion, upselling, and ranging.

**Step 8 — Weekday vs weekend analysis**
Revenue was split between weekday and weekend trading days to understand the degree of weekend dependency and highlight opportunities for weekend revenue activation.

**Step 9 — Data visualisation and dashboard creation**
All findings were compiled into an interactive analytical dashboard presenting metric cards, bar charts, line charts, doughnut charts, and strategic recommendation panels to communicate insights clearly to business stakeholders.

---

## 4. Summary of Results

| Metric | Result |
|---|---|
| Total revenue (Jan–Jun 2023) | $698,812 |
| Total transactions | 63,796 |
| Top revenue category | Coffee (38.6% — $269,952) |
| Second revenue category | Tea (28.1% — $196,406) |
| Peak trading period | Morning (55.6% of revenue — $388,289) |
| Highest avg. spend per transaction | Morning ($14.02) |
| Lowest avg. spend per transaction | Evening ($7.24) |
| Best performing month | June ($166,486) |
| Weakest month | February ($76,145) |
| Revenue growth (Jan to Jun) | +103.8% |
| Top-selling product | Sustainably Grown Organic Lg ($21,152) |
| Store revenue — Hell's Kitchen | $236,511 |
| Store revenue — Astoria | $232,244 |
| Store revenue — Lower Manhattan | $230,057 |
| Weekday vs weekend split | 72.1% weekday / 27.9% weekend |

**Key findings:**

- Coffee is the dominant revenue driver but Tea is a strong and growing second category, suggesting a diversified customer base.
- Morning is disproportionately important — it generates over half of all revenue and commands the highest average transaction value.
- Revenue grew consistently month-on-month from March through June, with June reaching more than double January's revenue — indicating strong business momentum.
- All three store locations perform within 3% of one another, demonstrating operational consistency and a scalable model.
- Evening trading is materially underutilised, presenting a clear opportunity to grow basket size through targeted promotions.
- Weekend revenue at 27.9% of the total is a structural gap that weekend-specific activations could address.



