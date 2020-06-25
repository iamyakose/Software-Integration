
# Point2Point Integration
## P2P Exercises

## Project 2: Message Encoder
This project illustrates control over the communication and exchange of text messages between a client and a server using TCP protocol over Sockets and endpoints. <br>

Server opens a server socket __ServerSocket__ on a specified port __IP:port__ and starts listening on it.<br>

When ServerSocket detects an incoming connection, it will __accept()__ it and create a new __Socket__ instance to facilitate the communication to the client, sending the request.<br>

The procedure is:
1. Server opens one of its ports, preferably with a number > 1024, for example 6666, and creates a socket for it
2. Server declares that is ready to listen and accept requests
3. If a message from a Client comes on this port, Server processes it, by reverting the text.
4. Server keeps doing (3), until a 'stop' command comes from the Client

### Server Demo Code


        package tcps;

        import java.io.IOException;
        import java.io.PrintWriter;
        import java.net.InetAddress;
        import java.net.ServerSocket;
        import java.net.Socket;
        import java.net.UnknownHostException;
        import java.util.Scanner;

        /**
         *
         * @author Dora Di
         * 
         * 1. Create a server socket and bind it to a specific port number
         * 2. Listen for a connection from the client and accept it. 
         *    This results in a client socket, created on the server, for the connection.
         * 3. Read data from the client via an InputStream obtained from the client socket
         * 4. Send data to the client via the client socket’s OutputStream.
         * 5. Close the connection with the client.
         * 
         * The steps 3 and 4 can be repeated many times depending on the protocol agreed between the server and the client.
         */

        public class TCPS 
        {
            public static final int PORT = 6666;
            public static ServerSocket serverSocket = null; // Server gets found
            public static Socket openSocket = null;         // Server communicates with the client

            public static Socket configureServer() throws UnknownHostException, IOException
            {
                // get server's own IP address
                String serverIP = InetAddress.getLocalHost().getHostAddress();
                System.out.println("Server ip: " + serverIP);

                // create a socket at the predefined port
                serverSocket = new ServerSocket(PORT);   

                // Start listening and accepting requests on the serverSocket port, blocked until a request arrives
                openSocket = serverSocket.accept();  
                System.out.println("Server accepts requests at: " + openSocket);      

                return openSocket;
            }

            public static void connectClient(Socket openSocket) throws IOException 
            {
                String request, response;

                // two I/O streams attached to the server socket:       
                Scanner in;         // Scanner is the incoming stream (requests from a client)
                PrintWriter out;    // PrintWriter is the outcoming stream (the response of the server)
                in = new Scanner(openSocket.getInputStream()); 
                out = new PrintWriter(openSocket.getOutputStream(),true);
                // Parameter true ensures automatic flushing of the output buffer

                // Server keeps listening for request and reading data from the Client,  
                // until the Client sends "stop" requests
                while(in.hasNextLine())
                {
                    request = in.nextLine();

                    if(request.equals("stop"))
                    {
                        out.println("Good bye, client!");
                        System.out.println("Log: " + request + " client!");
                        break;
                    }
                    else
                    {        
                        // server responses
                        response = new StringBuilder(request).reverse().toString();
                        out.println(response);   
                        // Log response on the server's console, too
                        System.out.println("Log: " + response);
                    }
                }
            }

            public static void main(String[] args) throws IOException 
            {       
                try
                {
                    openSocket = configureServer();   
                    connectClient(openSocket);
                }
                catch(Exception e)
                {
                    System.out.println(" Connection fails: " + e); 
                }
                finally
                {    
                    openSocket.close();
                    System.out.println("Connection to client closed");

                    serverSocket.close();
                    System.out.println("Server port closed");
                }

            }
        }


The __Client__makes a request to the Server and prints its response on the console.<br>
As a prerequisite, the Client needs to know server's identification, __IP:port__.

Alternatively, it will pass _null_ to the method __getByName()__that can produce a _Local Loopback_ IP address, which we can use for testing the communication between the Client and the Server on one machine out of a network. <br>

Once established, the communication between the Client and the Server stays opened, until the Client stops it explicitely.

### Client Demo Code

        package tcpc;

        import java.io.IOException;
        import java.io.PrintWriter;
        import static java.lang.Integer.parseInt;
        import java.net.InetAddress;
        import java.net.Socket;
        import java.net.UnknownHostException;
        import java.util.Scanner;

        /**
         * @author Dora Di
         * @param ip
         */
        public class TCPC 
        {
            // Three I/O streams attached to the client:
            static Scanner cin;        // incoming stream from the local console
            static PrintWriter out;    // outcoming stream from client to server (the request)
            static Scanner in;         // incoming stream from the server to the client(the response)

            public static int PORT = 6666;

            public static String request, response;

            public static void main(String[] args) throws IOException
            {
                // Server socket
                InetAddress ip = null;
                Socket socket = null;

                if (args.length == 2)
                    socket = new Socket(args[0], parseInt(args[1]));
                else
                {
                    System.err.println("Server data missing");
                    ip =  InetAddress.getByName(null);
                    socket = new Socket(ip, PORT);
                }
                System.out.println("Socket: " + socket);       

                try (Scanner cin = new Scanner(System.in);
                    PrintWriter out = new PrintWriter(socket.getOutputStream(),true);
                    Scanner in = new Scanner(socket.getInputStream());)
                    {
                        System.out.println("Client up and running");
                        System.out.println("Send a message or \"stop\" to close connection");

                        // User types request from the keyboard and the app sends it to the server
                        while ((request = cin.nextLine()) != null)
                        {
                            // Send the user message to the server
                            out.println(request);

                            // Get the response of the Server and print it out to the Client
                            response = in.nextLine();
                            System.out.println(response);
                        }
                }
                catch (UnknownHostException e)
                {
                    System.err.println("No host " + ip);
                    System.exit(1);
                }
                catch (IOException e)
                {
                    System.err.println("No I/O connection to " + ip);
                    System.exit(1);
                }
                finally
                {
                    //socket.close();
                    System.out.println("Client closing...");           
                }
            }
        }

# Homework Task
In the reality, servers often have to serve multiple clients at the same time.<br>

Modify the program above, so then server would be able to listen to more than one clients in parralel, running  multiple threads. 
