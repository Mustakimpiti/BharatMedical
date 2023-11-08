Imports System.ComponentModel
Imports System.Data
Imports System.Data.SqlClient
Imports System.Runtime.InteropServices.ComTypes
Partial Class user_Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
    Private Sub user_Default_Load(sender As Object, e As EventArgs) Handles Me.Load
        cn.Open()
        If Not Me.IsPostBack Then
            Me.SearchMed()
        End If
    End Sub
    Private Sub SearchMed()
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
        Dim cmd As New SqlCommand()
        Dim sql As String = "SELECT * FROM Productmst WHERE PName LIKE @PName + '%' And Category LIKE @cat + '%' And Types LIKE @type + '%' "
        cmd.Parameters.AddWithValue("@type", ddltype.Text.Trim())

        cmd.Parameters.AddWithValue("@cat", ddlcat.Text.Trim())
        cmd.Parameters.AddWithValue("@PName", tbsearch.Text.Trim())
        'If Not String.IsNullOrEmpty(tbsearch.Text.Trim()) Then
        '    sql += " WHERE PName LIKE @PName + '%'"
        '    cmd.Parameters.AddWithValue("@PName", tbsearch.Text.Trim())
        'ElseIf Not String.IsNullOrEmpty(ddlcat.Text.Trim()) Then
        '    sql += " WHERE Category LIKE @cat + '%'"
        '    cmd.Parameters.AddWithValue("@cat", ddlcat.Text.Trim())
        'ElseIf Not String.IsNullOrEmpty(ddltype.Text.Trim()) Then
        '    sql += " WHERE Types LIKE @cat + '%'"
        '    cmd.Parameters.AddWithValue("@cat", ddltype.Text.Trim())
        'End If
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

    Private Sub DataList1_ItemCommand(source As Object, e As DataListCommandEventArgs) Handles DataList1.ItemCommand
        If e.CommandName = "viewdetail" Then
            Response.Redirect("shop-single.aspx?id=" + e.CommandArgument.ToString())

        End If
    End Sub
End Class
