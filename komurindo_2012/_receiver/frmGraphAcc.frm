VERSION 5.00
Object = "{65E121D4-0C60-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCHRT20.OCX"
Begin VB.Form frmGraphAcc 
   BackColor       =   &H00000000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Accelerometer Graph"
   ClientHeight    =   10515
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   18090
   BeginProperty Font 
      Name            =   "Segoe UI"
      Size            =   9
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   10515
   ScaleWidth      =   18090
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.OptionButton radCac 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Compass"
      Height          =   255
      Left            =   4440
      TabIndex        =   11
      Top             =   120
      Width           =   1095
   End
   Begin VB.OptionButton radZax 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Z-Axis"
      Height          =   255
      Left            =   3240
      TabIndex        =   5
      Top             =   120
      Width           =   1095
   End
   Begin VB.OptionButton radYax 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Y-Axis"
      Height          =   255
      Left            =   2160
      TabIndex        =   4
      Top             =   120
      Width           =   1095
   End
   Begin VB.OptionButton radXax 
      BackColor       =   &H00C0C0C0&
      Caption         =   "X-Axis"
      Height          =   255
      Left            =   1200
      TabIndex        =   3
      Top             =   120
      Width           =   1095
   End
   Begin MSChart20Lib.MSChart C3 
      Height          =   3735
      Left            =   10080
      OleObjectBlob   =   "frmGraphAcc.frx":0000
      TabIndex        =   0
      Top             =   960
      Width           =   7935
   End
   Begin MSChart20Lib.MSChart C1 
      DragMode        =   1  'Automatic
      Height          =   5535
      Left            =   120
      OleObjectBlob   =   "frmGraphAcc.frx":2507
      TabIndex        =   1
      Top             =   960
      Width           =   10095
   End
   Begin MSChart20Lib.MSChart C2 
      Height          =   3735
      Left            =   120
      OleObjectBlob   =   "frmGraphAcc.frx":4A0E
      TabIndex        =   6
      Top             =   6720
      Width           =   7935
   End
   Begin MSChart20Lib.MSChart C4 
      Height          =   3735
      Left            =   10080
      OleObjectBlob   =   "frmGraphAcc.frx":6F15
      TabIndex        =   10
      Top             =   6720
      Width           =   7935
   End
   Begin VB.Label lbl4 
      BackStyle       =   0  'Transparent
      Caption         =   "COMPASS"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   10800
      TabIndex        =   12
      Top             =   6240
      Width           =   2535
   End
   Begin VB.Label lbl1 
      BackStyle       =   0  'Transparent
      Caption         =   "Accelerometer X-Axis"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   360
      TabIndex        =   9
      Top             =   600
      Width           =   3255
   End
   Begin VB.Label lbl2 
      BackStyle       =   0  'Transparent
      Caption         =   "Accelerometer Y-Axis"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   480
      TabIndex        =   8
      Top             =   6480
      Width           =   2535
   End
   Begin VB.Label lbl3 
      BackStyle       =   0  'Transparent
      Caption         =   "Accelerometer Z-Axis"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   10800
      TabIndex        =   7
      Top             =   720
      Width           =   2535
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Show Axis :"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   1215
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00C0C0C0&
      BackStyle       =   1  'Opaque
      BorderStyle     =   0  'Transparent
      Height          =   495
      Left            =   -120
      Top             =   0
      Width           =   18255
   End
End
Attribute VB_Name = "frmGraphAcc"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub DrawSens(LsS As ListBox, Cchart As MSChart)
Dim ArR()
ReDim ArR(LsS.ListCount, 1)
For i = 0 To LsS.ListCount
    ArR(i, 1) = LsS.List(i)
Next i
Cchart.ChartData = ArR
End Sub
Private Sub Form_Load()
radXax = 1
'MsgBox "Top : " & C1.Top & "," & C2.Top & "," & C3.Top & "," & C4.Top & vbCrLf & _
             "Left : " & C1.Left & "," & C2.Left & "," & C3.Left & "," & C4.Left & vbCrLf & _
             "Height : " & C1.Height & "," & C2.Height & "," & C3.Height & "," & C4.Height & vbCrLf & _
             "Width : " & C1.Width & "," & C2.Width & "," & C3.Width & "," & C4.Width
Call DrawSens(frmReceiver.LsX, C1)
Call DrawSens(frmReceiver.LsY, C2)
Call DrawSens(frmReceiver.LsZ, C3)
Call DrawSens(frmReceiver.LsC, C4)
End Sub
Private Sub SetGraph(C1Top As Long, C2Top As Long, C3Top As Long, C4Top As Long, C1Left As Long, C2Left As Long, C3Left As Long, C4Left As Long, _
C1Height As Long, C2Height As Long, C3Height As Long, C4Height As Long, C1Width As Long, C2Width As Long, C3Width As Long, C4Width As Long)
C1.Top = C1Top: C2.Top = C2Top: C3.Top = C3Top: C4.Top = C4Top
C1.Left = C1Left: C2.Left = C2Left: C3.Left = C3Left: C4.Left = C4Left
C1.Height = C1Height: C2.Height = C2Height: C3.Height = C3Height: C4.Height = C4Height
C1.Width = C1Width: C2.Width = C2Width: C3.Width = C3Width: C4.Width = C4Width
End Sub
Private Sub radXax_Click()
Call SetGraph(960, 6720, 960, 6600, _
                    120, 120, 10080, 10080, _
                    5535, 3735, 3735, 3735, _
                    10095, 7935, 7935, 7935)
lbl1.Caption = "Accelerometer X-Axis"
lbl2.Caption = "Accelerometer Y-Axis"
lbl3.Caption = "Accelerometer Z-Axis"
lbl4.Caption = "COMPASS"
End Sub
Private Sub radYax_Click()
Call SetGraph(6600, 960, 6720, 960, _
                    10080, 120, 120, 10080, _
                    3735, 5535, 3735, 3735, _
                    7935, 10095, 7935, 7935)
lbl1.Caption = "Accelerometer Y-Axis"
lbl2.Caption = "Accelerometer Z-Axis"
lbl3.Caption = "COMPASS"
lbl4.Caption = "Accelerometer X-Axis"
End Sub
Private Sub radZax_Click()
Call SetGraph(960, 6600, 960, 6720, _
                    10080, 10080, 120, 120, _
                    3735, 3735, 5535, 3735, _
                    7935, 7935, 10095, 7935)
lbl1.Caption = "Accelerometer Z-Axis"
lbl2.Caption = "COMPASS"
lbl3.Caption = "Accelerometer X-Axis"
lbl4.Caption = "Accelerometer Y-Axis"
End Sub
Private Sub radCac_Click()
Call SetGraph(6720, 960, 6600, 960, _
                    120, 10080, 10080, 120, _
                    3735, 3735, 3735, 5535, _
                    7935, 7935, 7935, 10095)
lbl1.Caption = "COMPASS"
lbl2.Caption = "Accelerometer X-Axis"
lbl3.Caption = "Accelerometer Y-Axis"
lbl4.Caption = "Accelerometer Z-Axis"
End Sub
