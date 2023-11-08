
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web
Imports System.Data
Imports System.Data.SqlClient
Imports System.Net
Imports System.Runtime.CompilerServices
Imports System.ServiceModel.Channels
Partial Class Admin_Default
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
    Dim cmd As SqlCommand
    Dim adp As SqlDataAdapter
    Dim ds As New DataSet
    Dim maxrow, inc As Integer
    Dim flag As String
    Dim t, f As String

    Private Sub Admin_Default_Load(sender As Object, e As EventArgs) Handles Me.Load
        Label1.Text = Session("id")
        If Session("id") = "" Then
            Response.Redirect("login.aspx")
        End If
        'connect()
        'If Not IsPostBack Then
        '    flag = "N"
        'End If
        'If flag = "N" Then
        '    diprecord()
        'End If


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
                'tbemail.Text = ds.Tables("Adminmst").Rows(inc).Item(1)

                tbpass.Text = ds.Tables("Adminmst").Rows(inc).Item(5)






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

    Protected Sub btnsave_Click(sender As Object, e As EventArgs) Handles btnsave.Click

        Dim query As String = "select * from Adminmst where Password='" + tbpass.Text + "' and Email='" + Session("id") + "'"
        cn.Open()
        Dim cmd As New SqlCommand(query, cn)
        Dim ds As New DataSet
        Dim da As New SqlDataAdapter(query, cn)
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            Dim update As New SqlCommand("Update Adminmst set Password=@pass where Email='" + Session("id") + "'", cn)
            update.Parameters.AddWithValue("@pass", tbnew.Text)
            update.ExecuteNonQuery()

            'Response.Redirect("Changepwd.aspx")
            Response.Write("<script>alert('Password Reset Successfully');</script>")
        Else
            Response.Write("<script>alert('Wrong Password Enter');</script>")

        End If


        '    Dim cmd As New SqlCommand("Update Adminmst set Password=@pass where Email=@email", cn)
        '    cmd.Parameters.AddWithValue("@email", Label1.Text)
        '    cmd.Parameters.AddWithValue("@pass", tbnew.Text)

        '    cmd.ExecuteNonQuery()


        '    Response.Redirect("Changpwd.aspx")
        '    Response.Write("<script>alert('success');</script>")

        '    diprecord()
    End Sub
End Class







