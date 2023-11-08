Imports System
Imports System.Text.RegularExpressions
Imports System.Web.UI
Imports Org.BouncyCastle.Asn1.Cmp

Partial Class Admin_Default
    Inherits System.Web.UI.Page
    'Create a String To store our search results
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
    Private Sub GridView1_RowDeleted(sender As Object, e As GridViewDeletedEventArgs) Handles GridView1.RowDeleted
        Response.Write("<script>alert('Record deleted');</script>")
    End Sub

    Private Sub GridView1_RowUpdated(sender As Object, e As GridViewUpdatedEventArgs) Handles GridView1.RowUpdated
        Response.Write("<script>alert('Record Updated');</script>")
    End Sub

    Private Sub GridView1_RowUpdating(sender As Object, e As GridViewUpdateEventArgs) Handles GridView1.RowUpdating
        Dim fu1 As New FileUpload
        fu1 = GridView1.Rows(e.RowIndex).FindControl("fuPhoto")
        If fu1.HasFile Then
            Dim str As String = fu1.FileName
            fu1.PostedFile.SaveAs(Server.MapPath("~/Images/" & str))
            Dim image As String = "~/Images/" & str.ToString()
            e.NewValues(10) = image
        End If

    End Sub

    Private Sub Admin_Default_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("id") = "" Then
            Response.Redirect("login.aspx")
        End If
        If (GridView1.Rows.Count > 0) Then
            GridView1.UseAccessibleHeader = True
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader

        End If
        GridView1.PageSize = DropDownList1.Text
    End Sub
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

    Private Sub DeleteSelectedProducts_Click(sender As Object, e As EventArgs) Handles DeleteSelectedProducts.Click
        For Each row As GridViewRow In GridView1.Rows

            Dim checkbox As CheckBox = CType(row.FindControl("cbRows"), CheckBox)

            'Check if the checkbox is checked.

            'value in the HtmlInputCheckBox's Value property is set as the //value of the delete command's parameter.



            If checkbox.Checked Then

                ' Retreive the Employee ID

                Dim employeeID As Integer = Convert.ToInt32(GridView1.DataKeys(row.RowIndex).Value)

                ' Pass the value of the selected Employye ID to the Delete //command.

                SqlDataSource1.DeleteParameters("Id").DefaultValue = employeeID.ToString()

                SqlDataSource1.Delete()

            End If

        Next row
    End Sub

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
