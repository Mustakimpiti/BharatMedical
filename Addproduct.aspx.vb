Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web
Imports System.Data
Imports System.Data.SqlClient
Imports System.Net
Imports System.IO
Imports System.Runtime.CompilerServices
Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
    Dim cmd As SqlCommand
    Dim MRP, Dis, Main, Actual As Int32


    Private Sub Admin_Default_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("id") = "" Then
            Response.Redirect("login.aspx")
        End If
    End Sub

    Protected Sub btninsert_Click(sender As Object, e As EventArgs) Handles btninsert.Click
        Dim str As String = fu1.FileName
        fu1.PostedFile.SaveAs(Server.MapPath("~/Images/" & str))
        Dim image As String = "~/Images/" & str.ToString()

        cn.Open()

        Dis = Convert.ToInt32((tbprice.Text * tbdiscount.Text) / 100)
        Actual = Convert.ToInt32(tbprice.Text - Dis)

        Dim q As String
        q = "Insert into Productmst values(@name,@price,@category,@types,@desc,@quantity,@mfg,@exp,@img,@Actual,@discount)"
        Dim cmd As New SqlCommand(q, cn)
        cmd.Parameters.AddWithValue("@name", tbpname.Text)
        cmd.Parameters.AddWithValue("@price", tbprice.Text)
        cmd.Parameters.AddWithValue("@category", DL1.Text)
        cmd.Parameters.AddWithValue("@types", dltype.Text)
        cmd.Parameters.AddWithValue("@desc", tbdesc.Text)
        cmd.Parameters.AddWithValue("@quantity", tbqty.Text)
        cmd.Parameters.AddWithValue("@mfg", tbmfg.Text)
        cmd.Parameters.AddWithValue("@exp", tbexp.Text)
        cmd.Parameters.AddWithValue("@img", image)
        cmd.Parameters.AddWithValue("@Actual", Actual)
        cmd.Parameters.AddWithValue("@discount", tbdiscount.Text)
        cmd.ExecuteNonQuery()
        MsgBox("INSERTED")
        'Response.Write("<script>alert('Medicine Added');</script>")
        Response.Redirect("Addproduct.aspx")


        cn.Close()

    End Sub
End Class
