
Imports System.Data
Imports System.Data.SqlClient

Partial Class Admin_img
    Inherits System.Web.UI.Page
    Dim i As Integer
    Dim product As String

    Dim show As String
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))

    Private Sub Admin_img_Load(sender As Object, e As EventArgs) Handles Me.Load
        i = Request.QueryString("PId").ToString()
        cn.Open()
        Dim inc, maxrow As Integer
        Dim cmd As New SqlCommand("select * from Ordermaster where Orderid=@pid", cn)
        cmd.Parameters.AddWithValue("@pid", i)
        Dim adp As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        adp.Fill(ds, "Ordermaster")
        maxrow = ds.Tables("Ordermaster").Rows.Count

        inc = CInt(Session("inc"))
        If maxrow <= 0 Then
            Session("inc") = -1
            inc = CInt(Session("inc"))
            inc = i
            MsgBox("empty")
        End If
        If inc <> -1 Then

            Image1.ImageUrl = ds.Tables("Ordermaster").Rows(inc).Item(12)

        Else






        End If
        cn.Close()
    End Sub
End Class
