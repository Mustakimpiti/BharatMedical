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
Imports iTextSharp.text.pdf

Partial Class user_Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
    Dim cmd As SqlCommand
    Dim adp As SqlDataAdapter
    Dim ds As New DataSet
    Dim maxrow, inc As Integer
    Dim flag As String
    Dim t, f As String
    Private Sub diprecord()
        Try

            inc = CInt(Session("inc"))
            If maxrow <= 0 Then
                Session("inc") = -1
                inc = CInt(Session("inc"))
                MsgBox("empty table")
            End If
            If inc <> -1 Then
                c_fname.Text = ds.Tables("Usermst").Rows(inc).Item(1)
                c_lname.Text = ds.Tables("Usermst").Rows(inc).Item(2)
                c_email.Text = ds.Tables("Usermst").Rows(inc).Item(3)
                c_mobile.Text = ds.Tables("Usermst").Rows(inc).Item(4)








            End If
        Catch ex As Exception

        End Try
    End Sub
    Private Sub connect()
        Dim s As String = Session("id")
        Try
            cn.Open()
            cmd = New SqlCommand("select * from Usermst where UEmail='" + s + "'", cn)
            adp = New SqlDataAdapter(cmd)
            adp.Fill(ds, "Usermst")
            maxrow = ds.Tables("Usermst").Rows.Count



        Catch ex As Exception

        End Try
    End Sub


    Protected Sub btnsend_Click(sender As Object, e As EventArgs) Handles btnsend.Click
        Dim name As String = c_fname.Text + " " + c_lname.Text
        Dim q As String
        q = "Insert into Feedbackmst values(@uname,@Email,@Mobile,@Subject,@Msg)"
        Dim cmd As New SqlCommand(q, cn)
        cmd.Parameters.AddWithValue("@uname", name)
        cmd.Parameters.AddWithValue("@Email", c_email.Text)
        cmd.Parameters.AddWithValue("@Mobile", c_mobile.Text)
        cmd.Parameters.AddWithValue("@Subject", c_subject.Text)
        cmd.Parameters.AddWithValue("@Msg", c_message.Text)
        cmd.ExecuteNonQuery()
        Response.Write("<script>alert('successfully Send');</script>")

    End Sub

    Private Sub user_Default_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("id") = "" Then
            Response.Redirect("Signin.aspx")
        End If
        connect()
        If Not IsPostBack Then
            flag = "N"
        End If
        If flag = "N" Then
            diprecord()
        End If
    End Sub
End Class
