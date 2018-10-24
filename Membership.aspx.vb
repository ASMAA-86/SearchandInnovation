
Imports System.Data.SqlClient
Imports System.Data
Imports System.IO
Imports System
Imports System.Collections.Generic
Imports System.ComponentModel
Imports System.Drawing
Imports System.Linq
Imports System.Text





Partial Class _Default
    Inherits System.Web.UI.Page

 

    Sub AddStudent()

        Dim connStr As String = ConfigurationManager.ConnectionStrings("researchdb").ConnectionString
        Dim conn As SqlConnection
        conn = New SqlConnection(connStr)
        conn.Open()
        Dim cmd As SqlCommand = New SqlCommand()
        Dim da As SqlDataAdapter = New SqlDataAdapter()
        Dim dt As DataTable = New DataTable()
        cmd.CommandType = CommandType.Text
        cmd.Connection = conn



        cmd = New SqlCommand("INSERT INTO [ResearchInv]  (FullName, StudentId, CollageName, DeptName, StudyLevel,Email,PhoneNum,Scope,Tittle,ExpIdea,PrevResearch,SameIdea,AddIdea,SaveIdea,Reasons,DocResearchInv,DocCV ) VALUES (@FullName, @StudentId, @CollageName, @DeptName, @StudyLevel,@Email,@PhoneNum,@Scope,@Tittle,@ExpIdea,@PrevResearch,@SameIdea,@AddIdea,@SaveIdea,@Reasons,@DocResearchInv,@DocCV)", conn)


        cmd.Parameters.Add(New SqlParameter("@FullName", Name.Text))
        cmd.Parameters.Add(New SqlParameter("@StudentId", St_ID.Text))
        cmd.Parameters.Add(New SqlParameter("@CollageName", Collage_List.SelectedItem.Text))
        cmd.Parameters.Add(New SqlParameter("@DeptName", Dept.Text))
        cmd.Parameters.Add(New SqlParameter("@StudyLevel", St_level.Text))
        cmd.Parameters.Add(New SqlParameter("@Email", Email.Text))
        cmd.Parameters.Add(New SqlParameter("@PhoneNum", PhoneNum.Text))
        cmd.Parameters.Add(New SqlParameter("@Scope", ScopeList.Text))
        cmd.Parameters.Add(New SqlParameter("@Tittle", tittle.Text))
        cmd.Parameters.Add(New SqlParameter("@ExpIdea", Exp_Idea.Text))
        cmd.Parameters.Add(New SqlParameter("@PrevResearch", Pre_List.SelectedItem.Text))
        cmd.Parameters.Add(New SqlParameter("@SameIdea", Same_List.SelectedItem.Text))
        cmd.Parameters.Add(New SqlParameter("@SaveIdea", Save_List.SelectedItem.Text))
        cmd.Parameters.Add(New SqlParameter("@AddIdea", Add_List.SelectedItem.Text))
        cmd.Parameters.Add(New SqlParameter("@Reasons", Reasons.Text))
        cmd.Parameters.Add(New SqlParameter("@DocResearchInv", Session("Formfile").ToString()))
        cmd.Parameters.Add(New SqlParameter("@DocCV", Session("CVfile").ToString()))
        da.SelectCommand = cmd
        da.Fill(dt)

        conn.Close()


    End Sub


    Private Function UploadFile(ByVal Type As String, ByVal file As String) As String

        Dim dtmTest As String

        Dim Path As String

        dtmTest = DateValue(Now) & TimeValue(Now)

        Path = file + dtmTest

        Path = Path.Replace("/", "")

        Path = Path.Replace(":", "")

        Path = Path.Replace(" ", "")

        Path = Path.Replace(".", "")

        If Type = "application/pdf" Then

            Path = Path & ".pdf"

        Else

            Return "typeError"

        End If



        Return Path

    End Function





    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Session("CVfile") = ""
            Session("Formfile") = ""
        End If
        

    End Sub

    Protected Sub upCV_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles upCv.Click


        lblErrFileCV.Text = ""

        Dim path As String

        If (FileUploadID_CV.HasFile) Then

            If FileUploadID_CV.PostedFile.ContentLength < 2400000 Then





                path = UploadFile(FileUploadID_CV.PostedFile.ContentType.ToLower(), "CVfile")

                If Not path = "typeError" Then

                    FileUploadID_CV.SaveAs(Server.MapPath("~/CVfiles/") & path)

                    Session("CVfile") = path

                    upCv.Visible = False

                    FileUploadID_CV.Visible = False

                    delCv.Visible = True

                    HyperLink1.Visible = True

                    HyperLink1.NavigateUrl = "~/CVfiles/" & path



                Else

                    lblErrFileCV.Text = "يرجى اختيار ملف PDF أو jpeg"

                    Exit Sub

                End If

            Else

                lblErrFileCV.Text = "يجب أن يكون حجم الملف أقل من 2.4 MB"

                Exit Sub

            End If

        Else

            Exit Sub

        End If


    End Sub

    Protected Sub delcv_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles delCv.Click
        upCv.Visible = True
        FileUploadID_CV.Visible = True
        delCv.Visible = False
        HyperLink1.Visible = False
        Session("CVfile") = ""
    End Sub




    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        AddStudent()
        Response.Redirect("~/done.aspx")

    End Sub


    Protected Sub upForm_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles upForm.Click
        lblErrFileForm.Text = ""

        Dim path As String

        If (FileUpload_Form.HasFile) Then

            If FileUpload_Form.PostedFile.ContentLength < 2400000 Then





                path = UploadFile(FileUpload_Form.PostedFile.ContentType.ToLower(), "Formfile")

                If Not path = "typeError" Then

                    FileUpload_Form.SaveAs(Server.MapPath("~/Formfiles/") & path)

                    Session("Formfile") = path

                    upForm.Visible = False

                    FileUpload_Form.Visible = False

                    delForm.Visible = True

                    HyperLink2.Visible = True

                    HyperLink2.NavigateUrl = "~/Formfiles/" & path



                Else

                    lblErrFileForm.Text = "يرجى اختيار ملف PDF أو jpeg"

                    Exit Sub

                End If

            Else

                lblErrFileForm.Text = "يجب أن يكون حجم الملف أقل من 2.4 MB"

                Exit Sub

            End If

        Else

            Exit Sub

        End If


    End Sub

    Protected Sub delForm_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles delForm.Click
        upForm.Visible = True
        FileUpload_Form.Visible = True
        delForm.Visible = False
        HyperLink1.Visible = False
        Session("Formfile") = ""
    End Sub
End Class
