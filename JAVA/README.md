Example of Java Sample Code

Java is one of most popular programming languages used by developers for the development of application software in a cross-platform environment. Decidedly, using JAVA programming language for developing your website or mobile app, you will experience total satisfaction.
Therefore, BroadNet Java Sample SMS Code helps you connect to our gateway using your most favorite and well-known programming language JAVA. We encourage you to bring the following JAVA Sample SMS Code into use; you will see for yourself how easy, and fast it is to send SMS using BroadNet SMS Gateway!

Example of Java Sample SMS code
This example of Java SMS Sample Code utilizes a clichéd Java Object API.


//Android SMS API integration code

//Your application url
String ApiUrl = "ApiUrl";

//Your User Id
String user = "user";

//Your password
String pass = "****";


//Multiple mobiles numbers separated by comma
String mobiles = "9999999";
//Sender ID,While using route4 sender id should be 6 characters long.
String sid = "102234";
//Your message to send, Add URL encoding here.
String message = "Test message";

URLConnection myURLConnection=null;
URL myURL=null;
BufferedReader reader=null; 

//encoding message
String encoded_message=URLEncoder.encode(message);

//Send SMS API
String mainUrl="https://broadnet.mme/api/xxxx.php?";

//Prepare parameter string
StringBuilder sbPostData= new StringBuilder(mainUrl);
sbPostData.append("user="+user); 
sbPostData.append("&pass="+pass);
sbPostData.append("&mobiles="+mobiles);
sbPostData.append("&message="+encoded_message);
sbPostData.append("&sid="+sid);

//final string
mainUrl = sbPostData.toString();
try
{
    //prepare connection
    myURL = new URL(mainUrl);
    myURLConnection = myURL.openConnection();
    myURLConnection.connect();
    reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
    
    //reading response
    String response;
    while ((response = reader.readLine()) != null) 
    //print response 
    Log.d("RESPONSE", ""+response);
    
    //finally close connection
    reader.close();
} 
catch (IOException e) 
{ 
	e.printStackTrace();
} 


The aforesaid Java Sample SMS Code connects to our BroadNet Technologies' server and sends a request to the same web server for sending a message.
If you still have any doubt and/or have any query regarding the implementation of the Java Sample SMS Code into your Software, feel free to contact us at info@broadnetme.com or if you want to have a demo account to test our server, please send email to info@broadnetme.com