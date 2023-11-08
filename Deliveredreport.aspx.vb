Imports System.Activities.Expressions
Imports System.Data
Imports System.Data.SqlClient
Imports System.Net
Imports System.Runtime.InteropServices.ComTypes
Imports System.IO
Imports System.Configuration
Imports iTextSharp.text.Image
Imports iTextSharp.text
Imports iTextSharp.text.html.simpleparser
Imports iTextSharp.text.pdf
Imports System.Runtime.Remoting.Messaging
Imports iTextSharp.awt.geom.Point2D
Imports Microsoft.VisualBasic.Logging
Imports System.Drawing
Partial Class Admin_Default2
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
    Dim Cmd As New SqlCommand
    Dim adp As SqlDataAdapter
    Private Sub SearchMed()
        'Dim startdate As String = tbstart.Text
        'Dim enddate As String = tbend.Text
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
        Dim cmd As New SqlCommand()
        Dim sql As String = "SELECT * FROM Ordermaster  WHERE [Orderstatus]=@Orderstatus and Pname LIKE @PName + '%'  "
        cmd.Parameters.AddWithValue("@Orderstatus", "Delivered")
        cmd.Parameters.AddWithValue("@PName", txtSearch.Text)

        cmd.CommandText = sql
        cmd.Connection = con
        Using sda As New SqlDataAdapter(cmd)
            Dim dt As New DataTable()
            sda.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()
        End Using
    End Sub
    Protected Sub Search(sender As Object, e As EventArgs)
        Me.SearchMed()
    End Sub

    Private Sub Admin_Default2_Load(sender As Object, e As EventArgs) Handles Me.Load
        cn.Open()
        If Not Me.IsPostBack Then
            Me.SearchMed()
        End If
        'GridView1.PageSize = DropDownList1.Text
        If Session("id") = "" Then
            Response.Redirect("login.aspx")
        End If
    End Sub
    <Obsolete>
    Protected Sub ExportToPDF(sender As Object, e As EventArgs)
        'Dim a1 As String = tbstart.Text
        'Dim a2 As String = tbend.Text
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
                Dim logo As iTextSharp.text.Image = iTextSharp.text.Image.GetInstance(Server.MapPath("~/Images/main.png"))
                logo.ScaleToFit(700, 100)
                pdfDoc.Add(logo)
                Dim header As New Paragraph("Order Report " & Date.Today() & vbCrLf & vbCrLf & vbCrLf & vbCrLf)
                header.Alignment = Element.ALIGN_CENTER
                Dim headerfont As New iTextSharp.text.Font(iTextSharp.text.Font.BOLD, 16)
                header.Font = headerfont
                pdfDoc.Add(header)
                htmlparser.Parse(sr)
                pdfDoc.Close()

                Response.ContentType = "application/pdf"
                Response.AddHeader("content-disposition", "attachment;filename=Order.pdf")
                Response.Cache.SetCacheability(HttpCacheability.NoCache)
                Response.Write(pdfDoc)
                Response.[End]()
            End Using
        End Using
    End Sub
    Public Overrides Sub VerifyRenderingInServerForm(control As Control)
        ' Verifies that the control is rendered 
    End Sub
    Protected Sub btnClear_Click(sender As Object, e As ImageClickEventArgs) Handles btnClear.Click
        '  Simple clean up text to return the Gridview to it's default state
        txtSearch.Text = ""
        Me.SearchMed()
    End Sub
End Class
