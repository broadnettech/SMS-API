# Example of Windows Phone Code

Windows Phone (WP) is a class of mobile operating systems designed and developed by Microsoft for Smartphones as the stand-in successor to Windows Mobile and Zune. Windows Phone sports a state-of-the-art user interface, which stems from Metro design language. 
In the era of mobile tablets and laptops, sending a text to your contact is like shooting fish in a barrel; moreover, it is very easy too! So whether you use Windows7, Windows 8 or Windows 10 PC or tablet, BroadNet Technologies helps you effectively in sendingtext messages via the following Windows phone sample SMS code using your current mobile phone number.

Windows Phone example code
The following example of Windows Phone sample SMS code makes use of an expedient object, with a basis on the HTTP API.

namespace BroadNetWPSMSLib 
{ 
    public class RequestState 
    { 
        // This class stores the State of the request. 
        const int BUFFER_SIZE =1024; 
        public StringBuilder requestData;
        public byte[] BufferRead;
        public System.Net.HttpWebRequest request;
        public System.Net.HttpWebResponse response;
        public System.Net.Stream streamResponse;

        public RequestState 
        { 
            BufferRead = new byte[BUFFER_SIZE];
            requestData = newStringBuilder("");;
            request = null;
            streamResponse = null;
        } 
    } 

    public class SmsAPI 
    { 
        // <summary> 
        // Specify complete Url of SMS gateway  
        // </summary> 
        public string ApiUrl { get; set;  } 
        // <summary> 
        // User name supplied by provider  
        // </summary> 
        public string user { get; set;  } 
        // <summary> 
        // Password supplied by provider  
        // </summary> 
        public string pass { get; set;  } 
        // <summary> 
        // SID supplied by provider  
        // </summary> 
        public static System.Threading.ManualResetEventallDone = new 
        System.Threading.ManualResetEvent(false);
        const int BUFFER_SIZE = 1024;   
        
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
                // string createdURL = "http://78.108.164.67" + ":" + "8080" + "/websmpp/websms" +
                //"?user=" + "SPDDLC" +
                //"&pass=" + "s@KJ8QH9" +
                //"&sid=" + "SPDDLC" +
                //"&mno=" + Recipient +
                //"&text=" + MessageData +
                //"&type=" + "1" +
                //"&esm=" + "0" +
                //"&dcs=" + "0";

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
                    System.Uri uri = new Uri(createdURL);
                    //Create a HttpWebrequest object to the desired URL.
                    System.Net.HttpWebRequest myHttpWebRequest1 = (System.Net.HttpWebRequest)System.Net.WebRequest.Create(uri);

                    // Create an instance of the RequestState and assign the previous myHttpWebRequest1
                    // object to it's request field.  
                    RequestState myRequestState = new RequestState();
                    myRequestState.request = myHttpWebRequest1;
                    
                    // Start the asynchronous request.
                      IAsyncResult result =
                    (IAsyncResult)myHttpWebRequest1.BeginGetResponse(new AsyncCallback(RespCallback), myRequestState);
                     allDone.WaitOne();
                    // Release the HttpWebResponse resource.
                    myRequestState.response.Close();
                    }
                    catch (System.Net.WebException e)
                    {
                        throw  e;
                    }
                    catch  (Exception e)
                    {
                        throw  e;
                    }
                    return  "success";
               }
       private static void  RespCallback(IAsyncResult asynchronousResult)
        {
           try
            {
                 // State of request is asynchronous.
                RequestState myRequestState =
                 (RequestState)asynchronousResult.AsyncState;
                System.Net.HttpWebRequest myHttpWebRequest2 = myRequestState.request;
                myRequestState.response =
                 (System.Net.HttpWebResponse )myHttpWebRequest2.EndGetResponse(asynchronousResult);

                 // Read the response into a Stream object.
                System.IO.Stream  responseStream = myRequestState.response.GetResponseStream();
                myRequestState.streamResponse = responseStream;

                // Begin the Reading of the contents of the HTML page and print it to the console.
                IAsyncResult asynchronousInputRead = responseStream.BeginRead(myRequestState.BufferRead, 0, BUFFER_SIZE,
                 new  AsyncCallback(ReadCallBack), myRequestState);
            }
           catch  (System.Net.WebException e)
            {
             throw  e;
            }
        }

                 private static void ReadCallBack(IAsyncResult asyncResult)
        {
             try
            {
                RequestState myRequestState = (RequestState)asyncResult.AsyncState;
                System.IO.Stream responseStream = myRequestState.streamResponse;
                 int read = responseStream.EndRead(asyncResult);

                // Read the HTML page and then do something with it
                 if (read > 0)
                {
                  myRequestState.requestData.Append(Encoding.UTF8.GetString(myRequestState.BufferRead, 0, read));
                  IAsyncResult asynchronousResult = 
                 responseStream.BeginRead(myRequestState.BufferRead, 0, BUFFER_SIZE, new AsyncCallback(ReadCallBack),
                 myRequestState);
                }
                 else
                {
                     if(myRequestState.requestData.Length > 1)
                    {
                         string stringContent;
                        stringContent = myRequestState.requestData.ToString();
                        // do something with the response stream here
                    }

                    responseStream.Close();
                    allDone.Set();
                }
            }
            catch (System.Net.WebException e)
            {
                 throw e;
            }
        }

    }
}

The aforesaid Windows Phone Sample SMS Code connects to our BroadNets' server and sends a request to the same web server for sending a message.
If you still have any doubt and/or have any query regarding the implementation of the Windows Phone Sample SMS Code into your Software, feel free to contact us at info@broadnetme.com or if you want to have a demo account to test our server, please send email to info@broadnetme.com .