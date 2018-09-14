ABOUT
This an SQL-script for an first analysis of the 2017th questionnaire.
Its main goal is “to get out what is in” without much aggregation (except from counting). 
It can be used to generate quickly first report for the respondents or to get an overview for further analysis

PREREQUISITES
The script was developed and tested using the database system Oracle XE 11. 
As it uses standard SQL, it should run on other database systems as well (modification of data type may be required if the database system does not support the varchar2 type for texts)

PROCEDURE
1) Create the database table RAW_DATA using the SQL script CREATE TABLE RAW_DATA (in Napire_Scripts_DDL.sql)
2) Load the export from excel into the table (e.g. using SQL developer). 
Note: The excel-export must include a header (lfdn, external_lfd, tester, discode, …) and contain texts instead of codes, e.g. “quoted” / “not quoted”
3) Create the view “completed_country” using the SQL script CREATE OR REPLACE VIEW completed_country.
Notes: 
a) In the where-clause, you can specify which country(ies) shall be included in the analysis
b) The view only considers completed questionaires. You can change this by modifying the where clause (where dispcode like ‘%Completed%’)
4) Run the queries in Napire_Scripts_Queries and store the output into a text file (e.g. using SQL developer)
5) Import the text file into excel using , as a delimeter.

REMARK
The scripts were build with care - but are surely not perfect.
In case of any problems or questions please contact andre.schekelmann@hs-niederrhein.de


