
# Point2Point Integration
## P2P Exercises

## Project 3: Capital Echo
This project illustrates control over the communication and exchange of text messages between a client and a server over UDP protocol. <br>

The client sends a text message to the server, and the server returns it back, after processing.<br>

The processing _protocol_ enables simple echoing after capitalisation of the message letters.

The UDP protocol does not require establishing a point to point connection between a client and a server, like  TCP does. <br>
Instead, the server extracts the IP address of the client, every time it gets request.

UDP transmits independent packets over the network, but as it is '_connectionless_', can not guarantee neither the arrival, nor the order of delivery of all messages, it transmits. <br>

In Java UDP communication, a single message is encapsulated in a __DatagramPacket__ which is sent through a __DatagramSocket__, both ways.

### Server Demo Code
        package dk.dd.udps;

        import java.io.IOException;
        import java.net.*;

        /**
         *
         * @author Dora Di
         */
        public class UDPServer
        {
            private static final int serverPort = 7777;

            // buffers for the messages
            private static byte[] dataIn = new byte[128];
            private static byte[] dataOut = new byte[128];  

            // In UDP messages are encapsulated in packages and sent over sockets
            private static DatagramPacket requestPacket;    
            private static DatagramPacket responsePacket;     
            private static DatagramSocket serverSocket;  


            public static void main(String[] args) throws Exception
            {   
                String messageIn, messageOut;
                try
                {
                    String serverIP = InetAddress.getLocalHost().getHostAddress();
                    // Opens socket for accepting requests
                    serverSocket = new DatagramSocket(serverPort);
                    while(true)
                    {
                       System.out.println("Server " + serverIP + " running ...");  
                       messageIn = receiveRequest();
                       if (messageIn.equals("stop")) break;
                       messageOut = processRequest(messageIn);
                       sendResponse(messageOut);
                    } 
                }
                catch(Exception e)
                {
                    System.out.println(" Connection fails: " + e); 
                }
                finally
                {       
                    serverSocket.close();
                    System.out.println("Server port closed");
                }
            }

            public static String receiveRequest() throws IOException
            {
                  requestPacket = new DatagramPacket(dataIn, dataIn.length);
                  serverSocket.receive(requestPacket);
                  String message = new String(requestPacket.getData(), 0, requestPacket.getLength());
                  System.out.println("Request: " + message);   
                  return message;
            }

            public static String processRequest(String message)
            {
                return message.toUpperCase();
            }

            public static void sendResponse(String message) throws IOException
            {
                InetAddress clientIP;
                int clientPort;

                clientIP = requestPacket.getAddress();
                clientPort = requestPacket.getPort();
                System.out.println("Clent port: " + clientPort); 
                System.out.println("Response: " + message); 
                dataOut = message.getBytes();
                responsePacket = new DatagramPacket(dataOut, dataOut.length, clientIP, clientPort);
                serverSocket.send(responsePacket);
                System.out.println("Message sent back " + message);
            }    
        }
```

### Client Demo Code

        package dk.dd.udpc;

        import java.io.IOException;
        import java.net.DatagramPacket;
        import java.net.DatagramSocket;
        import java.net.InetAddress;
        import java.util.Scanner;

        /**
         *
         * @author Dora Di
         */
        public class UDPClient 
        {
            // Client needs to know server identification, <IP:port>
            private static final int serverPort = 7777;

            // buffers for the messages
            public static String message;
            private static byte[] dataIn = new byte[256];
            private static byte[] dataOut = new byte[256];  

            // In UDP messages are encapsulated in packages and sent over sockets
            private static DatagramPacket requestPacket;    
            private static DatagramPacket responsePacket;  
            private static DatagramSocket clientSocket;

            public static void main(String[] args) throws IOException
            {           
                clientSocket = new DatagramSocket(); 
                InetAddress serverIP = InetAddress.getByName(args[0]);
                System.out.println(serverIP);

                Scanner scan = new Scanner(System.in);
                System.out.println("Type message: ");

                while((message = scan.nextLine()) != null)
                {
                    sendRequest(serverIP);            
                    receiveResponse();
                }
                clientSocket.close(); 
            }

            public static void sendRequest(InetAddress serverIP) throws IOException
            {
                //clientSocket = new DatagramSocket();        
                dataOut = message.getBytes();
                requestPacket = new DatagramPacket(dataOut, dataOut.length, serverIP, serverPort);
                clientSocket.send(requestPacket); 
            }

            public static void receiveResponse() throws IOException
            {
                //clientSocket = new DatagramSocket();
                responsePacket = new DatagramPacket(dataIn, dataIn.length);
                clientSocket.receive(responsePacket);
                String message = new String(responsePacket.getData(), 0, responsePacket.getLength());       
                System.out.println("Response from Server: " + message);      
            }    
        }

```

# Homework  Task
UDP protocol provides faster transmission of messages, and therefore is a preferable for transmiting large, binary and video-streeming data.<br>

Modify the program above, so it can be applied for sending and receiving __image data__ from a binary file.

