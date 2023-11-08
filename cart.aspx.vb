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
    Dim index As Decimal
    Private Sub user_Default_Load(sender As Object, e As EventArgs) Handles Me.Load
        cn.Open()



        If Session("id") = "" Then
            Response.Redirect("Signin.aspx")
        ElseIf Not Me.IsPostBack Then
            Me.SearchMed()

        End If

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
            'Calculate Sum and display in Footer Row
            index = dt.AsEnumerable().Sum(Function(row) row.Field(Of String)("Total"))
            'GridView2.FooterRow.Cells(3).Text = "Total"
            'GridView2.FooterRow.Cells(3).HorizontalAlign = HorizontalAlign.Right
            'GridView2.FooterRow.Cells(4).Text = index.ToString("N2")
            Label1.Text = index
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

    Private Sub btncontinue_Click(sender As Object, e As EventArgs) Handles btncontinue.Click
        Response.Redirect("shop.aspx")
    End Sub

    Private Sub btncheckout_Click(sender As Object, e As EventArgs) Handles btncheckout.Click
        Response.Redirect("checkout.aspx")
    End Sub

    Protected Sub btnclear_Click(sender As Object, e As EventArgs) Handles btnclear.Click
        qs = Session("id")
        Dim delete As String = "DELETE FROM [Cartmst] WHERE [User] = @Id"
        Dim cmd As New SqlCommand(delete, cn)
        cmd.Parameters.AddWithValue("@Id", qs)

        cmd.ExecuteNonQuery()

        SearchMed()
    End Sub
End Class
