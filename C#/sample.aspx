<%
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
%>