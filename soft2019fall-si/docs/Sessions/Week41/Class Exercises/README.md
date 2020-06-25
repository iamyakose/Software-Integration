# MOM Exercises
The aim of these exercises and assignments is practicing the implementation of message-oriented middleware for integrating two or more applications.
For solving the tasks in the Exercises you get help from the instructor (https://github.com/datsoftlyngby/soft2019fall-si/blob/master/code/P10-RabbitMQ.zip) and product tutorials (https://www.rabbitmq.com/getstarted.html), while for coding the Assignment tasks you implement your own creativity.

## Prerequisites
For solving the tasks defined here you need to have installed and running a message broker software, as the one, seen in class - [__Rabbit__](https://www.rabbitmq.com/).
When installed locally, it runs on localhost at port 15672.
You can log in the administration dashboard with the credentials ‘guest’ and ‘guest’.

## Exercise 1: Hello, MOM (≈ 1 h)
Create two applications: a Producer and a Consumer. Link both to the same message queue.
The Producer says ‘Hello’ to the Consumer.
Validate the connection by appropriate print out.

## Exercise 2: News Distribution (≈ 30 min)
The Producer is a news agency, which generates sport news as a text message and distributes the message to three or more Consumers that are connected to the same exchange/queue.

## Exercise 3: Spam Filter (≈ 30 min)
In this case, the Consumer pulls only those messages of the Producer, which are marked as ‘spam’.
Validate the integration by examples of spam and no-spam tests.

## Exercise 4: Topic Selection (≈ 30 min)
In this example, the messages of the Producer are tagged with keywords, describing the topics in the content, using the pattern <topic1>.<topic2>.<topic3>
Each consumers specifies the topics it is interested in by expression, using the characters ‘*’  and  ‘#’ in the pattern (the character ‘*’ represents any number of topics, and the character ‘#’ replaces exactly one topic.
<br>Example: If the Producer announces __'country.day.sport'__, the consumer expression 
-	__‘denmark.*.football’__ would register my interest in Denmark’s football news of any day, while 
-	__‘#.golf’__ would register interest in any golf news from all over the world.

