Imports System.Net
Imports System.Net.Configuration
Imports System.Net.Mail
Imports Microsoft.VisualBasic
Public Class SendMail
    Public Sub sendMail(ByVal Email As String, ByVal Subject As String, ByVal Message As String)
        Dim smtpSection As SmtpSection = CType(ConfigurationManager.GetSection("system.net/mailSettings/smtp"), SmtpSection)
        Using mm As MailMessage = New MailMessage(smtpSection.From, Email)
            mm.Subject = Subject
            mm.Body = Message
            mm.IsBodyHtml = False
            Dim smtp As SmtpClient = New SmtpClient
            smtp.Host = smtpSection.Network.Host
            smtp.EnableSsl = smtpSection.Network.EnableSsl
            Dim networkCred As NetworkCredential = New NetworkCredential(smtpSection.Network.UserName, smtpSection.Network.Password)
            smtp.UseDefaultCredentials = smtpSection.Network.DefaultCredentials
            smtp.Credentials = networkCred
            smtp.Port = smtpSection.Network.Port
            smtp.Send(mm)
            'ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Email sent.');", True)
        End Using
    End Sub
End Class
