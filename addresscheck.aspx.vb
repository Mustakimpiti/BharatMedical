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
Partial Class user_Default2
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
    Dim cmd As SqlCommand
    Dim adp As SqlDataAdapter
    Dim ds As New DataSet
    Dim maxrow, inc As Integer
    Dim flag As String
    Dim t, f As String
    Dim s As String
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
                tbhouse.Text = ds.Tables("Usermst").Rows(inc).Item(7)
                tbarea.Text = ds.Tables("Usermst").Rows(inc).Item(8)
                tbpincode.Text = ds.Tables("Usermst").Rows(inc).Item(9)
                tbcity.Text = ds.Tables("Usermst").Rows(inc).Item(10)



                tbphone.Text = ds.Tables("Usermst").Rows(inc).Item(4)







            End If
        Catch ex As Exception

        End Try
    End Sub
    Private Sub connect()
        s = Session("id")
        Try
            cn.Open()
            cmd = New SqlCommand("select * from Usermst where UEmail='" + s + "'", cn)
            adp = New SqlDataAdapter(cmd)
            adp.Fill(ds, "Usermst")
            maxrow = ds.Tables("Usermst").Rows.Count



        Catch ex As Exception

        End Try
    End Sub

    Private Sub user_Default2_Load(sender As Object, e As EventArgs) Handles Me.Load
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
        Dim cmd As New SqlCommand("Update Usermst set HouseNo=@house,Area=@area,Pincode=@pin,City=@city where UEmail=@email", cn)
        cmd.Parameters.AddWithValue("@email", s)
        cmd.Parameters.AddWithValue("@house", tbhouse.Text)
        cmd.Parameters.AddWithValue("@area", tbarea.Text)
        cmd.Parameters.AddWithValue("@pin", tbpincode.Text)
        cmd.Parameters.AddWithValue("@city", tbcity.Text)



        cmd.ExecuteNonQuery()

        Response.Write("<script>alert('success');</script>")
        Response.Redirect("checkout.aspx")

        diprecord()
    End Sub

End Class
