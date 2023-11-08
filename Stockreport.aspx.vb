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
        'GridView1.PageSize = DropDownList1.Text
        If Session("id") = "" Then
            Response.Redirect("login.aspx")
        End If
        Dim cmd As New SqlCommand("select count(*) from Usermst", cn)
        Dim c As String = cmd.ExecuteScalar()

    End Sub
    Protected Sub Search(sender As Object, e As EventArgs)
        Me.SearchMed()
    End Sub

    Private Sub SearchMed()
        Dim con As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
        Dim cmd As New SqlCommand()
        Dim sql As String = "SELECT * FROM Productmst  WHERE PName LIKE @PName + '%' And Category LIKE @cat + '%' And Types LIKE @type + '%'"
        cmd.Parameters.AddWithValue("@type", ddltype.Text.Trim())

        cmd.Parameters.AddWithValue("@cat", ddlcat.Text.Trim())
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
        Dim a1 As String = ddlcat.Text
        Dim a2 As String = ddltype.Text
        Using sw As New StringWriter()
            Using hw As New HtmlTextWriter(sw)
                'To Export all pages
                GridView1.AllowPaging = False

                Me.SearchMed()

                GridView1.RenderControl(hw)
                Dim sr As New StringReader(sw.ToString())
                Dim pdfDoc As New Document(PageSize.A4, 10.0F, 10.0F, 10.0F, 0.0F)
                Dim htmlparser As New HTMLWorker(pdfDoc)
                PdfWriter.GetInstance(pdfDoc, Response.OutputStream)
                pdfDoc.Open()
                Dim logo As iTextSharp.text.Image = iTextSharp.text.Image.GetInstance(Server.MapPath("~/Images/main.png"))
                logo.ScaleToFit(700, 100)
                pdfDoc.Add(logo)
                Dim header As New Paragraph("Stock Report " & Date.Today() & vbCrLf & "Category : " & a1 + "" & vbCrLf& + "Type :" & a2 + "" & vbCrLf & vbCrLf & vbCrLf)
                header.Alignment = Element.ALIGN_CENTER
                Dim headerfont As New iTextSharp.text.Font(iTextSharp.text.Font.BOLD, 16)
                header.Font = headerfont
                pdfDoc.Add(header)
                htmlparser.Parse(sr)
                pdfDoc.Close()

                Response.ContentType = "application/pdf"
                Response.AddHeader("content-disposition", "attachment;filename=Stock.pdf")
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
