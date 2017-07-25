# PHP-Sample
PHP is the abbreviation of Hypertext Preprocessor, a well-known programming script extensively used by programmers for Web development. As time passes, its utilization is becoming progressively extensive in the domain. 

BroadNet Technologies furnishes you with a variety of PHP Sample SMS code examples and programming objects, and assist you in connecting to our gateway via the PHP script. Sending your messages via our designed PHP SMS Sample Code is easier than you guess! 

//Example of PHP Sample SMS code
//This following example of PHP SMS Sample code utilizes a ready-made object related to the HTTP API.

    
#PHP SMS API integration code 

```
<?PHP

<!-- language: php -->
Your application url Provided by Broadnet
$ApiUrl ="ApiUrl";)

<!-- language: php -->
Your User Id Provided by Broadnet
$user ="user";

<!-- language: php -->
Your password Provided by Broadnet
$pass ="****";

<!-- language: php -->
Multiple mobiles numbers separated by comma
$mno = "9999999";

<!-- language: php -->
Sender ID,While using route4 sender id should be 6 characters long.
$sid = "102234";

<!-- language: php -->
Your message to send, Add URL encoding here.
$text = "Test message";

<!-- language: php -->
Message Type (1,2,3,4) 1- English,2-Unicode,3- Special Character,4-Arabic
$type = "type";

<!-- language: php -->
prepare connection
$ch = curl_init($ApiUrl);
curl_setopt($ch,CURLOPT_RETURNTRANSFER,TRUE);
curl_setopt($ch,CURLOPT_SSL_VERIFYPEER,false);

<!-- language: php -->
reading response
$body = curl_exec($ch);

<!-- language: php -->
finally close connection
curl_close($ch);

<!-- language: php -->
print response 
echo $body;

```
##The aforesaid PHP Sample SMS Code connects to BroadNet's server and sends a request to the same web server for sending a message. 

##If you still have any doubt and/or have any query regarding the implementation of the PHP Sample SMS Code into your Software, feel free to contact us at info@broadnetme.com or if you want to have a demo account to test our server, please send email to info@broadnetme.com
