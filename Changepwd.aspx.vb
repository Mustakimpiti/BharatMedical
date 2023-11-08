Imports System.Data.SqlClient
Imports System.Collections.Generic
Imports System.Data
Imports System
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Partial Class user_Default2
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))

    Private Sub btnsave_Click(sender As Object, e As EventArgs) Handles btnsave.Click

        Dim query As String = "select * from Usermst where Password='" + tbpass.Text + "' and UEmail='" + Session("id") + "'"
        cn.Open()
        Dim cmd As New SqlCommand(query, cn)
        Dim ds As New DataSet
        Dim da As New SqlDataAdapter(query, cn)
        da.Fill(ds)
        If ds.Tables(0).Rows.Count > 0 Then
            Dim update As New SqlCommand("Update Usermst set Password=@pass where UEmail='" + Session("id") + "'", cn)
            update.Parameters.AddWithValue("@pass", tbnew.Text)
            update.ExecuteNonQuery()

            'Response.Redirect("Changepwd.aspx")
            Response.Write("<script>alert('Password Reset Successfully');</script>")
        Else
            Response.Write("<script>alert('Wrong Password Enter');</script>")

        End If

    End Sub

    Private Sub user_Default2_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("id") = "" Then
            Response.Redirect("Signin.aspx")

        End If
    End Sub
End Class
