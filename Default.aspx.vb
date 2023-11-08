Imports System.IO
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports iTextSharp.text
Imports iTextSharp.text.html.simpleparser
Imports iTextSharp.text.pdf
Partial Class Admin_Default
    Inherits System.Web.UI.Page

    Private Sub Admin_Default_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Me.BindGrid()
        End If
    End Sub
    Private Sub BindGrid()

        Dim strConnString As String = System.Configuration.ConfigurationManager.AppSettings("DBCon").ToString()
        Using con As New SqlConnection(strConnString)
            Using cmd As New SqlCommand("SELECT TOP 1 * FROM Usermst ORDER BY UId DESC")
                cmd.Parameters.AddWithValue("@name", "badar")
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    Using dt As New DataTable()
                        sda.Fill(dt)
                        GridView1.DataSource = dt
                        GridView1.DataBind()
                    End Using
                End Using
            End Using
        End Using
    End Sub
    Protected Sub OnPageIndexChanging(sender As Object, e As GridViewPageEventArgs)
        GridView1.PageIndex = e.NewPageIndex
        Me.BindGrid()
    End Sub
    Protected Sub ExportToPDF(sender As Object, e As EventArgs)
        Using sw As New StringWriter()
            Using hw As New HtmlTextWriter(sw)
                'To Export all pages
                GridView1.AllowPaging = False
                Me.BindGrid()

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
