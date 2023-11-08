
Imports System.ComponentModel
Imports System.Data
Imports System.Data.SqlClient
Imports System.Runtime.InteropServices.ComTypes

Partial Class user_Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
    'Private Sub SearchMed()
    '    Dim con As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
    '    Dim cmd As New SqlCommand()
    '    Dim sql As String = "SELECT top 5 * FROM Productmst"
    '    If Not String.IsNullOrEmpty(tbsearch.Text.Trim()) Then
    '        sql += " WHERE PName LIKE @PName + '%'"
    '        cmd.Parameters.AddWithValue("@PName", tbsearch.Text.Trim())
    '    ElseIf Not String.IsNullOrEmpty(ddlcat.Text.Trim()) Then
    '        sql += " WHERE Category LIKE @cat + '%'"
    '        cmd.Parameters.AddWithValue("@cat", ddlcat.Text.Trim())
    '    End If
    '    cmd.CommandText = sql
    '    cmd.Connection = con
    '    Using sda As New SqlDataAdapter(cmd)
    '        Dim dt As New DataTable()
    '        sda.Fill(dt)
    '        DataList1.DataSource = dt
    '        DataList1.DataBind()
    '    End Using
    'End Sub
    'Protected Sub Search(sender As Object, e As EventArgs)
    '    Me.SearchMed()
    'End Sub

    Private Sub user_Default_Load(sender As Object, e As EventArgs) Handles Me.Load
        cn.Open()
        'If Not Me.IsPostBack Then
        '    Me.SearchMed()
        'End If
    End Sub
End Class
