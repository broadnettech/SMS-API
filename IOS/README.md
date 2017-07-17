# Example of iOS phone

iOS is a sophisticated and chic mobile operating system created and developed by Apple Inc. iOS is the operating system that is embedded in all the mobile devices created by Apple, including the iPhone, iPad, and iPod touch. 
Sending bulk SMS from iOS mobile device is a facile and fun process that is a hard to be possessed. Regardless of the iOS device and version you are using, BroadNet Technologies lends a great help to you in sending messages to your contacts via the following iOS phone sample SMS code.

iOS Phone example code
The following example of iOS Phone sample SMS code employs user-friendly object, with a basis on the HTTP API.

     //IOS SMS API integration code 

     //Create Objects 
    NSMutableData * responseData;
    NSURLConnection * connection;

      // In your viewDidLoad method add this lines 
    -(void)viewDidLoad
    {
        [super viewDidLoad]; 
           //Your application url 
        NSString * ApiUrl = @"ApiUrl";
        //Multiple mobiles numbers separated by comma 

        NSString * user = @"uname";         
        NSString * pass = @"******";
        
        NSString * mobiles = @"9999999"; 
         //Sender ID,While using route4 sender id should be 6 characters long.
        NSString * sid = @"102234";
         //Your message to send, Add URL encoding here.
        NSString * message = @"Test message";

          // Prepare your url to send sms with this parameters.
        NSString * url = [[NSString stringWithFormat:@"https://broadnet.me/api/xxxxx.php?user=%@&pass=%@&mobiles=%@&message=%@&sid=%@", user, pass, mobiles, message, sid] stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        NSURLRequest * request = [NSURLRequest  requestWithURL:[NSURL URLWithString:url]];
        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    }

     // implement URLConnection Delegate Methods as follow
    -(void) connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
    {
              //Get response data
        responseData = [NSMutableData data];
    } 

    -(void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
    {
        [responseData appendData:data];
    }

    -(void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"message:error.localizedDescription delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
    }

    -(void) connectionDidFinishLoading:(NSURLConnection *)connection
    {
          // Get response data in NSString.
        NSString * responceStr = [[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding];
    }


The above-mentioned iOS Phone Sample SMS Code connects to our BroadNet's server and sends a request to the same web server to send a message.

If you still have any doubt and/or have any query regarding the implementation of theiOSPhone Sample SMS Code into your Software, feel free to contact us at info@broadnetme.com or if you want to have a demo account to test our server, please send email to info@broadnetme.com .