
Imports System.Data.SqlClient
Imports System.Drawing

Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
    Dim Cmd As New SqlCommand


    Protected Sub btnsave_Click(sender As Object, e As EventArgs) Handles btnsave.Click
        cn.Open()
        Dim q As String = "Insert into categorymst values(@category)"
        Dim cmd As New SqlCommand(q, cn)
        cmd.Parameters.AddWithValue("@category", txtCategoryName.Text)
        cmd.ExecuteNonQuery()

        Response.Redirect("ChangeCategory.aspx")
        Response.Write("<script>alert('Category Inserted');</script>")

        cn.Close()


    End Sub

    Private Sub Admin_Default_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("id") = "" Then
            Response.Redirect("login.aspx")
        End If
    End Sub
End Class
