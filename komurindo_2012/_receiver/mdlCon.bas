Attribute VB_Name = "mdlCon"
Public Con As ADODB.Connection
Public rs As ADODB.Connection

Public Sub BukaKoneksi()
Dim ConnString As String
Dim db_name As String
Dim db_server As String
Dim db_port As String
Dim db_user As String
Dim db_pass As String
'isi variable
db_name = "dbX" 'Nama database
db_server = "localhost" 'ganti jika server anda ada di komputer lain
db_port = "3306"    'default port is 3306
db_user = "dMn"    'sebaiknya pakai username lain.
db_pass = "Damen."    'Password di database Anda
'buat connection string
ConnString = "DRIVER={MySQL ODBC 5.1 Driver};SERVER=" & db_server & "; " & _
             "DATABASE=" & db_name & ";UID=" & db_user & "; " & _
             "PWD=" & db_pass & ";PORT=" & db_port & ";OPTION=3"
'buka koneksi
Set Con = New ADODB.Connection
Con.ConnectionString = ConnString
Con.CursorLocation = adUseClient
Con.Open
End Sub
Public Sub TutupKoneksi()
If Con.State = adStateOpen Or Con.State = adStateConnecting Then
   Con.Close
   Set Con = Nothing
End If
End Sub


