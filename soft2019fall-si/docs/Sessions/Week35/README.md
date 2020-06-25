# Week 35: P2P Communication
This folder contains resources related to the System Integration topics, discussed during the first semester week.	
<h2>Overview</h2>
<h3>Agenda</h3>
<ul>
	<li>System Integration as a course at PBA</li>
	<li>System Integration challenges</li>
	<li>System Integration as a subject of system development</li>
	<li>Integration technologies time-line</li>
	<li>Experience with Point-to-Point integration</li>
	<li>Coming next</li>
</ul>	

<h3>Learning Objectives</h3>
<ul>
	<li>To get acquainted with the challenges of developing business applications</li>
	<li>To get an overview of existing technologies and programming solutions in system integration and adopt criteria for comparing them</li>
	<li>To be able to explain the difference between</li>
	<ul>
		<li>tightly coupled and loosely coupled systems</li>
		<li>synchronous and asynchronous integration</li>
	</ul>
	<li>To get familiar with standardisation in system integration</li>
	<li>To get programming practice in developing P2P integration using networking protocols</li>
 </ul>
  
<h3>Teaching and Learning Activities</h3>
<ul>
	<li>Interactive presentation</li>
	<li>Programming Exercises - applications, running on two computer</li>
	<li>P2P projects - code sharing</li>
	<li>Coding remote communication between two applications</li>
	<li>Out-of-class work - reading and programming task </li>
</ul>

<h3>Lecture Notes</h3>
<ul>
  	<li><a href="https://datsoftlyngby.github.io/soft2019fall-si/Sessions/Week35/Lecture%20Notes/Session1Intro.pdf">Introduction to System Integration</a></li> 
	<li><a href="https://datsoftlyngby.github.io/soft2019fall-si/Sessions/Week35/Lecture%20Notes/Session1P2P.pdf">P2P Communication</a></li> 
</ul>
  
<h3>Programming Exercises</h3>
<ul>
	<li><a href="https://datsoftlyngby.github.io/soft2019fall-si/Sessions/Week35/Class%20Exercises/P1-WhoisClient"> P1</a> </li>
	<li><a href="https://datsoftlyngby.github.io/soft2019fall-si/Sessions/Week35/Class%20Exercises/P2-TCP">P2</a></li> 
	<li><a href="https://datsoftlyngby.github.io/soft2019fall-si/Sessions/Week35/Class%20Exercises/P3-UDP">P3</a></li> 
</ul>
      
<h3>Homework Assignments <a href="https://app.peergrade.io/teacher/courses/cad8c537-e32d-4552-b083-27aa02dfe9e6/assignments"> (Peergrade) </a> </h3>
<ul>
	<li>Reading Task<br>
		Read The Open Group Service Integration Maturity Model (OSIMM) Version 2 (http://www.opengroup.org/soa/source-book/osimmv2/) and answer the following questions:
		<ol>
			<li>How many maturity levels are defined by the standard?</li>
			<li>Which are the maturity dimensions, used as indicators for assessment of the maturity levels?</li>
		</ol>
	</li>
	<li>Programming Tasks</li>
	<ol>
	<li>Task1 <br>
	Mission: Create an application to help a user to make money transactions between her computer and the server of the bank<p>
		1.Create a Client application, which <p>
		- opens connection to a server with a specific IP address and port<p>
		- reads data from the user: account number and (+ or -) amount of money<p>
		- sends the data to the Server<p>
		2.Create Server application that<p>
		- defines initial amount of money in the user’s account<p>
		- opens connection at the specific port and accepts to listen to the client<p>
		- reads the request of the client and processes it:<p>
		= if the user wants to make savings (+), add the input amount to the current amount<p>
		= if the user wants to withdraw money (-), checks the availability, and then either subtracts the input amount from the current amount or prints a warning message<p>
		- returns a response<p>
		3.Run and test both applications on the same and on two different computers
	<li>Task2 <br>
		This assignment extends the Session 1 Project 2: Message Encoder.<p>
		You can choose to solve it and upload the solution in addition to or instead of the Bank Service assignment.<p>
		Here is the task:<p>
		In reality, servers often have to serve multiple clients at the same time.<p>
		Modify the demo program, provided by the instructor, in such a way so then the server would be able to listen to more than one clients at the same time.<p>
		Hint: Program running multiple threads.			
	<li>Task3 <br>
		This assignment extends the Session 1 Project 3: Capital Echo<p>
		You can choose to solve it and upload the solution in addition to or instead of the Bank Service assignment.<p>
		Here is the task:<p>
		UDP protocol provides faster transmission of messages, and therefore is a preferable for transmitting large, binary and video-streaming data.<p>
		Modify the demo program, provided by the instructor in such a way,, so it can be applied for sending and receiving image data from a binary file.<p>
		Hint: Replace the input stream with a more appropriate one.			
	</ol>	
</ul>	
	
<h3>Other Learning Resources</h3>
<a href="https://datsoftlyngby.github.io/soft2019fall-si/Sessions/Week35/Resources/">Link to Resources</a>

<h3>Coming Next</h3>
<a href="https://datsoftlyngby.github.io/soft2019fall-si/Sessions/Week36/">Link to Next Topic</a>
<hr>
<h3>Course Info</h3>
General information about the course <a href="https://datsoftlyngby.github.io/soft2019fall/SI/course-info.html"> System Integration</a>
<h3>Tentative Plan</h3>
<a href="https://datsoftlyngby.github.io/soft2019fall-si/Info/tentative-plan">System Integration course contents</a> schedulled by sessions/weeks.
