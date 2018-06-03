VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.MDIForm Base 
   BackColor       =   &H8000000C&
   Caption         =   ".: Attitude Monitoring And Surveillance Payload :."
   ClientHeight    =   5580
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   9795
   Icon            =   "Base.frx":0000
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   2  'CenterScreen
   Begin MSComctlLib.Toolbar BAr1 
      Align           =   1  'Align Top
      Height          =   660
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   9795
      _ExtentX        =   17277
      _ExtentY        =   1164
      ButtonWidth     =   609
      ButtonHeight    =   1005
      Appearance      =   1
      _Version        =   393216
   End
   Begin VB.Timer tmr 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   2520
      Top             =   1680
   End
   Begin MSComctlLib.StatusBar sttBar 
      Align           =   2  'Align Bottom
      Height          =   255
      Left            =   0
      TabIndex        =   0
      Top             =   5325
      Width           =   9795
      _ExtentX        =   17277
      _ExtentY        =   450
      Style           =   1
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   1
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Segoe UI Semibold"
         Size            =   9
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSComctlLib.ImageList imgLs1 
      Left            =   1320
      Top             =   1680
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      MaskColor       =   12632256
      _Version        =   393216
   End
End
Attribute VB_Name = "Base"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub MDIForm_Load()
Load frmReceiver: Load frm3D:
frm3D.Left = frmReceiver.Width: frm3D.Top = frmReceiver.Top
Me.Width = frmReceiver.Width + frm3D.Width + 500
Me.Height = frmReceiver.Height + 1800
tmr.Enabled = 1
End Sub

Private Sub MDIForm_Unload(Cancel As Integer)
End
End Sub

Private Sub tmr_Timer()
sttBar.SimpleText = "::::::: DATE : " & Date & ", TIME : " & Time & " :::::::"
End Sub
