<%
Imports System.Net

Public Class  SmsAPI
   // <summary> 
   // Specify complete Url of SMS gateway 
   // </summary> 
   Public Property ApiUrl() As String
       Get
      Return m_ApiUrl
      End Get
       Set(value As String)
            m_ApiUrl = value
      End Set
   End Property
    Private  m_ApiUrl As String
     // <summary> 
     // User name supplied by provider
    // </summary> 
    Public Property user() As String
     Get
          Return m_user
      End Get
       Set(value As String)
            m_user = value
        End Set
   End Property
       Private m_user As String
    // <summary> 
     // Password supplied by provider 
     // </summary> 
    Public Property pass() As String
        Get
            Return m_pass
        End Get
        Set(value As String)
            m_pass = value
        End Set
    End Property
    Private m_pass As String
     // <summary> 
       // SID supplied by provider 
     // </summary> 
    Public Property sid() As String
       Get
           Return m_sid
       End Get
       Set(value As String)
            m_sid = value
       End Set
   End Property
   Private m_sidAs String


    Public Sub New()
    End Sub

    Public Sub New(ApiUrl As String, user As String, pass As String, sid As String)
        Me.ApiUrl = ApiUrl
        Me.user = user
        Me.pass = pass
        Me.sid = sid
    End Sub

    Public Function SendSMS(Recipient  As String, MessageData  As String)  As String

         If ApiUrl.Trim() = ""  OrElse user.Trim() = ""  OrElse pass.Trim() = ""  OrElse sid.Trim() = ""  Then
             Throw New Exception("All Properties were required")
         End If

        'Status = SMS(User, SURL, SPort, Passw, number, MessageData, MessageType); //Sending SMS 
        '''///// string createdURL = "http://78.108.164.67" + ":" + "8080" + "/websmpp/websms" +
        '''/////"?user=" + "SPDDLC" +
        '''/////"&pass=" + "s@KJ8QH9" +
        '''/////"&sid=" + "SPDDLC" +
        '''/////"&mno=" + Recipient +
        '''/////"&text=" + MessageData +
        '''/////"&type=" + "1" +
        '''/////"&esm=" + "0" +
        '''/////"&dcs=" + "0";

        ' MessageBox.Show(createdURL);
         Dim createdURL  As String = ApiUrl & "?user=" & user & "&pass=" & pass & "&sid=" & sid & "&mno=" & Recipient & "&text=" & MessageData & "&type=" & "1" & "&esm=" & "0" & "&dcs=" & "0"
        Try


             Dim myReq  As HttpWebRequest =  DirectCast(WebRequest.Create(createdURL), HttpWebRequest)
            'MessageBox.Show("2");
            ' Get response from SMS Gateway Server and read the answer
             Dim myResp As HttpWebResponse = DirectCast(myReq.GetResponse(), HttpWebResponse)

            ' MessageBox.Show("21");
             Dim respStreamReader  As New System.IO.StreamReader(myResp.GetResponseStream())
            ' MessageBox.Show("22");
             Dim responseString  As String = respStreamReader.ReadToEnd()
            '  MessageBox.Show("2");
            respStreamReader.Close()


            myResp.Close()
        Catch ex As Exception
            Throw ex
        Finally
        End Try
        Return "success"
    End Function
End Class
%>