# Example of C#

C# is one of the distinguished object-based programming language which is widely used to build a range of failsafe and effective applications compatible with the Microsoft .NET Framework. 
BroadNet Technologies furnishes you with code examples and programming objects with the intent to connect to our gateway by dint of the programming language you take a fancy for. We encourage you to try the below-mentioned C# sample SMS code. 

C# example code
The following example of C# sample SMS code uses an expedient object, contingent on the HTTP API

public class SmsAPI 
        { 
        /// <summary> 
        /// Specify complete Url of SMS gateway  
        /// </summary> 
        public string ApiUrl { get; set;  } 
        /// <summary> 
        /// User name supplied by provider  
        /// </summary> 
        public string user { get; set;  } 
        /// <summary> 
        /// Password supplied by provider  
        /// </summary> 
        public string pass { get; set;  } 
        /// <summary> 
        /// SID supplied by provider  
        /// </summary> 
        public string sid { get; set;  }           
        
        public SmsAPI()
        { 

        } 
        
        public SmsAPI(string ApiUrl, string user, string pass, string sid)
        { 
            this.ApiUrl = ApiUrl;
            this.user = user;
            this.pass = pass;
            this.sid = sid;
        } 
        
        public string SendSMS(string Recipient, string MessageData)
        { 
            if (ApiUrl.Trim() == "" || user.Trim() == "" || pass.Trim() == "" || sid.Trim() == "")
                throw new Exception ("All Properties were required");

                //Status = SMS(User, SURL, SPort, Passw, number, MessageData, MessageType); //Sending SMS 
                //////// string createdURL = "http://78.108.xxx.xx" + ":" + "8080" + "/websmpp/websms" +
                ////////"?user=" + "SPDDLC" +
                ////////"&pass=" + "s@KJ8QH9" +
                ////////"&sid=" + "SPDDLC" +
                ////////"&mno=" + Recipient +
                ////////"&text=" + MessageData +
                ////////"&type=" + "1" +
                ////////"&esm=" + "0" +
                ////////"&dcs=" + "0";

                // MessageBox.Show(createdURL);
                string createdURL = ApiUrl +
                "?user=" +user +
                "&pass=" + pass +
                "&sid=" + sid +
                "&mno=" + Recipient +
                "&text=" + MessageData +
                "&type=" + "1" +
                "&esm=" + "0" +
                "&dcs=" + "0";

                try
                 { 
                    
                    HttpWebRequest myReq = (HttpWebRequest)WebRequest.Create(createdURL);
                    //MessageBox.Show("2");
                    // Get response from SMS Gateway Server and read the answer 
                    HttpWebRequest myResp = (HttpWebRequest)myReq.GetResponse();
               
                    // MessageBox.Show("21");
                    System.IO.StreamReader respStreamReader = new System.IO.StreamReader(myResp.GetResponseStream());
                    // MessageBox.Show("22");
                    string responseString = respStreamReader.ReadToEnd();
                    //  MessageBox.Show("2");
                    respStreamReader.Close();
                    myResp.Close();

                } 
                  catch (Exception ex)
                     {
                          throw ex;
                     }
                     finally
                     {
               
                     }
                     return "success";
        } 
      } 
   } 


The aforesaid C# Sample SMS Code connects to our BroadNet Technologies' server and sends a request to the same web server for sending a message.
If you still have any doubt and/or have any query regarding the implementation of the C# Sample SMS Code into your Software, feel free to contact us at info@broadnetme.com or if you want to have a demo account to test our server, please send email to info@broadnetme.com .