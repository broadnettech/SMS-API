
This following example of PHP SMS Sample code utilizes a ready-made object related to the HTTP API.
Once you Signup with Broadnet Tech SMS Sending API , You will recieveYOUR API URL Your API User ID - Sender ID 
Your API Password  for signing Up with Braodnet  Technologies 
please visti  wwww.broandet.me or email info@broadnet.me or skype - broadnet-sms ,
PHP SMS API integration code 

<?php
//Your application url 
$ApiUrl ="ApiUrl";

//Your User Id
$user ="user";

//Your password
$pass ="****";

//Multiple mobiles numbers separated by comma
$mno = "9999999";

//Sender ID,While using route4 sender id should be 6 characters long.
$sid = "102234";

//Your message to send, Add URL encoding here.
$text = "Test message";

// Message Type (1,2,3,4) 1- English,2-Unicode,3- Special Character,4-Arabic
$type = "type";

//Prepare parameter string
$url = "$ApiUrl?user=$user&pass=$pass&sid=$sid&mno=$mno&text=$text&type=$type";

//prepare connection
$ch = curl_init($url);
curl_setopt($ch,CURLOPT_RETURNTRANSFER,TRUE);
curl_setopt($ch,CURLOPT_SSL_VERIFYPEER,false);

//reading response
$body = curl_exec($ch);

//finally close connection
curl_close($ch);

//print response 
echo $body;
?>
