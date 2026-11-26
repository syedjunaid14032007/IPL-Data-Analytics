# 🏏 IPL Data Analytics (2008–2024)

## 📌 Project Overview

An end-to-end IPL Data Analytics project focused on exploring and understanding Indian Premier League cricket data from 2008 to 2024.

This project analyzes match results, team performance, player statistics, toss decisions, and season-wise trends using Python, SQL Server, Power BI, and Excel.

The goal is to transform raw cricket data into meaningful insights through data cleaning, exploratory analysis, SQL queries, and interactive dashboards.

## 🛠️ Tools & Technologies

- **Python:** Pandas, NumPy, Matplotlib
- **Database:** Microsoft SQL Server
- **Data Visualization:** Power BI
- **Spreadsheet Analysis:** Microsoft Excel / Google Sheets
- **Environment:** Google Colab

## 🔄 Project Workflow

1. **Data Cleaning & Preprocessing:** Cleaned and prepared IPL datasets using Python.
2. **Exploratory Data Analysis (EDA):** Analyzed team performance, player statistics, and match trends.
3. **SQL Analysis:** Used SQL Server to write queries and extract meaningful insights.
4. **Dashboard Development:** Built interactive dashboards in Power BI to visualize key findings.
5. **Excel Analysis:** Created summary tables, pivot tables, charts, and an IPL summary dashboard.

## 📊 Dataset Overview

The project covers IPL data from 2008 to 2024.

- **Total Matches:** 1,095
- **Seasons Covered:** 17
- **Teams:** 15
- **Data:** Match-level and ball-by-ball delivery records

The cleaned datasets were used throughout the analysis.

**Dataset Note:** The cleaned matches CSV is available in this repository. The cleaned deliveries CSV is stored separately in Google Drive because of its large file size.

## 🔍 Key Insights

- **Most Successful Team:** Mumbai Indians with 144 match wins.
- **Top Run Scorer:** Virat Kohli with 8,014 runs.
- **Most Wickets:** Yuzvendra Chahal with 205 bowler-credited wickets.
- **Highest Individual Score:** Chris Gayle with 175 runs.

## 📈 Power BI Dashboard Previews

### 1. IPL Overview

![IPL Overview](screenshots/IPL_Overview.png)

### 2. Team Performance

![Team Performance](screenshots/Team_Performance.png)

### 3. Player Performance

![Player Performance](screenshots/Player_performance%20(2).png)

## 📁 Project Structure

```text
IPL-Data-Analytics/
│
├── dataset/
│   └── cleaned_matches.csv
│
├── python/
│   ├── IPL_Data_Analysis.ipynb
│   ├── IPL_Data_Cleaning_and_EDA.ipynb
│   ├── team_performance.csv
│   ├── top_batsmen.csv
│   └── top_bowlers.csv
│
├── sql/
│   └── SQL analysis queries
│
├── powerbi/
│   └── IPL_Analysis.pbix
│
├── excel/
│   └── IPL_Excel_Analysis.xlsx
│
├── screenshots/
│   ├── IPL_Overview.png
│   ├── Team_Performance.png
│   └── Player_performance (2).png
│
└── README.md
```

## 🚀 How to Explore the Project

- **Python:** Open the Jupyter notebooks in the `python` folder to explore data cleaning and analysis.
- **SQL:** Explore the SQL queries in the `sql` folder.
- **Power BI:** Open `IPL_Analysis.pbix` to interact with the dashboards.
- **Excel:** Open `IPL_Excel_Analysis.xlsx` to explore the analysis sheets and summary dashboard.

## 🎯 Project Outcome

This project provided practical experience in data cleaning, exploratory data analysis, SQL querying, data visualization, and extracting actionable insights from real-world cricket data.
