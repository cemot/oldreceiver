VERSION 5.00
Object = "{65E121D4-0C60-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCHRT20.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Begin VB.Form frmReceiver 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Ground :: Receiver"
   ClientHeight    =   10215
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   14850
   BeginProperty Font 
      Name            =   "Segoe UI"
      Size            =   9
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "frmReceiver.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   10215
   ScaleWidth      =   14850
   StartUpPosition =   2  'CenterScreen
   Begin MSCommLib.MSComm Com1 
      Left            =   1080
      Top             =   6840
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
   End
   Begin VB.Timer tmr 
      Left            =   1680
      Top             =   6840
   End
   Begin VB.Frame grpDataCam 
      BackColor       =   &H00000000&
      Caption         =   " Receive Camera Data + Compass :   "
      ForeColor       =   &H8000000B&
      Height          =   3735
      Left            =   9720
      TabIndex        =   11
      Top             =   120
      Width           =   5055
      Begin VB.CommandButton cmdCopy 
         Caption         =   "Draw"
         Height          =   375
         Left            =   4200
         TabIndex        =   45
         Top             =   2640
         Width           =   735
      End
      Begin VB.CommandButton cmdCamStop 
         Caption         =   "Stop"
         Height          =   375
         Left            =   4200
         TabIndex        =   52
         Top             =   2280
         Width           =   735
      End
      Begin VB.PictureBox Pic 
         AutoSize        =   -1  'True
         Height          =   3060
         Left            =   1080
         ScaleHeight     =   200
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   200
         TabIndex        =   33
         Top             =   240
         Width           =   3060
      End
      Begin VB.TextBox txtRecCam 
         BeginProperty Font 
            Name            =   "Segoe UI Semibold"
            Size            =   9
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   285
         Left            =   120
         TabIndex        =   13
         Top             =   480
         Width           =   855
      End
      Begin RichTextLib.RichTextBox txtReceiveCam 
         Height          =   2415
         Left            =   120
         TabIndex        =   14
         Top             =   840
         Width           =   855
         _ExtentX        =   1508
         _ExtentY        =   4260
         _Version        =   393217
         ScrollBars      =   2
         TextRTF         =   $"frmReceiver.frx":F84A
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Shape shpFront 
         BackColor       =   &H0000FF00&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H0000FF00&
         Height          =   255
         Left            =   120
         Top             =   3360
         Width           =   135
      End
      Begin VB.Shape shpBack 
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00FFFFFF&
         Height          =   255
         Left            =   120
         Top             =   3360
         Width           =   4095
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "%"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   4680
         TabIndex        =   37
         Top             =   3360
         Width           =   255
      End
      Begin VB.Label lblCnPercent 
         BackStyle       =   0  'Transparent
         Caption         =   "__"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   4320
         TabIndex        =   36
         Top             =   3360
         Width           =   495
      End
      Begin VB.Label lblCamCn 
         BackStyle       =   0  'Transparent
         Caption         =   "__"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   4200
         TabIndex        =   35
         Top             =   720
         Width           =   735
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Data Counter :"
         ForeColor       =   &H00FFFFFF&
         Height          =   495
         Left            =   4200
         TabIndex        =   34
         Top             =   240
         Width           =   975
      End
      Begin VB.Label Label3 
         BackColor       =   &H80000012&
         Caption         =   "Receiving : "
         BeginProperty Font 
            Name            =   "Segoe UI Semibold"
            Size            =   9
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   255
         Left            =   120
         TabIndex        =   12
         Top             =   240
         Width           =   1575
      End
   End
   Begin VB.Frame grpComSet 
      BackColor       =   &H00000000&
      Caption         =   " Comm Setting :  "
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   120
      TabIndex        =   7
      Top             =   120
      Width           =   2175
      Begin VB.CommandButton cmdOpen9600 
         Caption         =   "&9600"
         Height          =   375
         Left            =   120
         TabIndex        =   10
         Top             =   240
         Width           =   615
      End
      Begin VB.CommandButton cmdOpen57600 
         Caption         =   "&57600"
         Height          =   375
         Left            =   720
         TabIndex        =   9
         Top             =   240
         Width           =   735
      End
      Begin VB.CommandButton cmdComClose 
         Caption         =   "C&lose"
         Height          =   375
         Left            =   1440
         TabIndex        =   8
         Top             =   240
         Width           =   615
      End
   End
   Begin VB.Frame grpSend 
      BackColor       =   &H80000012&
      Caption         =   " Command :  "
      ForeColor       =   &H8000000E&
      Height          =   2415
      Left            =   120
      TabIndex        =   0
      Top             =   840
      Width           =   2175
      Begin VB.CommandButton cmdCamOn2 
         Caption         =   "On/Off"
         Height          =   375
         Left            =   1080
         TabIndex        =   60
         Top             =   1320
         Width           =   975
      End
      Begin VB.CommandButton cmdInitCam 
         Caption         =   "&Init"
         Height          =   495
         Left            =   1080
         TabIndex        =   59
         Top             =   1800
         Width           =   495
      End
      Begin VB.CommandButton cmdStop 
         BackColor       =   &H000000FF&
         Caption         =   "&Stop"
         Height          =   375
         Left            =   120
         MaskColor       =   &H000000FF&
         TabIndex        =   44
         Top             =   1920
         UseMaskColor    =   -1  'True
         Width           =   855
      End
      Begin VB.CommandButton cmdGetCam 
         Caption         =   "&Pict"
         Height          =   495
         Left            =   1560
         TabIndex        =   39
         Top             =   1800
         Width           =   495
      End
      Begin VB.CommandButton cmdGetSensor 
         Caption         =   "&Sensor"
         Height          =   375
         Left            =   120
         TabIndex        =   38
         Top             =   1320
         Width           =   855
      End
      Begin VB.TextBox txtPress 
         Height          =   330
         Left            =   120
         TabIndex        =   3
         Top             =   480
         Width           =   1935
      End
      Begin VB.Line Line5 
         BorderColor     =   &H00FFFFFF&
         X1              =   120
         X2              =   960
         Y1              =   1800
         Y2              =   1800
      End
      Begin VB.Label Label10 
         BackStyle       =   0  'Transparent
         Caption         =   "(60.00 Sec)"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   1080
         TabIndex        =   41
         Top             =   1080
         Width           =   1095
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "(12.00 Sec)"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   120
         TabIndex        =   40
         Top             =   1080
         Width           =   975
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00FFFFFF&
         X1              =   120
         X2              =   1800
         Y1              =   960
         Y2              =   960
      End
      Begin VB.Label Label2 
         BackColor       =   &H80000012&
         Caption         =   "Command On Press : "
         BeginProperty Font 
            Name            =   "Segoe UI Semibold"
            Size            =   9
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   255
         Left            =   120
         TabIndex        =   4
         Top             =   240
         Width           =   1695
      End
   End
   Begin VB.Frame grpDataSensor 
      BackColor       =   &H80000012&
      Caption         =   " Receive Sensor Data :  "
      ForeColor       =   &H8000000E&
      Height          =   3975
      Left            =   120
      TabIndex        =   1
      Top             =   3240
      Width           =   2175
      Begin VB.TextBox txtRecSens 
         BeginProperty Font 
            Name            =   "Segoe UI Semibold"
            Size            =   9
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   285
         Left            =   1560
         TabIndex        =   6
         Top             =   240
         Width           =   495
      End
      Begin RichTextLib.RichTextBox txtReceiveSens 
         Height          =   3015
         Left            =   120
         TabIndex        =   2
         Top             =   600
         Width           =   1935
         _ExtentX        =   3413
         _ExtentY        =   5318
         _Version        =   393217
         ScrollBars      =   2
         TextRTF         =   $"frmReceiver.frx":F8C7
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Label lblSensCn 
         BackStyle       =   0  'Transparent
         Caption         =   "__"
         BeginProperty Font 
            Name            =   "Segoe UI Semibold"
            Size            =   9
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   720
         TabIndex        =   43
         Top             =   3600
         Width           =   1335
      End
      Begin VB.Label Label11 
         BackStyle       =   0  'Transparent
         Caption         =   "Data :"
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   120
         TabIndex        =   42
         Top             =   3600
         Width           =   1575
      End
      Begin VB.Label Label1 
         BackColor       =   &H80000012&
         Caption         =   "Receiving Now : "
         BeginProperty Font 
            Name            =   "Segoe UI Semibold"
            Size            =   9
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   240
         Width           =   1575
      End
   End
   Begin VB.Frame grpCompasGraph 
      BackColor       =   &H00000000&
      Caption         =   " Compas Graph :  "
      ForeColor       =   &H00FFFFFF&
      Height          =   2655
      Left            =   9720
      TabIndex        =   29
      Top             =   3840
      Width           =   5055
      Begin VB.ListBox LsC 
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1620
         Left            =   120
         TabIndex        =   32
         Top             =   600
         Width           =   735
      End
      Begin VB.TextBox txtC 
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   330
         Left            =   120
         TabIndex        =   31
         Top             =   240
         Width           =   735
      End
      Begin MSChart20Lib.MSChart C4 
         Height          =   2295
         Left            =   720
         OleObjectBlob   =   "frmReceiver.frx":F944
         TabIndex        =   30
         Top             =   240
         Width           =   4215
      End
      Begin VB.Label lblC 
         Alignment       =   2  'Center
         BackColor       =   &H80000007&
         Caption         =   "__"
         BeginProperty Font 
            Name            =   "Segoe UI Semibold"
            Size            =   9
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   255
         Left            =   120
         TabIndex        =   51
         Top             =   2280
         Width           =   735
      End
   End
   Begin VB.Frame grpAccGraph 
      BackColor       =   &H00000000&
      Caption         =   " Accelerometer Graph :  "
      ForeColor       =   &H00FFFFFF&
      Height          =   9975
      Left            =   2400
      TabIndex        =   15
      Top             =   120
      Width           =   7215
      Begin VB.CommandButton cmdAnalyze 
         Caption         =   "Analyze"
         Height          =   375
         Left            =   3000
         TabIndex        =   58
         Top             =   9480
         Width           =   855
      End
      Begin VB.CommandButton cmdLoadSens 
         Caption         =   "Load Sens Data"
         Height          =   375
         Left            =   1560
         TabIndex        =   57
         Top             =   9480
         Width           =   1455
      End
      Begin VB.CommandButton cmdClear 
         Caption         =   "Clear"
         Height          =   375
         Left            =   6240
         TabIndex        =   47
         Top             =   9480
         Width           =   855
      End
      Begin VB.CommandButton cmdSaveSens 
         Caption         =   "Save Sens Data"
         Height          =   375
         Left            =   120
         TabIndex        =   28
         Top             =   9480
         Width           =   1455
      End
      Begin VB.ListBox LsZ 
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2010
         Left            =   120
         TabIndex        =   25
         Top             =   6840
         Width           =   735
      End
      Begin VB.TextBox txtZ 
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   330
         Left            =   120
         TabIndex        =   24
         Top             =   6480
         Width           =   735
      End
      Begin VB.ListBox LsY 
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2010
         Left            =   120
         TabIndex        =   22
         Top             =   3840
         Width           =   735
      End
      Begin VB.TextBox txtY 
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   330
         Left            =   120
         TabIndex        =   21
         Top             =   3480
         Width           =   735
      End
      Begin VB.ListBox LsX 
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2010
         Left            =   120
         TabIndex        =   18
         Top             =   840
         Width           =   735
      End
      Begin VB.TextBox txtX 
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008000&
         Height          =   330
         Left            =   120
         TabIndex        =   17
         Top             =   480
         Width           =   735
      End
      Begin MSChart20Lib.MSChart C1 
         DragMode        =   1  'Automatic
         Height          =   2775
         Left            =   720
         OleObjectBlob   =   "frmReceiver.frx":11E4B
         TabIndex        =   19
         Top             =   480
         Width           =   6375
      End
      Begin MSChart20Lib.MSChart C2 
         Height          =   2775
         Left            =   720
         OleObjectBlob   =   "frmReceiver.frx":14352
         TabIndex        =   23
         Top             =   3480
         Width           =   6375
      End
      Begin MSChart20Lib.MSChart C3 
         Height          =   2775
         Left            =   720
         OleObjectBlob   =   "frmReceiver.frx":16859
         TabIndex        =   26
         Top             =   6480
         Width           =   6375
      End
      Begin VB.Label lblZ 
         Alignment       =   2  'Center
         BackColor       =   &H80000007&
         Caption         =   "__"
         BeginProperty Font 
            Name            =   "Segoe UI Semibold"
            Size            =   9
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   255
         Left            =   120
         TabIndex        =   50
         Top             =   8880
         Width           =   735
      End
      Begin VB.Label lblY 
         Alignment       =   2  'Center
         BackColor       =   &H80000007&
         Caption         =   "__"
         BeginProperty Font 
            Name            =   "Segoe UI Semibold"
            Size            =   9
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   255
         Left            =   120
         TabIndex        =   49
         Top             =   5880
         Width           =   735
      End
      Begin VB.Label lblX 
         Alignment       =   2  'Center
         BackColor       =   &H80000007&
         Caption         =   "__"
         BeginProperty Font 
            Name            =   "Segoe UI Semibold"
            Size            =   9
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   255
         Left            =   120
         TabIndex        =   48
         Top             =   2880
         Width           =   735
      End
      Begin VB.Line Line3 
         BorderColor     =   &H00FFFFFF&
         X1              =   120
         X2              =   7080
         Y1              =   9360
         Y2              =   9360
      End
      Begin VB.Label Label8 
         BackColor       =   &H80000012&
         Caption         =   "Accelerometer Z-axis"
         BeginProperty Font 
            Name            =   "Segoe UI Semibold"
            Size            =   9
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   255
         Left            =   120
         TabIndex        =   27
         Top             =   6240
         Width           =   2055
      End
      Begin VB.Label Label7 
         BackColor       =   &H80000012&
         Caption         =   "Accelerometer Y-axis"
         BeginProperty Font 
            Name            =   "Segoe UI Semibold"
            Size            =   9
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   255
         Left            =   120
         TabIndex        =   20
         Top             =   3240
         Width           =   2055
      End
      Begin VB.Label Label6 
         BackColor       =   &H80000007&
         Caption         =   "Accelerometer X-axis"
         BeginProperty Font 
            Name            =   "Segoe UI Semibold"
            Size            =   9
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   255
         Left            =   120
         TabIndex        =   16
         Top             =   240
         Width           =   2055
      End
   End
   Begin VB.Frame grpCmps 
      BackColor       =   &H00000000&
      Caption         =   " Compass :  "
      ForeColor       =   &H00FFFFFF&
      Height          =   3135
      Left            =   10560
      TabIndex        =   46
      Top             =   6720
      Width           =   3615
      Begin VB.PictureBox PicCmps 
         AutoSize        =   -1  'True
         BackColor       =   &H00000000&
         Height          =   2610
         Left            =   840
         ScaleHeight     =   2550
         ScaleWidth      =   2550
         TabIndex        =   53
         Top             =   360
         Width           =   2610
      End
      Begin VB.Label Label14 
         BackColor       =   &H80000007&
         Caption         =   "CCW"
         BeginProperty Font 
            Name            =   "Segoe UI Semibold"
            Size            =   9
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   375
         Left            =   120
         TabIndex        =   56
         Top             =   1080
         Width           =   735
      End
      Begin VB.Label lblCmpsDeg 
         BackColor       =   &H80000007&
         Caption         =   "__"
         BeginProperty Font 
            Name            =   "Segoe UI Semibold"
            Size            =   9
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   375
         Left            =   120
         TabIndex        =   55
         Top             =   840
         Width           =   615
      End
      Begin VB.Label Label12 
         BackColor       =   &H80000007&
         Caption         =   "Sudut :"
         BeginProperty Font 
            Name            =   "Segoe UI Semibold"
            Size            =   9
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   375
         Left            =   120
         TabIndex        =   54
         Top             =   600
         Width           =   615
      End
   End
   Begin VB.Frame grpLogo 
      BackColor       =   &H00000000&
      Height          =   2895
      Left            =   120
      TabIndex        =   61
      Top             =   7200
      Width           =   2175
      Begin VB.Label Label16 
         BackStyle       =   0  'Transparent
         Caption         =   "KOMURINDO 2012"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H008080FF&
         Height          =   375
         Left            =   360
         TabIndex        =   64
         Top             =   2520
         Width           =   1695
      End
      Begin VB.Label Label15 
         BackStyle       =   0  'Transparent
         Caption         =   "DEWA"
         BeginProperty Font 
            Name            =   "Terminal"
            Size            =   13.5
            Charset         =   255
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H008080FF&
         Height          =   375
         Left            =   1200
         TabIndex        =   63
         Top             =   2280
         Width           =   735
      End
      Begin VB.Label Label13 
         BackStyle       =   0  'Transparent
         Caption         =   "MATA"
         BeginProperty Font 
            Name            =   "Terminal"
            Size            =   13.5
            Charset         =   255
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H008080FF&
         Height          =   375
         Left            =   360
         TabIndex        =   62
         Top             =   2280
         Width           =   735
      End
      Begin VB.Image Image1 
         Height          =   1935
         Left            =   120
         Picture         =   "frmReceiver.frx":18D60
         Stretch         =   -1  'True
         Top             =   240
         Width           =   1815
      End
   End
End
Attribute VB_Name = "frmReceiver"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rs As New ADODB.Recordset
Dim Xax, Yax, Zax, Cax, arX(), arY(), arZ(), arC()
Dim Xx, Yy, Cn, Qq, PicI, Ycy, Xcx, Zz, Countt, j As Integer, i, c, cmpsCamflg As Long
Dim Strr, StrPic, s, ss As String
''''''''''''''''''''''''''''''''''''''''''''''' Graph Acc + Compas '''''''''''''''''''''''''''''''''''''''''''''
Private Sub DrawC()
On Error Resume Next
If Val(txtC.Text) > 270 Then
    LsC.AddItem 260
Else
    LsC.AddItem txtC.Text
End If
ReDim arC(LsC.ListCount, 1)
For c = 0 To LsC.ListCount
    arC(c, 1) = LsC.List(c)
Next c
C4.ChartData = arC
lblC.Caption = LsC.ListCount
''''
PicCmps.Picture = LoadPicture(Path & "Arrow2\" & txtC.Text & ".jpg")
lblCmpsDeg.Caption = Int(((Val(txtC.Text) / 256) * 360)) & Chr(176)
End Sub
Private Sub DrawX()
If Val(txtX.Text) > 270 Then
    LsX.AddItem 260
Else
    LsX.AddItem txtX.Text
End If
ReDim arX(LsX.ListCount, 1)
For i = 0 To LsX.ListCount
    arX(i, 1) = LsX.List(i)
Next i
C1.ChartData = arX
lblX.Caption = LsX.ListCount
End Sub
Private Sub DrawY()
If Val(txtY.Text) > 270 Then
    LsY.AddItem 260
Else
    LsY.AddItem txtY.Text
End If
ReDim arY(LsY.ListCount, 1)
For i = 0 To LsY.ListCount
    arY(i, 1) = LsY.List(i)
Next i
C2.ChartData = arY
lblY.Caption = LsY.ListCount
End Sub
Private Sub DrawZ()
If Val(txtZ.Text) > 270 Then
    LsZ.AddItem 260
Else
    LsZ.AddItem txtZ.Text
End If
ReDim arZ(LsZ.ListCount, 1)
For i = 0 To LsZ.ListCount
    arZ(i, 1) = LsZ.List(i)
Next i
C3.ChartData = arZ
lblZ.Caption = LsZ.ListCount
End Sub
''''''''''''''''''''''''''''''''''''''' Simpan - Load Data Sensor '''''''''''''''''''''
Private Sub SaveSensData(LsS As ListBox, nameFile As String)
Dim Ssx As String
For i = 0 To LsS.ListCount - 1
    Ssx = Ssx & LsS.List(i) & vbCrLf
Next i
FileNum = FreeFile
Open App.Path & nameFile For Output As FileNum
Print #FileNum, Ssx
Close FileNum
End Sub
Private Sub LoadSensData(LsS As ListBox, nameFile As String)
Dim fileLocation As String
fileLocation = App.Path & nameFile
Open fileLocation For Input As #1
Do Until EOF(1)
    Input #1, Data
    LsS.AddItem (Data)
    EOF (1)
Loop
Close #1
End Sub
''''''''''''''''''''''''''''''''''''''' Draw Picture Camera '''''''''''''''''''''
Private Sub Draw()
On Error Resume Next
Strr = txtReceiveCam.Text: Xcx = 0: Ycy = 1: i = 0
While i < Len(Strr)
    Xcx = Xcx + 1: i = i + 1
    If (Xcx <= 200) Then
        PicI = Asc(Mid(Strr, i, 1)): Pic.PSet (Xcx - 1, Ycy - 1), RGB(PicI, PicI, PicI)
    End If
    If (Xcx = 203) Then
        Xcx = 0: Ycy = Ycy + 1
    End If
    If (Xcx = 202) Then DoEvents 'LsC.AddItem Asc(Mid(Strr, i, 1))
Wend
End Sub
Private Sub EventCam()
On Error Resume Next
Qq = 0: i = 0: Cn = 0: Xcx = 0: Ycy = 1
Do Until Qq = 1
    If (Com1.InBufferCount <> 0) Then
        s = Com1.Input
        txtRecCam.Text = Hex(Asc(s))
        txtReceiveCam.Text = txtReceiveCam.Text & s
        Cn = Len(txtReceiveCam.Text)
        lblCamCn.Caption = Cn
        lblCnPercent.Caption = ((Cn / 40600) * 100)
        shpFront.Width = ((Cn / 40600) * 4095)
    End If
    '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
    Strr = txtReceiveCam.Text
    If ((i < Len(Strr)) And (Len(Strr) <> 0)) Then
        Xcx = Xcx + 1: i = i + 1
        If (Xcx <= 200) Then
            PicI = Asc(Mid(Strr, i, 1))
            Pic.PSet (Xcx - 1, Ycy - 1), RGB(PicI, PicI, PicI)
        End If
        If (Xcx = 203) Then
            Xcx = 0: Ycy = Ycy + 1
        End If
        If (Xcx = cmpsCamflg) Then
            txtC.Text = Asc(Mid(Strr, i, 1))
            Call DrawC
        End If
    End If
    DoEvents
Loop
End Sub
Private Sub cmdCopy_Click()
Call Draw
End Sub
''''''''''''''''''''''''''''''''''''''' Sensor ''''''''''''''''''''''''''''''''''''''''
Private Sub Event12Sec()
Qq = 0
Do Until Qq = 1
    If (Com1.InBufferCount <> 0) Then
        s = Com1.Input: txtRecSens.Text = s
        If (s = Chr(13)) Then
            Countt = 0: Xax = "": Yax = "": Zax = "": Cax = ""
        End If
        txtReceiveSens.Text = txtReceiveSens.Text & s
        If (Countt = 5 Or Countt = 6 Or Countt = 7) Then Xax = Xax & s
        If (Countt = 9 Or Countt = 10 Or Countt = 11) Then Yax = Yax & s
        If (Countt = 13 Or Countt = 14 Or Countt = 15) Then Zax = Zax & s
        If (Countt = 17 Or Countt = 18 Or Countt = 19) Then Cax = Cax & s
        txtX.Text = Xax: txtY.Text = Yax: txtZ.Text = Zax: txtC.Text = Cax
        Countt = Countt + 1
        If (Countt = 20) Then
            Call DrawX
            Call DrawY
            Call DrawZ
            Call DrawC
        End If
    End If
    lblSensCn.Caption = Len(txtReceiveSens.Text)
    DoEvents
Loop
End Sub
Private Sub EventAcc()
Qq = 0
Do Until Qq = 1
    If (Com1.InBufferCount <> 0) Then
        s = Com1.Input: txtRecSens.Text = s
        If (s = Chr(13)) Then
            Countt = 0: Xax = "": Yax = "": Zax = ""
        End If
        txtReceiveSens.Text = txtReceiveSens.Text & s
        If (Countt = 1 Or Countt = 2 Or Countt = 3) Then Xax = Xax & s
        If (Countt = 5 Or Countt = 6 Or Countt = 7) Then Yax = Yax & s
        If (Countt = 9 Or Countt = 10 Or Countt = 11) Then Zax = Zax & s
        txtX.Text = Xax: txtY.Text = Yax: txtZ.Text = Zax
        Countt = Countt + 1: lblSensCn.Caption = Countt
        If (Countt = 12) Then
            Call DrawX
            Call DrawY
            Call DrawZ
        End If
    End If
    DoEvents
Loop
End Sub
Private Sub EventAccLuncur()
Qq = 0
Do Until Qq = 1
    If (Com1.InBufferCount <> 0) Then
        s = Com1.Input: txtRecSens.Text = s
        If (s = Chr(13)) Then
            Countt = 0: Xax = "": Yax = "": Zax = ""
        End If
        txtReceiveSens.Text = txtReceiveSens.Text & s
        If (Countt = 5 Or Countt = 6 Or Countt = 7) Then Xax = Xax & s
        If (Countt = 9 Or Countt = 10 Or Countt = 11) Then Yax = Yax & s
        If (Countt = 13 Or Countt = 14 Or Countt = 15) Then Zax = Zax & s
        txtX.Text = Xax: txtY.Text = Yax: txtZ.Text = Zax
        Countt = Countt + 1:
        lblSensCn.Caption = Len(txtReceiveSens.Text)
        If (Countt = 16) Then
            Call DrawX
            Call DrawY
            Call DrawZ
        End If
    End If
    DoEvents
Loop
End Sub
Private Sub EventCmps1D()
Qq = 0:
Do Until Qq = 1
    If (Com1.InBufferCount <> 0) Then
        s = Com1.Input: txtC.Text = Asc(s)
        Call DrawC
    End If
    DoEvents
Loop
End Sub
Private Sub EventCmps3D()
Qq = 0:
Do Until Qq = 1
    If (Com1.InBufferCount <> 0) Then
        s = Com1.Input
        If (s = Chr(32)) Then
            Countt = 0: Cax = ""
        End If
        If (Countt = 1 Or Countt = 2 Or Countt = 3) Then Cax = Cax & s
        txtC = Val(Cax): Countt = Countt + 1
        If (Countt = 4) Then
            Call DrawC
        End If
    End If
    DoEvents
Loop
End Sub
''''''''''''''''''''''''''''''''''''''' Port Setting ''''''''''''''''''''''''''''''''''''''
Private Sub PortSett()
Com1.RThreshold = 1: Com1.RTSEnable = True: Com1.Settings = "9600,n,8,1"
Com1.CommPort = 1
End Sub
Private Sub cmdComClose_Click()
If Com1.PortOpen = True Then Com1.PortOpen = False
Qq = 1
End Sub
Private Sub cmdOpen57600_Click()
If Com1.PortOpen = False Then
    Com1.Settings = "57600,n,8,1": Com1.PortOpen = True
End If
End Sub
Private Sub cmdOpen9600_Click()
If Com1.PortOpen = False Then
    Com1.Settings = "9600,n,8,1": Com1.PortOpen = True
End If
End Sub
''''''''''''''''''''''''''''''''''''''''''''' Console, Control & Command '''''''''''''''''''''''''''''''''''''''''''
Private Sub cmdGetSensor_Click()
Com1.Output = "9"
Call EventAccLuncur
End Sub
Private Sub cmdInitCam_Click()
'Simpan data dulu, kemudian reset data compass
txtC.Text = "": LsC.Clear: Call DrawC
Com1.Output = "1":
cmpsCamflg = 202
End Sub
Private Sub cmdGetCam_Click()
Call FlushCom
txtReceiveCam.Text = "":
Com1.Output = "2"
Call EventCam
End Sub
Private Sub cmdCamOn2_Click()
On Error Resume Next
Com1.Output = "g"
Com1.Output = "00000"
Qq = 0: txtReceiveCam.Text = ""
Do Until (Qq = 1)
    txtReceiveCam.Text = txtReceiveCam.Text & Com1.Input
    DoEvents
Loop
End Sub
Private Sub cmdCamStop_Click()
Com1.Output = "3": Qq = 1
End Sub
Private Sub txtPress_KeyPress(KeyAscii As Integer) 'On Press control
txtPress.Text = "": Com1.Output = Chr(KeyAscii): txtPress.SetFocus
If (Chr(KeyAscii) = "1") Then cmpsCamflg = 201
If (Chr(KeyAscii) = "2") Then
    txtReceiveCam.Text = "": Call EventCam
End If
If (Chr(KeyAscii) = "3") Then Call Reset
If (Chr(KeyAscii) = "4") Then Call EventCmps1D
If (Chr(KeyAscii) = "5") Then Call EventCmps3D
If (Chr(KeyAscii) = "6") Then Call EventAcc
If (Chr(KeyAscii) = "7") Then Call EventAcc
If (Chr(KeyAscii) = "8") Then Call Event12Sec
If (Chr(KeyAscii) = "9") Then Call EventAccLuncur
''''''''''''''''''''''
End Sub
Private Sub cmdStop_Click()
Com1.Output = "0000000000000000"
Qq = 1
Call FlushCom
End Sub
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''' Form Load - Unload ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Private Sub Form_Load()
Call Reset
Call ResetGraph
Call PortSett
Call FlushCom
'Call BukaKoneksi
End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next
Qq = 1
'Call TutupKoneksi
End Sub
'''''''''''''''''''''''''''''''''' Event Other ''''''''''''''''''''''''
Private Sub cmdLoadSens_Click()
txtReceiveSens.LoadFile (App.Path & "\Sensor.sns")
Call LoadSensData(LsX, "\AccX.sns"): Call DrawX
Call LoadSensData(LsY, "\AccY.sns"): Call DrawY
Call LoadSensData(LsZ, "\AccZ.sns"): Call DrawZ
Call LoadSensData(LsC, "\Cmps1.sns"): Call DrawC
End Sub
Private Sub cmdSaveSens_Click()
txtReceiveSens.SaveFile (App.Path & "\Sensor.sns")
Call SaveSensData(LsX, "\AccX.sns")
Call SaveSensData(LsY, "\AccY.sns")
Call SaveSensData(LsZ, "\AccZ.sns")
Call SaveSensData(LsC, "\Cmps1.sns")
'MsgBox "Penyimpanan berhasil!!!", vbInformation, "Sukses!"
End Sub
Private Sub cmdAnalyze_Click()
frmGraphAcc.Show
End Sub
Private Sub Reset()
cmpsCamflg = 202 'Untuk mengatasi bug data Camera + Compas
shpFront.Width = 0 'Progress Camera
txtRecCam.Text = "": txtReceiveCam.Text = "": txtRecSens.Text = "":  txtReceiveSens.Text = "": 'TextBox Sensor + Cam
txtPress.Text = ""
txtX.Text = "": txtY.Text = "": txtZ.Text = "": txtC.Text = "": LsX.Clear: LsY.Clear: LsZ.Clear: LsC.Clear 'ListBox Acc + Cmps
lblSensCn.Caption = "__": lblCamCn.Caption = "__": lblCnPercent.Caption = "__" 'Label Sensor + Cam
lblX.Caption = "__": lblY.Caption = "__": lblZ.Caption = "__": lblC.Caption = "__" 'Label Acc + Cmps
shpFront.Width = 0: j = 0
End Sub
Private Sub ResetPic()
For Y = 1 To 200
    For X = 1 To 200
        Pic.PSet (X - 1, Y - 1), RGB(0, 0, 0)
    Next X
Next Y
End Sub
Private Sub ResetGraph()
Call DrawX: lblX.Caption = 0
Call DrawY: lblY.Caption = 0
Call DrawZ: lblZ.Caption = 0
Call DrawC: lblC.Caption = 0 'Ini ada error karena file Arrow g da
End Sub
Private Sub FlushCom() 'Flushing Comm Buffer
Do Until (Com1.InBufferCount = 0)
    ss = Com1.Input
Loop
End Sub
Private Sub cmdClear_Click()
Call Reset
Call ResetPic
Call FlushCom
Call ResetGraph
End Sub
