Exam Tool Player Instructions

These instructions assume that you have NetBeans 7.4 installed and that you have imported the ExamToolPlayer folder as
a NetBeans project.

The name of our persistence unit is jdbc/wap_a3.

Setup Instructions:

1. In the NetBeans Services tab expand the Databases tab and right click Java DB.
2. Select create database.
3. Name the database wap_a3, set the username and password to app, and click OK.

Now that the database has been created you are ready to create tables and populate it

4. Under the NetBeans Projects tab double-click the Exam Tool Player project.
5. Expand the Sources Packages node and open package named sql. This package contains all of the scripts for our database.

Running the scripts

6. Right-click javadb_create_ETP and select run.
7. A dialog will appear requesting the database connection to run the script on. Select jdbc/wap_a3. This runs the script and
creates all of the tables within the database.
8. Right-click javadb_insert_ETP and select run.
9. A dialog will appear requesting the database connection to run the script on. Select jdbc/wap_a3. This script inserts all of
information into the database.

Deploying and Running Exam Tool Player

10. Right-click on the ExamToolPlayer project and select run. Congratulations! You have successfully setup our Exam Tool Player.


Removing information from the database

1. Expand the Sources Packages node and open package named sql. This package contains all of the scripts for our database.
2. Right-click javadb_delete_ETP and select run.
3. A dialog will appear requesting the database connection to run the script on. Select jdbc/wap_a3. This runs the script and
deletes all of the information within the tables.
4. Right-click javadb_drop_ETP and select run.
5. A dialog will appear requesting the database connection to run the script on. Select jdbc/wap_a3. This script drops all of
tables from the database.

