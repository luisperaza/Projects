Option Strict Off
Imports Microsoft.Office.Core
Imports Microsoft.Office.Interop.Outlook
Imports System
Imports System.IO
Imports System.Text

Public Class Form1
    Inherits System.Windows.Forms.Form

    Const conBasePath As String = "C:\TEMPOUTLOOK\"

#Region " Windows Form Designer generated code "

    Public Sub New()
        MyBase.New()

        'This call is required by the Windows Form Designer.
        InitializeComponent()

        'Add any initialization after the InitializeComponent() call

    End Sub

    'Form overrides dispose to clean up the component list.
    Protected Overloads Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing Then
            If Not (components Is Nothing) Then
                components.Dispose()
            End If
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    Friend WithEvents btnRead As System.Windows.Forms.Button
    Friend WithEvents btnReadFile As System.Windows.Forms.Button
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.btnRead = New System.Windows.Forms.Button
        Me.btnReadFile = New System.Windows.Forms.Button
        Me.SuspendLayout()
        '
        'btnRead
        '
        Me.btnRead.Font = New System.Drawing.Font("Bookman Old Style", 11.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.btnRead.Location = New System.Drawing.Point(8, 8)
        Me.btnRead.Name = "btnRead"
        Me.btnRead.Size = New System.Drawing.Size(392, 48)
        Me.btnRead.TabIndex = 0
        Me.btnRead.Text = "Read Mails From Outlook And Save Locally"
        '
        'btnReadFile
        '
        Me.btnReadFile.Font = New System.Drawing.Font("Bookman Old Style", 11.25!)
        Me.btnReadFile.Location = New System.Drawing.Point(8, 64)
        Me.btnReadFile.Name = "btnReadFile"
        Me.btnReadFile.Size = New System.Drawing.Size(392, 48)
        Me.btnReadFile.TabIndex = 1
        Me.btnReadFile.Text = "Read Locally Saved Mails"
        '
        'Form1
        '
        Me.AutoScaleBaseSize = New System.Drawing.Size(5, 13)
        Me.ClientSize = New System.Drawing.Size(416, 118)
        Me.Controls.Add(Me.btnReadFile)
        Me.Controls.Add(Me.btnRead)
        Me.Name = "Form1"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "Read Outlook Data"
        Me.ResumeLayout(False)

    End Sub

#End Region

    Private Sub btnRead_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnRead.Click

        'CHECKING FOLDER IS AVAILABLE OR NOT.
        'IF NOT CREATE IT ELSE DELETE AND CREATE AGAIN
        IsFolderAvailable()

        'METHOD FOR SAVING ALL MAIL ITEMS IN TO FOLDER.
        SaveAllMAPIFolderItems()

    End Sub

#Region " METHOD FOR READING OUTLOOK MAIL ITEMS"
    'Don't change this code.

    Private Sub SaveAllMAPIFolderItems()

        Dim objOutlook As Microsoft.Office.Interop.Outlook.Application
        Dim objNamespace As Microsoft.Office.Interop.Outlook.NameSpace
        Dim objMAPIFolder As Microsoft.Office.Interop.Outlook.MAPIFolder
        Dim oNS As Microsoft.Office.Interop.Outlook.NameSpace
        Dim oInbox As Microsoft.Office.Interop.Outlook.MAPIFolder
        Dim oItem As Object   ' as Outlook.Mailitem 
        Dim oAtt As Microsoft.Office.Interop.Outlook.Attachment
        Dim sSubject As String
        Dim sType As String
        Dim sSent As String

        Dim sUniqueFileName As String
        Dim sUniqueAttFolderName As String

        objOutlook = New Microsoft.Office.Interop.Outlook.Application
        oNS = objOutlook.GetNamespace("MAPI")

        oNS.Logon(ShowDialog:=True, NewSession:=True)
        'objMAPIFolder = oNS.GetDefaultFolder(Outlook.OlDefaultFolders.olFolderInbox)
        objMAPIFolder = oNS.GetDefaultFolder(Microsoft.Office.Interop.Outlook.OlDefaultFolders.olFolderInbox)


        Try
            For Each oItem In objMAPIFolder.Items

                sSubject = oItem.Subject

                'Dim someString As String = sSubject
                'Dim index As Integer = someString.IndexOf(":")
                'Dim replaced As String

                'Dim character As Char
                'For Each character In someString
                '    If character = ":" Then
                '        replaced = someString.Replace(":", "")
                '    End If
                'Next


                'sUniqueFileName = conBasePath + replaced + "_bak_" + System.Guid.NewGuid().ToString

                sUniqueFileName = conBasePath + "bak_" + System.Guid.NewGuid().ToString

                oItem.SaveAs(sUniqueFileName + ".txt", Microsoft.Office.Interop.Outlook.OlSaveAsType.olTXT)

                If (oItem.Attachments.Count > 0) Then
                    sUniqueAttFolderName = sUniqueFileName + "_Folder"
                    MkDir(sUniqueAttFolderName)

                    For Each oAtt In oItem.Attachments
                        sUniqueFileName = sUniqueAttFolderName + "\" + oAtt.FileName
                        oAtt.SaveAsFile(sUniqueFileName)
                    Next oAtt

                End If

                'End If 

            Next oItem

        Catch ex As System.Exception
            MessageBox.Show(ex.ToString)
        End Try

        oNS.Logoff()

        MsgBox("Processed", MsgBoxStyle.Information)

        If (MsgBoxResult.OK) Then
            Me.Close()
        End If

    End Sub

#End Region

#Region "CHECKING FOLDER IS AVAILABLE OR NOT"

    Private Sub IsFolderAvailable()

        Dim objDirInfo As Directory

        If objDirInfo.Exists(conBasePath) = True Then

            Directory.Delete(conBasePath, True)
            Directory.CreateDirectory(conBasePath)

        Else

            Directory.CreateDirectory(conBasePath)

        End If


    End Sub

#End Region


    Private Sub btnReadFile_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnReadFile.Click

        Dim strFileSize As String = ""
        Dim di As New IO.DirectoryInfo(conBasePath)
        Dim aryFi As IO.FileInfo() = di.GetFiles("*.txt")
        Dim fi As IO.FileInfo

        For Each fi In aryFi
            Dim s As String
            s = ReadTextFile(conBasePath & "\" & fi.Name)
        Next

    End Sub


    Private Function ReadTextFile(ByVal sFileName As String) As String

        Dim s As String

        Try
            Dim oFile As FileStream = New FileStream(sFileName, FileMode.Open, FileAccess.Read, FileShare.Read)
            Dim oReader As StreamReader = New StreamReader(oFile)

            s = oReader.ReadLine

            Dim strLine As String

            Do Until s Is Nothing
                strLine = oReader.ReadLine
                MsgBox(strLine)
            Loop



            oReader.Close()
            oFile.Close()

            ReadTextFile = s

        Catch

            ReadTextFile = "Unable to open file."

        End Try

    End Function


End Class
