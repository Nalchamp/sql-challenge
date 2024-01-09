# Background

It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

## Data Modeling

Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables.
![Pewlett_Hacakrd-ERD](https://github.com/Nalchamp/sql-challenge/assets/145158606/c2c7aa28-245d-401f-80a6-b403bb389557)


## Data Engineering

Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:

Specify the data types, primary keys, foreign keys, and other constraints.

Import each CSV file into its corresponding SQL table.

## Data Analysis

### List the employee number, last name, first name, sex, and salary of each employee.
<img width="1705" alt="1" src="https://github.com/Nalchamp/sql-challenge/assets/145158606/6b3dc481-4e8a-47d6-9037-7ce1f37e29b8">

### List the first name, last name, and hire date for the employees who were hired in 1986.
<img width="1710" alt="Screenshot 2024-01-07 at 9 36 19 PM" src="https://github.com/Nalchamp/sql-challenge/assets/145158606/2e0b0535-d0a5-457d-907a-7ea53fcba7ec">

### List the manager of each department along with their department number, department name, employee number, last name, and first name.
<img width="1710" alt="Screenshot 2024-01-07 at 9 37 29 PM" src="https://github.com/Nalchamp/sql-challenge/assets/145158606/66f5cfb3-c2c8-4dde-9a43-624ddd09c2e6">

### List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
<img width="1710" alt="Screenshot 2024-01-07 at 9 38 14 PM" src="https://github.com/Nalchamp/sql-challenge/assets/145158606/ff4debe0-aa9d-423f-a4f7-98c943e17163">

### List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
<img width="1710" alt="Screenshot 2024-01-07 at 9 39 01 PM" src="https://github.com/Nalchamp/sql-challenge/assets/145158606/0e1d7b24-d289-48b0-b370-96eac512f889">

List each employee in the Sales department, including their employee number, last name, and first name.
<img width="1710" alt="Screenshot 2024-01-07 at 9 40 11 PM" src="https://github.com/Nalchamp/sql-challenge/assets/145158606/080e46ff-67e5-48aa-8e66-7efd49a38635">

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
<img width="1710" alt="Screenshot 2024-01-07 at 9 41 26 PM" src="https://github.com/Nalchamp/sql-challenge/assets/145158606/d1da2903-2052-4112-9647-6f98c8d49e79">

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
<img width="1710" alt="Screenshot 2024-01-07 at 9 42 10 PM" src="https://github.com/Nalchamp/sql-challenge/assets/145158606/fd886d5d-379b-492c-915c-bf3809580191">

Sources:
The ERD sketch was formulated using the follwing website: http://www.quickdatabasediagrams.com/ 

For best practices regarding the table schema and ensuring correct assignments of primary and foreign keys the following can be used: https://www.analyticsvidhya.com/blog/2020/07/difference-between-sql-keys-primary-key-super-key-candidate-key-foreign-key/#:~:text=A%20Composite%20key%20is%20a%20Candidate%20key%20with%20more%20than,non%2Dunique%20and%20null%20values.

For the data analysis section filtering and joining: https://stackoverflow.com/questions/15077053/filter-table-before-applying-left-join
