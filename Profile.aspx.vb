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

Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
    Dim cmd As SqlCommand
    Dim adp As SqlDataAdapter
    Dim ds As New DataSet
    Dim maxrow, inc As Integer
    Dim flag As String
    Dim t, f As String

    Protected Sub btnsave_Click(sender As Object, e As EventArgs) Handles btnsave.Click
        If fu1.HasFile Then
            Dim str As String = fu1.FileName
            fu1.PostedFile.SaveAs(Server.MapPath("~/Images/" & str))
            Dim image As String = "~/Images/" & str.ToString()




            Dim cmd As New SqlCommand("Update Adminmst set Name=@fname,Address=@address,Mo_No=@mo,Img=@img where Email=@email", cn)
            cmd.Parameters.AddWithValue("@email", tbemail.Text)
            cmd.Parameters.AddWithValue("@fname", tbfullname.Text)
            cmd.Parameters.AddWithValue("@address", tbaddress.Text)
            cmd.Parameters.AddWithValue("@mo", tbphone.Text)
            cmd.Parameters.AddWithValue("@img", image)


            cmd.ExecuteNonQuery()

            Response.Write("<script>alert('success');</script>")
            Response.Redirect("Profile.aspx")

            diprecord()
        Else
            Dim cmd As New SqlCommand("Update Adminmst set Name=@fname,Address=@address,Mo_No=@mo where Email=@email", cn)
            cmd.Parameters.AddWithValue("@email", tbemail.Text)
            cmd.Parameters.AddWithValue("@fname", tbfullname.Text)
            cmd.Parameters.AddWithValue("@address", tbaddress.Text)
            cmd.Parameters.AddWithValue("@mo", tbphone.Text)



            cmd.ExecuteNonQuery()

            Response.Write("<script>alert('success');</script>")
            Response.Redirect("Profile.aspx")

            diprecord()


        End If

    End Sub
    Private Sub diprecord()
        Try

            inc = CInt(Session("inc"))
            If maxrow <= 0 Then
                Session("inc") = -1
                inc = CInt(Session("inc"))
                MsgBox("empty table")
            End If
            If inc <> -1 Then
                tbemail.Text = ds.Tables("Adminmst").Rows(inc).Item(1)
                tbfullname.Text = ds.Tables("Adminmst").Rows(inc).Item(2)
                tbaddress.Text = ds.Tables("Adminmst").Rows(inc).Item(3)
                tbphone.Text = ds.Tables("Adminmst").Rows(inc).Item(4)
                imgalt.ImageUrl = ds.Tables("Adminmst").Rows(inc).Item(6)






            End If
        Catch ex As Exception

        End Try
    End Sub
    Private Sub connect()
        Try
            cn.Open()
            cmd = New SqlCommand("select * from Adminmst", cn)
            adp = New SqlDataAdapter(cmd)
            adp.Fill(ds, "Adminmst")
            maxrow = ds.Tables("Adminmst").Rows.Count



        Catch ex As Exception

        End Try
    End Sub

    Private Sub Admin_Default_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("id") = "" Then
            Response.Redirect("login.aspx")
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
