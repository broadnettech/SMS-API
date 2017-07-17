# Example of Android Phone Code

Android phone is presumably the latest and most popular version of all Smartphones sporting innovative technology. It operates on the Android operating system (OS), which is developed by Google and is used by a maximum number of users around the world.
When it comes to sending text messages via an Android mobile device, it is all easy and great fun for every person. No matter which version of an Android mobile device you are using, BroadNet is a reliable partner for you in sending messages to your contacts via the following Android phone sample SMS code.

Android Phone example code
The following example of Android Phone sample SMS code employs user-friendly object, with a basis on the HTTP API.

//Android SMS API integration code

//Your application url
String ApiUrl = "YourAuthKey";

//Your User Id
String user = "user";

//Your password
String pass = "*****";

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
String mainUrl="https://broadnet.me/api/xxxx.php?";

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


The above-mentioned Android Phone Sample SMS Code connects to our BroadNet'sserver and sends a request to the same web server to send a message.
If you still have any doubt and/or have any query regarding the implementation of the Android Sample SMS Code into your Software, feel free to contact us at info@broadnetme.com or if you want to have a demo account to test our server, please send email to info@broadnetme.com.