Here is a reference to the demo code of the class programming.

## <a name="P4-RMI">[Class Exercise 1](https://github.com/datsoftlyngby/soft2019fall-si/tree/master/code/P4-RMI)
Create a __RMI Server__, which provides remote procedures as a service to client applications
- given two operands and an operator, the server can perform an arithmetic operation and return the result
- on request, it can also inform about the current date and time

The two operations of the server must be packed in a named service and exposed in a __registry__.

Create a __RMI Client__, which implements the service from the server by use of the registry
- the client gets input from its console: two operands and an operator
- sends request to the server 
- receives the results and prints it out on the screen

## <a name="P5-RMIDB"></a>[Class Exercise 2](https://github.com/datsoftlyngby/soft2019fall-si/tree/master/code/P5-RMIDB)
Create a __database__, which contains data about bank customers.

Create a __Server application__, which operated with the database and provides data service to client application through RPC/RMI protocol

Create a __Client application__, which 
- requests from the server a list of the bank customers, retrieved from the server’s database 
- prints it out the result

