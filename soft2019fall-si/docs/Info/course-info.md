# System Integration 2019 Fall

#### Instructor
	Dr. Todorka Dimitrova 
	tdi@cphbusiness.dk

## Contents
- [Introduction](#introduction)
- [Learning Objectives](#learning-objectives)
- [Course Content](#course-content) 
- [Graded Assignments](#graded-assignments)
- [Exam](#exam)
- [Resources](#recommended-books)

## Introduction

**System integration** in information technology  is the process of bringing together different computing systems and software applications physically or functionally, to act as a coordinated whole. It is the main approach for both upgrading large legacy systems and building new software applications as aggregation of interacting subsystems and service components. 

This course provides knowledge and skills in implementing various methods and techniques for system integration.

#### Prerequisites
Participating students are expected to have understanding of software architectures and networking, as well as sufficient programming skills for independent development of software applications.

## Learning Objectives
The learning objectives of System Integration course are defined in the National curriculum (in Danish), which can be found at: 
[Studieordning for professionsbacheloruddannelsen  i softwareudvikling 2017][1].   

[1]: https://www.cphbusiness.dk/media/78341/pba_soft_cba_studieordning_2017.pdf

To reflect the learning objectives, the [course content](#course-content) joins three streams, or modules of subject matter: (1) technical foundation of software integration, (2) business considerations on integration architechtures, and (3) emerging technologies for system integration.<br>
- The first stream provides the students with knowledge and skills, related to proper selection and use of fundamental technologies for system and software connectivity. Course participants learn about integration protocols and standards for exchange of data and operability, and get ready for applying these instruments in integrating existing systems or implementing them as a basis of advanced integration technioques. <br>
- The second stream introduces business considerations related to system integration at large enterprises, such as business process modeling, enterprise architectures, integration patters and middleware. The aim is empowering the software developers with knowledge about technologies inside the business and skills for building optimal integration solutions in large business projects.<br>
- The third stream regards the recent technologies for software integration, appropriate for design and development of innovative systems and integration platforms, involving microservices architecture, containerisation, continuous integration, and intergation as a service. The students will be able to implement and upgrade the knowledge and skills acquired in the previous streems, and build professiency in choosing the right technology for solving complex integration problems.<br>

Each stream/module is associated with an intermediate evaluation of the learning achievemnts, based on design and development of a group project, solving a simple integration task. According the [plan](tentative-plan.md), developing teams receive feedback on their solutions from both other teams and from the instructor.<br>

## Course Content
Here is a tentative plan of the course content and the teaching sessions (please, be aware it may be updated in the way).


|**session**|**topic**                                                               |**programming activity**                                       |**technology**                      |
|-----------|------------------------------------------------------------------------|--------------------------------------------------------------|------------------------------------|
| 1         | Introduction, technical	integration	of	software	systems          | Integration architectures and standards,  P2P connectivity | TCP/IP ports and sockets        |
| 2          | Distributed computing, Client\-Server paradigm                      | Technologies for invocation of remote objects              | RPC, RMI                        |
| 3          | Web Services, core functionallity and standartization, SOAP         | Description, registration and implementation of SOAP WS    | XML, WSDL, SOAP, UDDI           |
| 4          | REST, RESTfull Web Services and implementations, RESTfull API       | HTTP protocol and data formats, web API                    | HTTP,  JSON, cURL, Postman      |
| 5          | Group Project 1                                                     | Presentations and feedback                                 |                                 |
| 6          | Enterprise Integration Architecture, business considerations        | Business Process Modelling, protocols and standards        | BPMN, BPEL                      |
| 7          | Enterprise Integration Architecture, middleware, SOA                | Web Services composition and coordination, SOA, ESB        | OpenESB                         |
|Fall Break                                           
| 8          | Enterprise Integration Architecture, Message Oriented Middleware    | Message brokers                                            | ActiveMQ/RabbitMQ               |
| 9          | Enterprise Application Integration, enterprise integration patterns | EAI integration development environments                   | Java DSL, Camel                 |
| 10         | Group Project 2                                                     | Presentations and feedback                                 |                                 |
| 11         | Microservices architectecture                                       | Development and integration of microservices               | Java, Spring Boot               |
| 12         | Enterprise container platforms and orchestration                    | Deployment of microservices applications                   | Docker, Docker Composer, Eureka |
| 13         | Integrating legacy systems, API business aspects                    | Choosing a method, building efficient APIs                 | Kubernetes                      |
| 14         | Agile development and integration, DevOps technologies and tools    | Cloud computing, CI/CD                                     | Jenkins, IBM cloud              |
| 15         | Group Project 3                                                     | Presentations and feedback                                 |                                 |


See calendar details [here](tentative-plan.md).

## Graded Assignments
During the semester, you will work on various projects and programming tasks. 
There will be **three group projects**, **four individual homework tasks**, **two peer grade tasks**, and **one multiple choice test**, which provide certain number of credit points, as shown below.
The total number of points is 100. 


| **#** | **assignments**                             |**points**|
|-------|---------------------------------------------|----------|
|  1    | Homework 1: RMI programming task            |  5       |
|  2    | **Group Project 1: Web Services**               | 20       |
|  3    | PeerGrade on Group Project 1                |  5       |
|  4    | Homework 2: BPEL design task                |  5       |
|  5    | **Group Project 2: EIA, SOA, and EIP**          | 20       |
|  6    | Homework 3: EIP research                    |  5       |
|  7    | PeerGrade on Group Project 2                |  5       |
|  8    | Homework 4: Microservice, data source       |  5       |
|  9    | **Group Project 3: Microservices Architecture** | 20       |
| 10    | Multiple Choice Test                        | 10       |


You need to collect minimum 80% (80 points), in order to qualify for the exam.
**If you miss to fulfill this requirement, you will miss an exam attempt.**
Fulfilling the requirement automatically signs you up for an exam.

## Exam
The course ends with a successful examination. 
There are three exam dates, scheduled by the administration – one regular exam and two re-exams. The exam is oral and graded. 
The examination commission consists the course instructors and an external censor. 
- Before the exam, students, in groups, develop, document, and submit to WiseFlow a previously defined exam project. 
- The exam starts with 20-minutes group presentation of the exam project and continues with 15-minutes individual discussions with each student separately.  
- The group presentation introduces the project solution **focusing on the system integration issues** and **highlighting the team members personal contribution** in the project development.  
The individual discussions cover topics related to the project, the report and the presentation, as well as other topics related to the course curriculum. 

## Resources
We use [Moodle](https://cphbusiness.mrooms.net/course/view.php?id=3872),  [Github](https://github.com/datsoftlyngby/soft2019fall-si/blob/master/docs/index.md), and [Peergrade](https://app.peergrade.io/) as platforms for sharing supporting materials, related to this course. 

## Recommended Books
Here is a reference of some books, which will be used in the teaching.
- Enterprise Integration Patterns: Designing, Building, and Deploying Messaging Solutions
Gregor Hohpe, Bobby Woolf
ISBN-10: 0321200683 • ISBN-13: 9780321200686
©2004 • Addison-Wesley, 736 pp.
- Service-Oriented Architecture: Analysis and Design for Services and Microservices (2nd Edition) 
	Thomas Erl 
	ISBN-10: 0133858588 • ISBN-13: 978-0133858587
	©2016 • Prentice Hall / Pearson • 416 pp.
- Microservices for Java Developers. A Hands-on Introduction to Frameworks and Containers • Christian Posta 
ISBN: 978-1-491-96207-7 • O’Reilly, 2016

More titles, as well as links to Internet resources can be found in Github folders and lecturers’ presentations.
