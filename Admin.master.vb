
Imports System.ServiceModel.Channels

Partial Class Admin_Admin
    Inherits System.Web.UI.MasterPage

    Private Sub Admin_Admin_Load(sender As Object, e As EventArgs) Handles Me.Load
        'lbsession.Text = Session("id")
        'If lbsession.Text = "" Then
        '    Response.Redirect("Login.aspx")
        'End If

    End Sub

    Private Sub btnlogout_Click(sender As Object, e As EventArgs) Handles btnlogout.Click
        Session.Abandon()
        Session.Clear()
        Session.RemoveAll()

        Response.Redirect("login.aspx")
    End Sub
End Class

