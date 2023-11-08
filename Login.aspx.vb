Imports System.Data.SqlClient
Imports System.Collections.Generic
Imports System.Data
Imports System
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Partial Class Admin_Login
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))


    Protected Sub btnlogin_Click(sender As Object, e As EventArgs) Handles btnlogin.Click

        Dim query As String = "select * from Adminmst where Email='" + tbemail.Text + "' and Password='" + tbpass.Text + "'"
        cn.Open()
        Dim cmd As New SqlCommand(query, cn)
        Dim dr As SqlDataReader = cmd.ExecuteReader()
        If dr.Read() Then
            Session("id") = tbemail.Text
            Response.Redirect("Dashboard.aspx")
        Else
            Response.Write("<script>alert('Wrong UserName or Password');</script>")
        End If

    End Sub
End Class
