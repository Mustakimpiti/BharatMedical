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
Imports Org.BouncyCastle.Utilities.Net
Imports System.Reflection
Imports System.Reflection.Emit
Imports Org.BouncyCastle.Utilities

Partial Class user_Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
    Dim cmd As SqlCommand
    Dim adp As SqlDataAdapter
    Dim ds As New DataSet
    Dim maxrow, inc As Integer
    Dim flag As String
    Dim t, f As String
    Dim s As String
    Dim index As Decimal
    Dim qs As String
    Dim tax, ordertotal As Int32
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

            lbtotal.Text = index
            'tax = Convert.ToInt32((lbtotal.Text * lbtext.Text) / 100)
            'lbtaxtamount.Text = tax

            'lbordertotal.Text = a + b
            lbordertotal.Text = lbtotal.Text

        End Using
    End Sub

    Private Sub diprecord()
        Try

            inc = CInt(Session("inc"))
            If maxrow <= 0 Then
                Session("inc") = -1
                inc = CInt(Session("inc"))
                MsgBox("empty table")
            End If
            If inc <> -1 Then
                tbfname.Text = ds.Tables("Usermst").Rows(inc).Item(1)
                tblname.Text = ds.Tables("Usermst").Rows(inc).Item(2)
                tbhouse.Text = ds.Tables("Usermst").Rows(inc).Item(7)
                tbarea.Text = ds.Tables("Usermst").Rows(inc).Item(8)
                tbpincode.Text = ds.Tables("Usermst").Rows(inc).Item(9)
                tbcity.Text = ds.Tables("Usermst").Rows(inc).Item(10)



                tbphone.Text = ds.Tables("Usermst").Rows(inc).Item(4)







            End If
        Catch ex As Exception

        End Try
    End Sub
    Private Sub connect()
        s = Session("id")
        Try
            cn.Open()
            cmd = New SqlCommand("select * from Usermst where UEmail='" + s + "'", cn)
            adp = New SqlDataAdapter(cmd)
            adp.Fill(ds, "Usermst")
            maxrow = ds.Tables("Usermst").Rows.Count



        Catch ex As Exception

        End Try
    End Sub

    Private Sub user_Default_Load(sender As Object, e As EventArgs) Handles Me.Load
        FileUpload1.Visible = False
        Label1.Visible = False
        If Session("id") = "" Then
            Response.Redirect("Signin.aspx")
        End If
        connect()
        If Not IsPostBack Then
            flag = "N"
        End If
        If flag = "N" Then
            diprecord()
        End If
        If Session("id") = "" Then
            Response.Redirect("Signin.aspx")
        ElseIf Not Me.IsPostBack Then
            Me.SearchMed()

        End If
        Dim s As String = Session("id")
        Dim query As String = "SELECT * FROM Cartmst INNER JOIN Productmst ON Cartmst.Id=Productmst.Id WHERE ([User] = @u And PName='Doxycycline' OR PName='COLDREX' )"

        Dim cmd As New SqlCommand(query, cn)
        cmd.Parameters.AddWithValue("@u", s)
        Dim dr As SqlDataReader = cmd.ExecuteReader()
        If dr.Read() Then
            FileUpload1.Visible = True
            Label1.Visible = True
        Else
            FileUpload1.Visible = False
            Label1.Visible = False
        End If
        cn.Close()
    End Sub

    Private Sub btnsave_Click(sender As Object, e As EventArgs) Handles btnsave.Click
        Response.Redirect("addresscheck.aspx")
    End Sub

    Private Sub btnorder_Click(sender As Object, e As EventArgs) Handles btnorder.Click
        cn.Open()
        Dim username As String = tbfname.Text + tblname.Text
        Dim usermobile As String = tbphone.Text
        Dim useraddress As String = tbhouse.Text + " " + " " + tbarea.Text + " " + " " + tbpincode.Text + " " + " " + tbcity.Text
        qs = Session("id")
        Dim delete As String
        If FileUpload1.Visible = True Then



            For i As Integer = 0 To GridView2.Rows.Count - 1
                Dim str As String = FileUpload1.FileName
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/" & str))
                Dim image As String = "~/Images/" & str.ToString()
                Dim img As Image = GridView2.Rows(i).Cells(4).Controls("1")
                Dim url As String = img.ImageUrl
                Dim product As String = GridView2.Rows(i).Cells(0).Text
                Dim price As String = GridView2.Rows(i).Cells(1).Text
                Dim quantity As String = GridView2.Rows(i).Cells(2).Text
                Dim amount As String = GridView2.Rows(i).Cells(3).Text
                Dim odate As String = Date.Today()


                Add product  order master

                Dim insert As String = "Insert into Ordermaster ([UName],[Umobile],[UAddress],[Pname],[Productprice],[Quantity],[Totalamount],[OrderDate],[Orderstatus],[Image],[Priscription],[User]) Values(@uname,@umobile,@uaddress,@name,@price,@qty,@total,@date,@orderstatus,@img,@priscription,@user)"
                Dim insercmd As New SqlCommand(insert, cn)
                Dim ses As String = Session("id")
                insercmd.Parameters.AddWithValue("@user", ses)
                insercmd.Parameters.AddWithValue("@uname", username)
                insercmd.Parameters.AddWithValue("@umobile", usermobile)
                insercmd.Parameters.AddWithValue("@uaddress", useraddress)
                insercmd.Parameters.AddWithValue("@date", odate)

                insercmd.Parameters.AddWithValue("@orderstatus", "Pending")
                insercmd.Parameters.AddWithValue("@img", url)
                insercmd.Parameters.AddWithValue("@name", product)
                insercmd.Parameters.AddWithValue("@price", price)
                insercmd.Parameters.AddWithValue("@qty", quantity)
                insercmd.Parameters.AddWithValue("@total", amount)
                insercmd.Parameters.AddWithValue("@priscription", image)

                insercmd.ExecuteNonQuery()

                Dim selsect As New SqlCommand("select Quantity from Productmst where PName=@pname", cn)
                selsect.Parameters.AddWithValue("@pname", product)
                Dim c As String = selsect.ExecuteScalar()
                Dim pquantity As Int32 = c

                Dim stock As Int32 = pquantity - quantity
                Dim update As String = "Update Productmst set Quantity=@q  where PName=@product"
                Dim updatecmd As New SqlCommand(update, cn)
                updatecmd.Parameters.AddWithValue("@q", stock)
                updatecmd.Parameters.AddWithValue("@product", product)


                updatecmd.ExecuteNonQuery()


            Next





        Else
            For i As Integer = 0 To GridView2.Rows.Count - 1
                'Dim str As String = FileUpload1.FileName
                'FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/" & str))
                'Dim image As String = "~/Images/" & str.ToString()
                Dim image As String = "~/Images/no.jpg"
                Dim img As Image = GridView2.Rows(i).Cells(4).Controls("1")
                Dim url As String = img.ImageUrl
                Dim product As String = GridView2.Rows(i).Cells(0).Text
                Dim price As String = GridView2.Rows(i).Cells(1).Text
                Dim quantity As String = GridView2.Rows(i).Cells(2).Text
                Dim amount As String = GridView2.Rows(i).Cells(3).Text
                Dim odate As String = Date.Today()

                Dim insert As String = "Insert into Ordermaster ([UName],[Umobile],[UAddress],[Pname],[Productprice],[Quantity],[Totalamount],[OrderDate],[Orderstatus],[Image],[Priscription],[User]) Values(@uname,@umobile,@uaddress,@name,@price,@qty,@total,@date,@orderstatus,@img,@pri,@user)"
                Dim insertcmd As New SqlCommand(insert, cn)
                Dim ses As String = Session("id")
                insertcmd.Parameters.AddWithValue("@user", ses)
                insertcmd.Parameters.AddWithValue("@uname", username)
                insertcmd.Parameters.AddWithValue("@umobile", usermobile)
                insertcmd.Parameters.AddWithValue("@uaddress", useraddress)
                insertcmd.Parameters.AddWithValue("@date", odate)

                insertcmd.Parameters.AddWithValue("@orderstatus", "Pending")
                insertcmd.Parameters.AddWithValue("@img", url)
                insertcmd.Parameters.AddWithValue("@pri", image)
                insertcmd.Parameters.AddWithValue("@name", product)
                insertcmd.Parameters.AddWithValue("@price", price)
                insertcmd.Parameters.AddWithValue("@qty", quantity)
                insertcmd.Parameters.AddWithValue("@total", amount)


                insertcmd.ExecuteNonQuery()

                Dim selsectt As New SqlCommand("select Quantity from Productmst where PName=@pname", cn)
                selsectt.Parameters.AddWithValue("@pname", product)
                Dim c As String = selsectt.ExecuteScalar()
                Dim pquantity As Int32 = c

                Dim stock As Int32 = pquantity - quantity
                Dim update As String = "Update Productmst set Quantity=@q  where PName=@product"
                Dim updattecmd As New SqlCommand(update, cn)
                updattecmd.Parameters.AddWithValue("@q", stock)
                updattecmd.Parameters.AddWithValue("@product", product)


                updattecmd.ExecuteNonQuery()


            Next





        End If
        delete = "DELETE FROM [Cartmst] WHERE [User] = @Id"
        Dim cmd As New SqlCommand(delete, cn)
        cmd.Parameters.AddWithValue("@Id", qs)

        cmd.ExecuteNonQuery()
        Response.Redirect("thankyou.aspx")


        SearchMed()


        cn.Close()








    End Sub
End Class
