Imports System
Imports System.Activities.Statements
Imports System.Data.SqlClient
Imports System.Drawing
Imports System.Text.RegularExpressions
Imports System.Web.UI
Imports Org.BouncyCastle.Asn1.Cmp
Partial Class Admin_Default2
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("DBCon"))
    Dim Cmd As New SqlCommand
    Private Sub ToggleCheckState(ByVal checkState As Boolean)
        ' Iterate through the Products.Rows property
        For Each row As GridViewRow In GridView1.Rows
            ' Access the CheckBox
            Dim cb As CheckBox = row.FindControl("cbRows")
            If cb IsNot Nothing Then
                cb.Checked = checkState
            End If
        Next
    End Sub

    Private Sub CheckAll_Click(sender As Object, e As EventArgs) Handles CheckAll.Click
        ToggleCheckState(True)
    End Sub

    Private Sub UncheckAll_Click(sender As Object, e As EventArgs) Handles UncheckAll.Click
        ToggleCheckState(False)
    End Sub

    Private Sub change_Click(sender As Object, e As EventArgs) Handles change.Click
        cn.Open()
        For Each row As GridViewRow In GridView1.Rows

            Dim checkbox As CheckBox = CType(row.FindControl("cbRows"), CheckBox)





            If checkbox.Checked Then

                ' Retreive the Employee ID

                Dim employeeID As Integer = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Value)

                Try


                    Dim Query As String = "update  Ordermaster set Orderstatus=@Status where Orderid=@oid"
                    Cmd = New SqlCommand(Query, cn)
                    Cmd.Parameters.AddWithValue("@status", DropDownList1.Text)
                    Cmd.Parameters.AddWithValue("@oid", employeeID)
                    Cmd.ExecuteNonQuery()

                    Dim dt As New Data.DataSet
                    Dim q As String
                    q = "select * from Ordermaster where Orderid=" & employeeID
                    Dim da As New SqlDataAdapter(q, cn)
                    da.Fill(dt)


                    If (DropDownList1.Text = "Shipped") Then
                        Dim SM As New SendMail()
                        Dim Message As String = "Dear " & dt.Tables(0).Rows(0)("UName") & "," & vbCrLf & vbCrLf & " Your Order has been shipped and dispatched from the Bharat Medical And It's Dispatched By the Bharat Medical Facility" & vbCrLf & vbCrLf & " Product Name : " & dt.Tables(0).Rows(0)("Pname") & vbCrLf & " Delivery Address: " & dt.Tables(0).Rows(0)("UAddress") & vbCrLf & vbCrLf & " Thankyou for being a part of bharat medical"
                        Dim Subject As String = "Order Information"
                        Dim Email As String = dt.Tables(0).Rows(0)("User")
                        SM.sendMail(Email, Subject, Message)
                    End If


                Catch ex As Exception
                    MsgBox(ex.Message)

                End Try

                'SqlDataSource1.DeleteParameters("Id").DefaultValue = employeeID.ToString()

                'SqlDataSource1.Delete()

            End If

        Next row
        Response.Redirect("packed.aspx")
    End Sub

    Private Sub Admin_Default2_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("id") = "" Then
            Response.Redirect("login.aspx")
        End If
    End Sub
End Class
