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
Partial Class user_Default2
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
    Dim Cmd As New SqlCommand
    Dim adp As SqlDataAdapter
    Dim ds As New DataSet
    Dim maxrow, inc As Integer
    Dim flag As String
    Dim t, f As String

    Private Sub user_Default2_Load(sender As Object, e As EventArgs) Handles Me.Load
        cn.Open()

        'GridView1.PageSize = DropDownList1.Text
        If Session("id") = "" Then
            Response.Redirect("Signin.aspx")
        End If
    End Sub
    <Obsolete>
    Protected Sub ExportToPDF(sender As Object, e As EventArgs)

        Using sw As New StringWriter()
            Using hw As New HtmlTextWriter(sw)
                'To Export all pages
                GridView1.AllowPaging = False



                GridView1.RenderControl(hw)
                Dim sr As New StringReader(sw.ToString())
                Dim pdfDoc As New Document(PageSize.A4, 10.0F, 10.0F, 10.0F, 0.0F)
                Dim htmlparser As New HTMLWorker(pdfDoc)
                PdfWriter.GetInstance(pdfDoc, Response.OutputStream)
                pdfDoc.Open()
                Dim logo As iTextSharp.text.Image = iTextSharp.text.Image.GetInstance(Server.MapPath("~/Images/main.png"))
                logo.ScaleToFit(700, 100)
                pdfDoc.Add(logo)
                Dim header As New Paragraph("Bill Report " & Date.Today() & vbCrLf & vbCrLf & vbCrLf & vbCrLf)
                header.Alignment = Element.ALIGN_CENTER
                Dim headerfont As New iTextSharp.text.Font(iTextSharp.text.Font.BOLD, 16)
                header.Font = headerfont
                pdfDoc.Add(header)
                htmlparser.Parse(sr)
                pdfDoc.Close()

                Response.ContentType = "application/pdf"
                Response.AddHeader("content-disposition", "attachment;filename=Bill.pdf")
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
