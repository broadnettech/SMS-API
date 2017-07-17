<%
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
%>