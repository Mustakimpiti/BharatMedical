
Imports System.Data.SqlClient
Imports iTextSharp.text.pdf.AcroFields

Partial Class user_Default2
    Inherits System.Web.UI.Page
    Protected Sub OnDelete(ByVal sender As Object, ByVal e As EventArgs)
        Dim item As DataListItem = TryCast((TryCast(sender, Button)).NamingContainer, DataListItem)
        Dim id As Integer = Convert.ToInt32((TryCast(item.FindControl("OrderidLabel"), Label)).Text.Trim())
        Dim cmd As SqlCommand = New SqlCommand()
        cmd.CommandText = "DELETE FROM Ordermaster WHERE Orderid = @Id"
        cmd.Parameters.AddWithValue("@Id", id)
        InsertUpdateDelete(cmd)
        Response.Redirect("myorders.aspx")

    End Sub
    Private Sub InsertUpdateDelete(ByVal cmd As SqlCommand)
        Dim conString As String = System.Configuration.ConfigurationManager.AppSettings("DBCon")
        Using con As SqlConnection = New SqlConnection(conString)
            cmd.Connection = con
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
        End Using
    End Sub

    Private Sub DataList1_Load(sender As Object, e As EventArgs) Handles DataList1.Load



    End Sub

    Private Sub DataList1_ItemCommand(source As Object, e As DataListCommandEventArgs) Handles DataList1.ItemCommand
        If e.CommandName = "viewdetail" Then
            Response.Redirect("bill.aspx?id=" + e.CommandArgument.ToString())

        End If
    End Sub
End Class
