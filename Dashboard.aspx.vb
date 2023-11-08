
Imports System.Activities.Expressions
Imports System.Data
Imports System.Data.SqlClient
Imports System.Net

Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
    Dim Cmd As New SqlCommand
    Dim adp As SqlDataAdapter
    Dim ds As New DataSet
    Dim maxrow, inc As Integer
    Dim flag As String
    Dim t, f As String

    Private Sub Admin_Default_Load(sender As Object, e As EventArgs) Handles Me.Load
        cn.Open()
        If Not Me.IsPostBack Then
            Me.SearchMed()
        End If

        If Session("id") = "" Then
            Response.Redirect("login.aspx")
        End If
        Dim cmd As New SqlCommand("select count(*) from Usermst", cn)
        Dim c As String = cmd.ExecuteScalar()
        lbluser.Text = c
        Dim pending As New SqlCommand("select count(*) from Ordermaster where Orderstatus='pending'", cn)
        Dim p As String = pending.ExecuteScalar()
        lbpending.Text = p
        Dim delivered As New SqlCommand("select count(*) from Ordermaster where Orderstatus='Delivered'", cn)
        Dim dd As String = delivered.ExecuteScalar()
        lbdelivered.Text = dd
        Dim all As New SqlCommand("select count(*) from Ordermaster", cn)
        Dim aorder As String = all.ExecuteScalar()
        lball.Text = aorder
        Dim pre As New SqlCommand("select count(*) from Notifymst", cn)
        Dim request As String = pre.ExecuteScalar()
        lbrequest.Text = request
        Dim feed As New SqlCommand("select count(*) from Feedbackmst", cn)
        Dim fk As String = feed.ExecuteScalar()
        lbfk.Text = fk
        lbview.Text = Application("NoOfVisitors").ToString()
    End Sub

    Protected Sub Search(sender As Object, e As EventArgs)
        Me.SearchMed()
    End Sub

    Private Sub SearchMed()
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
        Dim cmd As New SqlCommand()
        Dim sql As String = "SELECT * FROM Productmst"
        If Not String.IsNullOrEmpty(txtSearch.Text.Trim()) Then
            sql += " WHERE PName LIKE @PName + '%'"
            cmd.Parameters.AddWithValue("@PName", txtSearch.Text.Trim())
        End If
        cmd.CommandText = sql
        cmd.Connection = con
        Using sda As New SqlDataAdapter(cmd)
            Dim dt As New DataTable()
            sda.Fill(dt)
            gvmed.DataSource = dt
            gvmed.DataBind()
        End Using
    End Sub

    Protected Sub OnPaging(sender As Object, e As GridViewPageEventArgs)
        gvmed.PageIndex = e.NewPageIndex
        Me.SearchMed()
    End Sub
End Class
