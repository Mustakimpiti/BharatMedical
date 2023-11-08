Imports System.Activities.Expressions
Imports System.Data
Imports System.Data.SqlClient
Imports System.Net
Imports System.Runtime.InteropServices.ComTypes
Imports System.IO
Imports System.Configuration
Imports iTextSharp.text
Imports iTextSharp.text.html.simpleparser
Imports iTextSharp.text.pdf
Imports System.Runtime.Remoting.Messaging
Imports System.Drawing
Partial Class user_Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
    Dim Cmd As New SqlCommand
    Dim adp As SqlDataAdapter
    Dim ds As New DataSet
    Dim maxrow, inc As Integer
    Dim flag As String
    Dim t, f As String
    Dim qs As String
    Private Sub user_Default_Load(sender As Object, e As EventArgs) Handles Me.Load
        cn.Open()
        'If Not Me.IsPostBack Then
        '    Me.SearchMed()
        'End If
        'If Session("id") = "" Then
        '    Response.Redirect("Signin.aspx")

        'End If

    End Sub
    Protected Sub Search(sender As Object, e As EventArgs)
        Me.SearchMed()
    End Sub

    Private Sub SearchMed()
        qs = Session("id")
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
        Dim cmd As New SqlCommand()
        Dim sql As String = "SELECT * FROM Cartmst INNER JOIN Productmst ON Cartmst.Id=Productmst.Id WHERE ([User] = @u)"
        cmd.Parameters.AddWithValue("@u", qs)
        cmd.CommandText = sql
        cmd.Connection = con
        Using sda As New SqlDataAdapter(cmd)
            Dim dt As New DataTable()
            sda.Fill(dt)
            GridView2.DataSource = dt
            GridView2.DataBind()
        End Using
    End Sub

    Private Sub GridView2_RowDeleting(sender As Object, e As GridViewDeleteEventArgs) Handles GridView2.RowDeleting
        Dim i As Integer = Convert.ToInt32(GridView2.DataKeys(e.RowIndex).Value)
        Dim cmd As New SqlCommand("delete from Cartmst where CartId=@id", cn)
        cmd.Parameters.AddWithValue("id", i)
        cmd.ExecuteNonQuery()
        GridView2.EditIndex = -1
        SearchMed()
    End Sub
End Class
