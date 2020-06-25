# Exercise 3: Profanity Control
## Business Objective
Develop a tool, which can be used any time when some profanity control on text-to-be-published or printed is needed.

## Programming Tasks
1. Create a SOAP web service, which can read a text file and find out whether the text in it contains any profanity words, and then return a boolean response (true or false). 
<br>Hint: You may find helpful to create a dictionary of inappropriate words. <br>

2. Create two client applications, which consume the functionality of the web service above
  a) consumer is a stationary desktop application – runs in the console
  b) consumer is a web application, which runs online
3. Deploy the web service and the consumers on either one or two different servers.
***
## Some Methodological Help
### Service Provider
1. Create a text file &#x1F34F; _dict.txt_, which will serve as a dictionnaire for profanity words
2. Create a text file &#x1F34F; _mytext.txt_, which will contain the text being controlled
3. Create a web service application, which contains class &#x1F535; ProfChecker with code for searching profanity words from the dict.txt used in mytext.txt
4. Wrap ProfChecker as a web service 
5. Start the application server you are using, e.g. &#x1F535; GlassFish or Tomcat
6. Deploy the service (the web application created above) on the server
7. Test the service 
- in NetBeans right click on the service in the web service folder, select Test Web Service
- in Intellij, select the service in the project tab, click on Tools/Web Services at the main menu, and follow the instructions
8. Create WSDL file for the service
- in NetBeans right click on the service in the web service folder, select Generate and Copy WSDL
- in Intellij, select the service in the project tab, click on Tools/Web Services at the main menu, and follow the instructions
***
### Consumer A
1. Create a console application as a Web Service Client &#x1F538;
2. Point to the service application project, you have already created, as a WSDL source 
3. Crete a (main) class of the consumer application, which will 
- host connection to the web service
- call a method from the web service
- consume the returned result <br>
To create the connection, 
- in NetBeans - drag from the WSDL representation (Web Services section in the client application) the operation, which is to be consumed, and drop it under the main() method in the main class.
- in Intellij - customize the template of connection code, provided by the IDE inside the class with the main method
4. Run and interact with the consumer application  
***
### Consumer B
1. Create a web application &#x1F539; as a Web Client
2. Add Web Service Client to it
3. In Java 
- the communication between the two web applications can go through a .jsp page of the client
- the file index.jsp designs the front page of the client application - coded in HTML and extended by jsp scripts, written in Java
- use HTML to create a dialog form
- use script to 
  - read the form and create input parameters to the web service, provided by the server application, 
  - get the result from it
  - print the results on the front page
4. Deploy the client application on a web application server, such as GlassFish ot Tomcat
5. Run the client application and test the communication
- it runs in a browser and opens a dialog, as designed in the HTML code
- fill in the input data and get the result

