Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web
Imports System.Data
Imports System.Data.SqlClient
Imports System.Net
Imports System.IO
Imports System.Runtime.CompilerServices
Imports Org.BouncyCastle.Utilities.Net
Imports System.Activities.Expressions
Imports iTextSharp.text
Imports System.Security.Policy
Imports System.Activities

Partial Class user_Forgot
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
    Dim cmd As SqlCommand
    Dim adp As SqlDataAdapter
    Dim ds As New DataSet
    Dim inc As Integer

    Private Sub btnsave_Click(sender As Object, e As EventArgs) Handles btnsave.Click
        Dim pas As String
        Dim query As String = "select Password from Usermst where UEmail='" + tbemail.Text + "' "
        cn.Open()
        Dim cmd As New SqlCommand(query, cn)
        pas = cmd.ExecuteScalar()

        If pas.Length > 0 Then

            Dim SM As New SendMail()
            Dim Message As String = "Hello," & vbCrLf & vbCrLf & "Welcome To Bharat Medical Store " & vbCrLf & vbCrLf & "Your Password is :" & pas & vbCrLf & vbCrLf & "Please Don't Share This Crucial Information With anyone" & vbCrLf & vbCrLf & "Thankyou For Being A part of Bharat Medical Store "
            Dim Subject As String = "Reminder Information"
            Dim Email As String = tbemail.Text
            SM.sendMail(Email, Subject, Message)

            Response.Write("<script>alert('Check Your Email');</script>")

            'Response.Redirect("Signin.aspx")


        Else
            Response.Write("<script>alert('Not Email');</script>")
        End If

    End Sub
End Class
