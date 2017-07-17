class SmsAPI(object): 
        # <summary> 
        # Specify complete Url of SMS gateway 
        # </summary> 
        def get_ApiUrl(self):

        def set_ApiUrl(self, value):

        ApiUrl = property(fget=get_ApiUrl, fset=set_ApiUrl)

        # <summary> 
        # User name supplied by provider 
        # </summary> 
        def get_user(self):

	   def set_user(self, value):

	   user = property(fget=get_user, fset=set_user)

        # <summary> 
        # Password supplied by provider 
        # </summary>  
        def get_pass(self):

	   def set_pass(self, value):

	   pass = property(fget=get_pass, fset=set_pass)
     
        # <summary> 
        # SID supplied by provider 
        # </summary>  
        def get_sid(self):

	    def set_sid(self, value):

	    sid = property(fget=get_sid, fset=set_sid)

	    def __init__(self, ApiUrl, user, pass, sid):
		   self.ApiUrl = ApiUrl
		   self.user = user
		   self.pass = pass
		   self.sid = sid

	    def __init__(self, ApiUrl, user, pass, sid):
		   self.ApiUrl = ApiUrl
		   self.user = user
		   self.pass = pass
		   self.sid = sid

          def SendSMS(self, Recipient, MessageData):
		   if self.ApiUrl.Trim() == "" or self.user.Trim() == "" or self.pass.Trim() == "" or self.sid.Trim() == "":
		  	raise Exception("All Properties were required")
		   #Status = SMS(User, SURL, SPort, Passw, number, MessageData, MessageType); //Sending SMS 
		   #///// string createdURL = "http://78.108.164.67" + ":" + "8080" + "/websmpp/websms" +
		   #/////"?user=" + "SPDDLC" +
		   #/////"&pass=" + "s@KJ8QH9" +
		   #/////"&sid=" + "SPDDLC" +
		   #/////"&mno=" + Recipient +
                   #/////"&text=" + MessageData +
		   #/////"&type=" + "1" +
		   #/////"&esm=" + "0" +
		   #/////"&dcs=" + "0";
		   # MessageBox.Show(createdURL);
		   createdURL = self.ApiUrl + "?user=" + self.user + "&pass=" + self.pass + "&sid=" + self.sid + "&mno=" + Recipient + "&text=" + MessageData + "&type=" + "1" + "&esm=" + "0" + "&dcs=" + "0"
                   try:
			myReq = WebRequest.Create(createdURL)
			#MessageBox.Show("2");
			# Get response from SMS Gateway Server and read the answer
			myResp = myReq.GetResponse()
			# MessageBox.Show("21");
			respStreamReader = System.IO.StreamReader(myResp.GetResponseStream())
			# MessageBox.Show("22");
			responseString = respStreamReader.ReadToEnd()
			#  MessageBox.Show("2");
			respStreamReader.Close()
			myResp.Close()
		except Exception, ex:
			raise ex
		finally:
		return "success"