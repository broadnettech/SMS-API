# Example of Windows 8 Code

Designed and released by Microsoft in 2012, Windows 8 is a well-known and widely used operating system in Personal Computers as well as Windows-based Smartphone Mobile Devices
In the age of mobile tablets and laptops, sending a text to your contact is not only feasible but also very easy! So whether you use Windows 8 or Windows 10 PC or tablet, BroadNet helps you effectively in sending/receiving text messages via the following Windows 8 sample SMS code.

Windows 8 example code
The following example of Windows 8 sample SMS code utilizes an expedient object, having a basis on the HTTP API. If you want to use this Windows 8 sample SMS code, just sign up our website now.

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
                //////// string createdURL = "http://78.108.164.67" + ":" + "8080" + "/websmpp/websms" +
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


The aforesaid Windows Sample SMS Code connects to our BroadNet's server and sends a request to the same web server for sending a message.
If you still have any doubt and/or have any query regarding the implementation of the Windows Sample SMS Code into your Software, feel free to contact us at info@broadnetme.com or if you want to have a demo account to test our server, please send email to info@broadnetme.com .