# Cricket-Analytics-using-Snowflake

## What is the main objective or purpose of the project?
The objective of the project was to build an end end data engineering project to analyse cricket data using Snowflake. 
The project includes the ingestion of data from JSON files, processing it through various layers, and building a consumption layer for analytics. The analytics results can be visualized in a dashboard using Snowsight.

## The project is organized 4 major layers:
1. Raw Layer: The initial landing layer where raw data in JSON format is stored. Used Json Cracker tool to visualize our deeply nested Jsons to understand their structure. Created internal Stage and Json File Format to store our Json files in Snowflake.

<img width="511" alt="JsonCrackDemo" src="https://github.com/user-attachments/assets/f4fe6cac-722e-4d4b-98c6-ce2116d9d9fd">

* This layer stores the ingested data without any transformation. It includes tasks to load data from JSON files into Snowflake tables.
ingested our data in a Raw Format to MATCH_RAW_TABLE Table:

<img width="752" alt="MATCH_RAW_TABLE" src="https://github.com/user-attachments/assets/4c207563-6ef0-4a04-9e45-20aa5a2b91e4">

2. Clean Layer: The clean layer is responsible for cleaning and transforming the raw data. It includes tasks to create clean tables that are more suitable for analysis.
   * Created Three Tables in Clean Schema (Layer): Concerning Player , Match_detail , Delivery Table.
     <img width="764" alt="Clean_Layer" src="https://github.com/user-attachments/assets/59b9052f-1cf4-428d-a0ec-3a73c5e69cf6">
   * Consumption Layer: The consumption layer is designed for analytics and reporting. It includes the final tables and views that are used for creating dashboards.
   * Use Data Modeling to build our Datawarehouse Facts and dimensions.
     ![Data Modeling](https://github.com/user-attachments/assets/14d212e9-41b9-46db-9ec2-7875c89d290d)
     
4. Consumption Layer:
5. BI Layer:
   Dashboard: The dashboard layer utilizes Snowsight to visualize the analytics results. It can be accessed for insightful data analysis and reporting.
   * Link to my Snowflake Dashboard: https://app.snowflake.com/zqygjzz/zz51218/#/cricket_analysis-d3Ib1PNEw
   * ![image](https://github.com/user-attachments/assets/ea40a56f-5610-4796-b5e7-48b777e6174c)


  
