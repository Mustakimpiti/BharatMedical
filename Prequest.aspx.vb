
Imports System.Data.SqlClient

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


    Protected Sub send_Click(sender As Object, e As EventArgs) Handles send.Click
        cn.Open()
        For Each row As GridViewRow In GridView1.Rows

            Dim checkbox As CheckBox = CType(row.FindControl("cbRows"), CheckBox)





            If checkbox.Checked Then

                ' Retreive the Employee ID

                Dim employeeID As Integer = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Value)

                Try


                    Dim dt As New Data.DataSet
                    Dim q As String
                    q = "select * from Notifymst where RId=" & employeeID
                    Dim da As New SqlDataAdapter(q, cn)
                    da.Fill(dt)



                    Dim SM As New SendMail()
                    Dim Message As String = "Hello Dear" & vbCrLf & " Your Requested Product " & dt.Tables(0).Rows(0)("Product") & " " & "Now Available On Our Shop So Please Keep Check It" & vbCrLf & " Thankyou for being a part of bharat medical"
                    Dim Subject As String = "Order Information"
                    Dim Email As String = dt.Tables(0).Rows(0)("User")
                    SM.sendMail(Email, Subject, Message)



                    Dim Query As String = "DELETE FROM Notifymst WHERE RId = @Id"
                    Cmd = New SqlCommand(Query, cn)

                    Cmd.Parameters.AddWithValue("@Id", employeeID)
                    Cmd.ExecuteNonQuery()






                Catch ex As Exception
                    'MsgBox(ex.Message)

                End Try


                'SqlDataSource1.DeleteParameters("Id").DefaultValue = employeeID.ToString()

                'SqlDataSource1.Delete()

            End If

        Next row
        Response.Redirect("Prequest.aspx")
    End Sub

    Private Sub Admin_Default2_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("id") = "" Then
            Response.Redirect("login.aspx")
        End If
    End Sub
    Private SearchString As String = ""
    Public Function HighlightText(ByVal InputTxt As String) As String
        Dim Search_Str As String = txtSearch.Text
        ' Setup the regular expression and add the Or operator.
        Dim RegExp As Regex = New Regex(Search_Str.Replace(" ", "|").Trim, RegexOptions.IgnoreCase)
        ' Highlight keywords by calling the
        'delegate each time a keyword is found.
        Return RegExp.Replace(InputTxt, New MatchEvaluator(AddressOf ReplaceKeyWords))
    End Function

    Public Function ReplaceKeyWords(ByVal m As Match) As String
        Return ("<span class=highlight>" + m.Value + "</span>")
    End Function
    Protected Sub btnSearch_Click(sender As Object, e As ImageClickEventArgs) Handles btnSearch.Click
        '  Set the value of the SearchString so it gets
        SearchString = txtSearch.Text
    End Sub

    Protected Sub btnClear_Click(sender As Object, e As ImageClickEventArgs) Handles btnClear.Click
        '  Simple clean up text to return the Gridview to it's default state
        txtSearch.Text = ""
        SearchString = ""
        GridView1.DataBind()
    End Sub
End Class
