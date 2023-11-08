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
Partial Class Admin_stock2
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
    Dim Cmd As New SqlCommand
    Dim adp As SqlDataAdapter
    Dim ds As New DataSet
    Dim maxrow, inc As Integer
    Dim flag As String
    Dim t, f As String

    Private Sub Admin_stock2_Load(sender As Object, e As EventArgs) Handles Me.Load
        cn.Open()
        If Not Me.IsPostBack Then
            Me.SearchMed()
        End If
        GridView1.PageSize = DropDownList1.Text

        Dim cmd As New SqlCommand("select count(*) from Usermst", cn)
        Dim c As String = cmd.ExecuteScalar()
    End Sub
    Protected Sub Search(sender As Object, e As EventArgs)
        Me.SearchMed()
    End Sub

    Private Sub SearchMed()
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
        Dim cmd As New SqlCommand()
        Dim sql As String = "SELECT * FROM Productmst  WHERE PName LIKE @PName + '%'"

        cmd.Parameters.AddWithValue("@PName", txtSearch.Text.Trim())


        cmd.CommandText = sql
        cmd.Connection = con
        Using sda As New SqlDataAdapter(cmd)
            Dim dt As New DataTable()
            sda.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()
        End Using
    End Sub

    Protected Sub OnPaging(sender As Object, e As GridViewPageEventArgs)
        GridView1.PageIndex = e.NewPageIndex
        Me.SearchMed()
    End Sub

    <Obsolete>
    Protected Sub ExportToPDF(sender As Object, e As EventArgs)
        Using sw As New StringWriter()
            Using hw As New HtmlTextWriter(sw)
                'To Export all pages
                GridView1.AllowPaging = False
                Me.SearchMed()

                GridView1.RenderControl(hw)
                Dim sr As New StringReader(sw.ToString())
                Dim pdfDoc As New Document(PageSize.A2, 10.0F, 10.0F, 10.0F, 0.0F)
                Dim htmlparser As New HTMLWorker(pdfDoc)
                PdfWriter.GetInstance(pdfDoc, Response.OutputStream)
                pdfDoc.Open()
                htmlparser.Parse(sr)
                pdfDoc.Close()

                Response.ContentType = "application/pdf"
                Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.pdf")
                Response.Cache.SetCacheability(HttpCacheability.NoCache)
                Response.Write(pdfDoc)
                Response.[End]()
            End Using
        End Using
    End Sub
    Public Overrides Sub VerifyRenderingInServerForm(control As Control)
        ' Verifies that the control is rendered 
    End Sub
End Class
