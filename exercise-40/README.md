# EXCERCISE 40:
## DATABASE TESTING:
### PURPOSE:
The purpose of this exercise is to learn the basics of database testing.

### AGENDA:
1. Introduction to databases.
2. Introduction to file based databases.
3. Basics of relational modeling
4. Install the RobotFramework Database Library
   - ```pip install -U robotframework-databaselibrary```
   - [Review the RobotFramework Database Library](https://franz-see.github.io/Robotframework-Database-Library/api/0.5/DatabaseLibrary.html)
5. Run:
   - ```exercise-40/seed-db.py```
6. Open the DB and inspect it with the [SQL Lite Browser](https://sqlitebrowser.org/).
   - What do you see?
7. Add test cases to ensure that the data for the United States is valid and matches the expected data integrity.

### QUESTIONS:
- What should you be testing at the Database level versus the UI or the Service layers?
- What are the pros and cons of Database testing?
- What are some of the issues with Database testing?
- What are the common problems found with Database testing?
  - Can automation alleviate any of those common problems?
