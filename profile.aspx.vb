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
                tbfname.Text = ds.Tables("Usermst").Rows(inc).Item(1)
                tblname.Text = ds.Tables("Usermst").Rows(inc).Item(2)
                tbemail.Text = ds.Tables("Usermst").Rows(inc).Item(3)


                tbphone.Text = ds.Tables("Usermst").Rows(inc).Item(4)
                imgalt.ImageUrl = ds.Tables("Usermst").Rows(inc).Item(6)






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

    Private Sub btnsave_Click(sender As Object, e As EventArgs) Handles btnsave.Click
        If fu1.HasFile Then
            Dim str As String = fu1.FileName
            fu1.PostedFile.SaveAs(Server.MapPath("~/Images/" & str))
            Dim image As String = "~/Images/" & str.ToString()




            Dim cmd As New SqlCommand("Update Usermst set UFirstName=@fname,ULastName=@address,PhoneNo=@mo,Image=@img where UEmail=@email", cn)
            cmd.Parameters.AddWithValue("@email", tbemail.Text)
            cmd.Parameters.AddWithValue("@fname", tbfname.Text)
            cmd.Parameters.AddWithValue("@address", tblname.Text)
            cmd.Parameters.AddWithValue("@mo", tbphone.Text)
            cmd.Parameters.AddWithValue("@img", image)


            cmd.ExecuteNonQuery()

            Response.Write("<script>alert('success');</script>")
            Response.Redirect("profile.aspx")

            diprecord()
        Else
            Dim cmd As New SqlCommand("Update Usermst set UFirstName=@fname,ULastName=@address,PhoneNo=@mo where UEmail=@email", cn)
            cmd.Parameters.AddWithValue("@email", tbemail.Text)
            cmd.Parameters.AddWithValue("@fname", tbfname.Text)
            cmd.Parameters.AddWithValue("@address", tblname.Text)
            cmd.Parameters.AddWithValue("@mo", tbphone.Text)



            cmd.ExecuteNonQuery()

            Response.Write("<script>alert('success');</script>")
            Response.Redirect("Profile.aspx")

            diprecord()


        End If

    End Sub
End Class
