Imports System.Data
Imports System.Data.SqlClient
Imports System.Net
Imports System.Reflection.Emit
Imports iTextSharp.text.pdf

Partial Class user_Default
    Inherits System.Web.UI.Page
    Dim user As String
    Dim product As String
    Dim i As Integer
    Dim show As String
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))


    Private Sub user_Default_Load(sender As Object, e As EventArgs) Handles Me.Load
        tbnot.Visible = False
        Dim inc, maxrow As Integer
        i = Request.QueryString("id").ToString()
        'Dim cn As New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\ASP\Mobile_shop\App_Data\client.mdf;Integrated Security=True")
        cn.Open()
        Dim cmd As New SqlCommand("select * from Productmst where Id=@pid", cn)
        cmd.Parameters.AddWithValue("@pid", i)
        Dim adp As New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        adp.Fill(ds, "Productmst")
        maxrow = ds.Tables("Productmst").Rows.Count

        inc = CInt(Session("inc"))
        If maxrow <= 0 Then
            Session("inc") = -1
            inc = CInt(Session("inc"))
            inc = i
            MsgBox("empty")
        End If
        If inc <> -1 Then
            lbdis.Text = "-" + ds.Tables("Productmst").Rows(inc).Item(11) + "%"
            lbtype.Text = ds.Tables("Productmst").Rows(inc).Item(4)
            show = ds.Tables("Productmst").Rows(inc).Item(6)
            lbname.Text = ds.Tables("Productmst").Rows(inc).Item(1)
            lbprice.Text = "₹" + ds.Tables("Productmst").Rows(inc).Item(2)
            lbdes.Text = ds.Tables("Productmst").Rows(inc).Item(5)
            lbactual.Text = "₹" + ds.Tables("Productmst").Rows(inc).Item(10)
            imgmed.ImageUrl = ds.Tables("Productmst").Rows(inc).Item(9)
            product = ds.Tables("Productmst").Rows(inc).Item(1)
        Else

            lbname.Text = "no record"




        End If
        If show > 0 Then
            Image1.Visible = False
            notify.Visible = False
            btncart.Visible = True

        Else
            notify.Visible = True
            btncart.Visible = False
            Image1.Visible = True
            lbdis.Visible = False
            lbmrp.Visible = False
            lbactual.Visible = False
            lbprice.Visible = False
            Label1.Visible = False
            DropDownList1.Visible = False
        End If
        cn.Close()
    End Sub

    Protected Sub btncart_Click(sender As Object, e As EventArgs) Handles btncart.Click
        cn.Open()

        If Session("id") = "" Then
            Response.Redirect("Signin.aspx")
        Else
            user = Session("id")

        End If
        Dim q As String
        Dim total As Int32 = Convert.ToInt32((lbactual.Text) * (DropDownList1.Text))

        q = "Insert into Cartmst values(@user,@pid,@quantity,@total)"
        Dim cmd As New SqlCommand(q, cn)
        cmd.Parameters.AddWithValue("@quantity", DropDownList1.Text)
        cmd.Parameters.AddWithValue("@pid", i)
        cmd.Parameters.AddWithValue("@user", user)
        cmd.Parameters.AddWithValue("@total", total)
        cmd.ExecuteNonQuery()


        Response.Redirect("Cart.aspx")


        cn.Close()

    End Sub

    Private Sub notify_Click(sender As Object, e As EventArgs) Handles notify.Click
        cn.Open()
        If Session("id") = "" Then
            tbnot.Visible = True
            If tbnot.Text = "" Then
                Response.Write("<script>alert('Enter Your Email');</script>")
            Else
                Dim n As String
                n = "Insert into Notifymst values(@Product,@user)"
                Dim cmd As New SqlCommand(n, cn)
                cmd.Parameters.AddWithValue("@Product", product)
                cmd.Parameters.AddWithValue("@user", tbnot.Text)

                cmd.ExecuteNonQuery()
                Response.Write("<script>alert('We Will Notify You On Your Email');</script>")
            End If

        Else
            Dim ses As String = Session("id")
            Dim n As String
            n = "Insert into Notifymst values(@Product,@user)"
            Dim cmd As New SqlCommand(n, cn)
            cmd.Parameters.AddWithValue("@Product", product)
            cmd.Parameters.AddWithValue("@user", ses)

            cmd.ExecuteNonQuery()

            Response.Write("<script>alert('We Will Notify You On Your Email');</script>")
        End If
        cn.Close()
    End Sub
End Class
