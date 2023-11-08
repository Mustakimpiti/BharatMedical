Imports System.ComponentModel
Imports System.Data
Imports System.Data.SqlClient
Imports System.Runtime.InteropServices.ComTypes
Partial Class user_Default2
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
    Private Sub SearchMed()
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
        Dim sql As String = "SELECT * FROM Productmst where Discount=@dis and PName LIKE @PName + '%' And Category LIKE @cat + '%' And Types LIKE @type + '%'"
        Dim cmd As New SqlCommand(sql, cn)
        cmd.Parameters.AddWithValue("@type", ddltype.Text.Trim())

        cmd.Parameters.AddWithValue("@cat", ddlcat.Text.Trim())
        cmd.Parameters.AddWithValue("@PName", tbsearch.Text)
        cmd.Parameters.AddWithValue("@dis", 25)
        cmd.ExecuteNonQuery()
        cmd.CommandText = sql
        cmd.Connection = con
        Using sda As New SqlDataAdapter(cmd)
            Dim dt As New DataTable()
            sda.Fill(dt)
            DataList1.DataSource = dt
            DataList1.DataBind()
        End Using
    End Sub
    Protected Sub Search(sender As Object, e As EventArgs)
        Me.SearchMed()
    End Sub

    Private Sub user_Default2_Load(sender As Object, e As EventArgs) Handles Me.Load
        cn.Open()
        If Not Me.IsPostBack Then
            Me.SearchMed()
        End If
    End Sub

    Private Sub DataList1_ItemCommand(source As Object, e As DataListCommandEventArgs) Handles DataList1.ItemCommand
        If e.CommandName = "viewdetail" Then
            Response.Redirect("shop-single.aspx?id=" + e.CommandArgument.ToString())

        End If
    End Sub
End Class
