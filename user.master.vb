
Imports System.ServiceModel.Channels

Partial Class user_user
    Inherits System.Web.UI.MasterPage

    Private Sub user_user_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Session("id") = "" Then
            lblogout.Visible = False
            lbsignin.Visible = True


        Else
            lblogout.Visible = True
            lbsignin.Visible = False
        End If
    End Sub

    Private Sub lblogout_Click(sender As Object, e As EventArgs) Handles lblogout.Click
        Session.Abandon()
        Session.Clear()
        Session.RemoveAll()
        Response.Redirect("Home.aspx")
    End Sub

    Private Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Response.Redirect("profile.aspx")
    End Sub

    Private Sub lbsignin_Click(sender As Object, e As EventArgs) Handles lbsignin.Click
        Response.Redirect("Signin.aspx")
    End Sub
End Class

