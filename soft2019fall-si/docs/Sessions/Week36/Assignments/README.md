## Homework Assignment

CPH Business Academy collects data about their PBA SOU students – name, email address, etc. Imagine, the data of the second semester students is already stored in a SQL database, while the same kind of data of the new students is still in a text file.<br>

#### Task
Create an application, which can read the data from all sources, regardless the input format, can merge it and then to print it out on the console, one line per student.

__The application should illustrate the use of RPC/RMI technology__.


#### Hint
- Develop a simple RMI server that shares services, which enable a client to open, read, and process two types of data sources: a text-file, either .txt or .csv and  a SQL database.
- Develop a RMI client, which can connect to the server and take use of the remote services.


#### Optional
Add a service, which can read the data from the file and store it in the database.
