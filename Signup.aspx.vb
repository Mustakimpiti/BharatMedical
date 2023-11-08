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
Imports System.Drawing
Imports System.Security.Cryptography
Imports System.Runtime.CompilerServices
Imports System.Runtime.InteropServices

Partial Class user_Default2
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
    Dim cmd As SqlCommand

    Private Sub btnsignup_Click(sender As Object, e As EventArgs) Handles btnsignup.Click
        Dim uname As String = tbfname.Text
        Dim ulast As String = tblname.Text
        Dim phone As String = tbphone.Text

        Dim uemail As String = tbemail.Text
        Dim pass As String = tbpass.Text
        Dim house As String = tbhouse.Text
        Dim area As String = tbarea.Text
        Dim pincode As String = tbpincode.Text
        Dim city As String = tbcity.Text
        If fuimg.HasFile Then

            Dim str As String = fuimg.FileName
            fuimg.PostedFile.SaveAs(Server.MapPath("~/Images/" & str))
            Dim image As String = "~/Images/" & str.ToString()
            cn.Open()


            Dim q As String
            q = "Insert into Usermst values(@ufname,@ulname,@uemail,@uphone,@upass,@img,@house,@area,@pincode,@city)"
            Dim cmd As New SqlCommand(q, cn)
            cmd.Parameters.AddWithValue("@ufname", tbfname.Text)
            cmd.Parameters.AddWithValue("@ulname", tblname.Text)
            cmd.Parameters.AddWithValue("@uemail", tbemail.Text)
            cmd.Parameters.AddWithValue("@uphone", tbphone.Text)
            cmd.Parameters.AddWithValue("@upass", tbpass.Text)
            cmd.Parameters.AddWithValue("@img", image)
            cmd.Parameters.AddWithValue("@house", tbhouse.Text)
            cmd.Parameters.AddWithValue("@area", tbarea.Text)
            cmd.Parameters.AddWithValue("@pincode", tbpincode.Text)
            cmd.Parameters.AddWithValue("@city", tbcity.Text)


            cmd.ExecuteNonQuery()
        Else
            cn.Open()

            Dim image As String = "../user/images/empty.jpg"
            Dim q As String
            q = "Insert into Usermst values(@ufname,@ulname,@uemail,@uphone,@upass,@img,@house,@area,@pincode,@city)"
            Dim cmd As New SqlCommand(q, cn)
            cmd.Parameters.AddWithValue("@ufname", tbfname.Text)
            cmd.Parameters.AddWithValue("@ulname", tblname.Text)
            cmd.Parameters.AddWithValue("@uemail", tbemail.Text)
            cmd.Parameters.AddWithValue("@uphone", tbphone.Text)
            cmd.Parameters.AddWithValue("@upass", tbpass.Text)
            cmd.Parameters.AddWithValue("@img", Image)
            cmd.Parameters.AddWithValue("@house", tbhouse.Text)
            cmd.Parameters.AddWithValue("@area", tbarea.Text)
            cmd.Parameters.AddWithValue("@pincode", tbpincode.Text)
            cmd.Parameters.AddWithValue("@city", tbcity.Text)


            cmd.ExecuteNonQuery()

        End If
        Dim SM As New SendMail()
        Dim Message As String = "Dear " & uname & vbCrLf & "Welcome To Bharat Medical Store You Are Successfully Registerd Your Login Details are " & vbCrLf & "First Name : " & uname & vbCrLf & "Last Name : " & ulast & vbCrLf & "Your Email : " & uemail & vbCrLf & "Your Mobile No : " & phone & vbCrLf & "Address : " & house & " , " & area & " , " & pincode & " , " & city & " , " & vbCrLf & vbCrLf & vbCrLf & " Thankyou For Being a part of Bharat Medical"
        Dim Subject As String = "Account Information"
        Dim Email As String = uemail
        SM.sendMail(Email, Subject, Message)


        Response.Redirect("Signin.aspx")


        cn.Close()

    End Sub
End Class
