VERSION 5.00
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Begin VB.Form frmReceiver 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Ground Control Station"
   ClientHeight    =   8925
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   14985
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
   ScaleHeight     =   8925
   ScaleWidth      =   14985
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame frmTmpData 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   975
      Left            =   7080
      TabIndex        =   8
      Top             =   7920
      Width           =   3135
      Begin VB.ListBox LsC 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   2280
         TabIndex        =   112
         Top             =   600
         Width           =   735
      End
      Begin VB.TextBox txtC 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   330
         Left            =   2280
         TabIndex        =   111
         Top             =   240
         Width           =   735
      End
      Begin VB.TextBox txtX 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   330
         Left            =   120
         TabIndex        =   14
         Top             =   240
         Width           =   735
      End
      Begin VB.ListBox LsX 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   120
         TabIndex        =   13
         Top             =   600
         Width           =   735
      End
      Begin VB.TextBox txtY 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000C000&
         Height          =   330
         Left            =   840
         TabIndex        =   12
         Top             =   240
         Width           =   735
      End
      Begin VB.ListBox LsY 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   840
         TabIndex        =   11
         Top             =   600
         Width           =   735
      End
      Begin VB.TextBox txtZ 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   330
         Left            =   1560
         TabIndex        =   10
         Top             =   240
         Width           =   735
      End
      Begin VB.ListBox LsZ 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   1560
         TabIndex        =   9
         Top             =   600
         Width           =   735
      End
   End
   Begin VB.Frame grpSend 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   9015
      Left            =   0
      TabIndex        =   43
      Top             =   0
      Width           =   975
      Begin VB.CommandButton cmdParachute 
         Caption         =   "&Parach"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   120
         Picture         =   "frmReceiver.frx":F84A
         Style           =   1  'Graphical
         TabIndex        =   61
         Top             =   3600
         Width           =   735
      End
      Begin VB.CommandButton cmdFanStop 
         Caption         =   "&Stop"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   120
         Picture         =   "frmReceiver.frx":8874B
         Style           =   1  'Graphical
         TabIndex        =   82
         Top             =   2760
         Width           =   735
      End
      Begin VB.CommandButton cmdStop 
         Caption         =   "&Stop"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   120
         Picture         =   "frmReceiver.frx":88B8D
         Style           =   1  'Graphical
         TabIndex        =   45
         Top             =   5400
         Width           =   735
      End
      Begin VB.CommandButton cmdRead 
         Caption         =   "&Read"
         Height          =   855
         Left            =   120
         Picture         =   "frmReceiver.frx":88FCF
         Style           =   1  'Graphical
         TabIndex        =   47
         Top             =   4560
         Width           =   735
      End
      Begin VB.CommandButton cmdBackUp 
         Caption         =   "&BackUp"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   120
         Picture         =   "frmReceiver.frx":89411
         Style           =   1  'Graphical
         TabIndex        =   59
         Top             =   7800
         Width           =   735
      End
      Begin VB.CommandButton cmdReset 
         Caption         =   "Rese&t"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   120
         Picture         =   "frmReceiver.frx":89853
         Style           =   1  'Graphical
         TabIndex        =   58
         Top             =   6960
         Width           =   735
      End
      Begin VB.CommandButton cmdLaunch 
         Caption         =   "&Launch"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   120
         Picture         =   "frmReceiver.frx":89C95
         Style           =   1  'Graphical
         TabIndex        =   46
         Top             =   1920
         Width           =   735
      End
      Begin VB.CommandButton cmdCommOpen 
         Caption         =   "&OPEN"
         Height          =   975
         Left            =   120
         Picture         =   "frmReceiver.frx":89F9F
         Style           =   1  'Graphical
         TabIndex        =   44
         Top             =   360
         Width           =   735
      End
      Begin VB.Line Line4 
         BorderColor     =   &H000000FF&
         BorderWidth     =   3
         X1              =   0
         X2              =   840
         Y1              =   8760
         Y2              =   8760
      End
      Begin VB.Label Label57 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "Add"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   225
         Left            =   120
         TabIndex        =   50
         Top             =   6600
         Width           =   330
      End
      Begin VB.Label Label56 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "Control"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000C000&
         Height          =   225
         Left            =   120
         TabIndex        =   49
         Top             =   1680
         Width           =   615
      End
      Begin VB.Label Label55 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "Comm"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   225
         Left            =   120
         TabIndex        =   48
         Top             =   120
         Width           =   540
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00FF0000&
         BorderWidth     =   3
         X1              =   0
         X2              =   840
         Y1              =   1440
         Y2              =   1440
      End
      Begin VB.Line Line2 
         BorderColor     =   &H0000C000&
         BorderWidth     =   3
         X1              =   0
         X2              =   840
         Y1              =   6360
         Y2              =   6360
      End
   End
   Begin VB.Frame frmLogo 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      ForeColor       =   &H00000000&
      Height          =   2055
      Left            =   960
      TabIndex        =   27
      Top             =   6480
      Width           =   2895
      Begin VB.Label Label8 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "@KOMURINDO"
         ForeColor       =   &H0000FFFF&
         Height          =   225
         Left            =   1560
         TabIndex        =   81
         Top             =   1200
         Width           =   1230
      End
      Begin VB.Label Label24 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "RODEESA"
         BeginProperty Font 
            Name            =   "Segoe UI Semibold"
            Size            =   14.25
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   375
         Left            =   1560
         TabIndex        =   42
         Top             =   120
         Width           =   1245
      End
      Begin VB.Image imgUNESA 
         Height          =   1800
         Left            =   0
         Picture         =   "frmReceiver.frx":8A2A9
         Top             =   120
         Width           =   1800
      End
      Begin VB.Label Label28 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "2013"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   495
         Left            =   2040
         TabIndex        =   41
         Top             =   1440
         Width           =   855
      End
   End
   Begin MSCommLib.MSComm Com1 
      Left            =   11760
      Top             =   240
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
   End
   Begin VB.Frame grpDataSensor 
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H00000000&
      Height          =   6375
      Left            =   1080
      TabIndex        =   0
      Top             =   0
      Width           =   2775
      Begin VB.TextBox txtCMD 
         Appearance      =   0  'Flat
         Height          =   330
         Left            =   120
         TabIndex        =   110
         Top             =   5520
         Width           =   2535
      End
      Begin VB.ListBox LsRec 
         Appearance      =   0  'Flat
         BeginProperty Font 
            Name            =   "Segoe UI Light"
            Size            =   8.25
            Charset         =   0
            Weight          =   300
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000C0&
         Height          =   4905
         Left            =   120
         TabIndex        =   60
         Top             =   600
         Width           =   2535
      End
      Begin VB.TextBox txtRecSens 
         Appearance      =   0  'Flat
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
         Left            =   1680
         TabIndex        =   3
         Top             =   240
         Width           =   735
      End
      Begin RichTextLib.RichTextBox RTFSens 
         Height          =   1575
         Left            =   120
         TabIndex        =   1
         Top             =   600
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   2778
         _Version        =   393217
         BackColor       =   16777215
         ScrollBars      =   2
         MaxLength       =   99999999
         Appearance      =   0
         TextRTF         =   $"frmReceiver.frx":92BDD
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Segoe UI Light"
            Size            =   8.25
            Charset         =   0
            Weight          =   300
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Label Label17 
         BackStyle       =   0  'Transparent
         Caption         =   "row data"
         BeginProperty Font 
            Name            =   "Segoe UI Semibold"
            Size            =   9
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   1560
         TabIndex        =   83
         Top             =   6000
         Width           =   1095
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
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   720
         TabIndex        =   6
         Top             =   6000
         Width           =   735
      End
      Begin VB.Label Label11 
         BackStyle       =   0  'Transparent
         Caption         =   "Data :"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   6000
         Width           =   615
      End
      Begin VB.Label Label1 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "Receiving Now"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   240
         TabIndex        =   2
         Top             =   240
         Width           =   1455
      End
   End
   Begin VB.Frame grpAccGraph 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   8535
      Left            =   3960
      TabIndex        =   4
      Top             =   0
      Width           =   10935
      Begin VB.Frame frmPressure 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         ForeColor       =   &H80000008&
         Height          =   2295
         Left            =   6120
         TabIndex        =   105
         Top             =   5160
         Width           =   3375
         Begin VB.PictureBox PicPress 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H80000005&
            ForeColor       =   &H80000008&
            Height          =   1545
            Left            =   120
            Picture         =   "frmReceiver.frx":92C60
            ScaleHeight     =   1515
            ScaleWidth      =   3150
            TabIndex        =   109
            Top             =   240
            Width           =   3180
            Begin VB.Line Ln_P 
               BorderColor     =   &H000080FF&
               BorderWidth     =   4
               X1              =   1560
               X2              =   1560
               Y1              =   1440
               Y2              =   240
            End
         End
         Begin VB.Label Label9 
            BackColor       =   &H80000012&
            BackStyle       =   0  'Transparent
            Caption         =   "Pressure : "
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   255
            Left            =   120
            TabIndex        =   108
            Top             =   1920
            Width           =   855
         End
         Begin VB.Label Label13 
            BackColor       =   &H80000012&
            BackStyle       =   0  'Transparent
            Caption         =   "Pa"
            ForeColor       =   &H00000000&
            Height          =   255
            Left            =   2520
            TabIndex        =   107
            Top             =   1920
            Width           =   375
         End
         Begin VB.Label lblPressure 
            BackColor       =   &H80000012&
            BackStyle       =   0  'Transparent
            Caption         =   "123"
            ForeColor       =   &H00000000&
            Height          =   255
            Left            =   1080
            TabIndex        =   106
            Top             =   1920
            Width           =   975
         End
      End
      Begin VB.Frame frmPitch 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H80000008&
         Height          =   3615
         Left            =   3600
         TabIndex        =   97
         Top             =   4680
         Width           =   2415
         Begin VB.Frame frmPitch1 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   2835
            Left            =   120
            TabIndex        =   98
            Top             =   240
            Width           =   2235
            Begin VB.Line LRoll3 
               BorderColor     =   &H000000FF&
               BorderWidth     =   4
               X1              =   1080
               X2              =   1080
               Y1              =   1320
               Y2              =   1560
            End
            Begin VB.Line Line15 
               BorderColor     =   &H00404040&
               X1              =   720
               X2              =   1440
               Y1              =   1560
               Y2              =   1560
            End
            Begin VB.Line Line14 
               BorderColor     =   &H00404040&
               X1              =   840
               X2              =   1320
               Y1              =   1440
               Y2              =   1440
            End
            Begin VB.Line Line13 
               BorderColor     =   &H00404040&
               X1              =   840
               X2              =   1320
               Y1              =   1680
               Y2              =   1680
            End
            Begin VB.Line Line5 
               BorderColor     =   &H00404040&
               X1              =   960
               X2              =   1200
               Y1              =   1320
               Y2              =   1320
            End
            Begin VB.Line Line6 
               BorderColor     =   &H00404040&
               X1              =   720
               X2              =   1440
               Y1              =   1080
               Y2              =   1080
            End
            Begin VB.Line Line7 
               BorderColor     =   &H00404040&
               X1              =   840
               X2              =   1320
               Y1              =   960
               Y2              =   960
            End
            Begin VB.Line Line8 
               BorderColor     =   &H00404040&
               X1              =   840
               X2              =   1320
               Y1              =   1200
               Y2              =   1200
            End
            Begin VB.Line Line9 
               BorderColor     =   &H00404040&
               X1              =   720
               X2              =   1440
               Y1              =   840
               Y2              =   840
            End
            Begin VB.Line Line10 
               BorderColor     =   &H00404040&
               X1              =   840
               X2              =   1320
               Y1              =   720
               Y2              =   720
            End
            Begin VB.Line Line11 
               BorderColor     =   &H00404040&
               X1              =   840
               X2              =   1320
               Y1              =   1920
               Y2              =   1920
            End
            Begin VB.Line Line12 
               BorderColor     =   &H00404040&
               X1              =   720
               X2              =   1440
               Y1              =   1800
               Y2              =   1800
            End
            Begin VB.Line LRoll2 
               BorderColor     =   &H000000FF&
               BorderWidth     =   4
               X1              =   1080
               X2              =   2040
               Y1              =   1320
               Y2              =   1320
            End
            Begin VB.Line LRoll1 
               BorderColor     =   &H000000FF&
               BorderWidth     =   4
               X1              =   1080
               X2              =   2040
               Y1              =   1320
               Y2              =   1320
            End
            Begin VB.Shape pitchTop 
               BackColor       =   &H00FFFFC0&
               BackStyle       =   1  'Opaque
               BorderColor     =   &H00FFFFC0&
               Height          =   2865
               Left            =   0
               Top             =   0
               Width           =   2175
            End
            Begin VB.Shape pitchBottom 
               BackColor       =   &H0000C000&
               BackStyle       =   1  'Opaque
               BorderColor     =   &H0000C000&
               Height          =   2865
               Left            =   0
               Top             =   0
               Width           =   2175
            End
         End
         Begin VB.Label Label68 
            BackColor       =   &H80000012&
            BackStyle       =   0  'Transparent
            Caption         =   "Pitch : "
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   255
            Left            =   120
            TabIndex        =   104
            Top             =   3240
            Width           =   615
         End
         Begin VB.Label lblPitch 
            BackColor       =   &H80000012&
            BackStyle       =   0  'Transparent
            Caption         =   "123"
            ForeColor       =   &H00000000&
            Height          =   255
            Left            =   720
            TabIndex        =   103
            Top             =   3240
            Width           =   375
         End
         Begin VB.Label Label67 
            BackColor       =   &H80000012&
            BackStyle       =   0  'Transparent
            Caption         =   "°"
            ForeColor       =   &H00000000&
            Height          =   255
            Left            =   1200
            TabIndex        =   102
            Top             =   3240
            Width           =   255
         End
         Begin VB.Label Label66 
            BackColor       =   &H80000012&
            BackStyle       =   0  'Transparent
            Caption         =   "Roll : "
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   255
            Left            =   1320
            TabIndex        =   101
            Top             =   3240
            Width           =   495
         End
         Begin VB.Label lblRoll 
            BackColor       =   &H80000012&
            BackStyle       =   0  'Transparent
            Caption         =   "123"
            ForeColor       =   &H00000000&
            Height          =   255
            Left            =   1800
            TabIndex        =   100
            Top             =   3240
            Width           =   375
         End
         Begin VB.Label Label64 
            BackColor       =   &H80000012&
            BackStyle       =   0  'Transparent
            Caption         =   "°"
            ForeColor       =   &H00000000&
            Height          =   255
            Left            =   2280
            TabIndex        =   99
            Top             =   3240
            Width           =   255
         End
      End
      Begin VB.PictureBox PicAltitudeM 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         FillColor       =   &H00FFFFFF&
         ForeColor       =   &H80000008&
         Height          =   7230
         Left            =   9960
         ScaleHeight     =   7200
         ScaleWidth      =   525
         TabIndex        =   80
         Top             =   360
         Width           =   555
         Begin VB.Shape shpFront 
            BackColor       =   &H00000000&
            BackStyle       =   1  'Opaque
            Height          =   615
            Left            =   0
            Top             =   0
            Width           =   255
         End
         Begin VB.Shape shpBack 
            BackColor       =   &H0000C000&
            BackStyle       =   1  'Opaque
            BorderColor     =   &H0000C000&
            Height          =   7215
            Left            =   0
            Top             =   0
            Width           =   255
         End
      End
      Begin VB.PictureBox PicGraph 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         FillColor       =   &H00FFFFFF&
         ForeColor       =   &H80000008&
         Height          =   3030
         Left            =   120
         ScaleHeight     =   3000
         ScaleWidth      =   9615
         TabIndex        =   7
         Top             =   360
         Width           =   9645
         Begin VB.Timer tmr1 
            Interval        =   1000
            Left            =   6840
            Top             =   120
         End
      End
      Begin VB.Frame frmCmpss 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         ForeColor       =   &H80000008&
         Height          =   3615
         Left            =   120
         TabIndex        =   84
         Top             =   4680
         Width           =   3255
         Begin VB.PictureBox PicCompass 
            Appearance      =   0  'Flat
            AutoSize        =   -1  'True
            BackColor       =   &H80000005&
            BorderStyle     =   0  'None
            FillColor       =   &H00FFFFFF&
            ForeColor       =   &H80000008&
            Height          =   2640
            Left            =   360
            Picture         =   "frmReceiver.frx":9A003
            ScaleHeight     =   2640
            ScaleWidth      =   2610
            TabIndex        =   85
            Top             =   360
            Width           =   2610
            Begin VB.Line LnCmps 
               BorderColor     =   &H000000FF&
               BorderWidth     =   3
               X1              =   1320
               X2              =   2520
               Y1              =   1320
               Y2              =   1320
            End
            Begin VB.Label Label58 
               BackColor       =   &H80000012&
               BackStyle       =   0  'Transparent
               Caption         =   "NW"
               BeginProperty Font 
                  Name            =   "Segoe UI"
                  Size            =   9
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   255
               Left            =   0
               TabIndex        =   89
               Top             =   240
               Width           =   495
            End
            Begin VB.Label Label27 
               BackColor       =   &H80000012&
               BackStyle       =   0  'Transparent
               Caption         =   "  NE"
               BeginProperty Font 
                  Name            =   "Segoe UI"
                  Size            =   9
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   255
               Left            =   2280
               TabIndex        =   88
               Top             =   240
               Width           =   495
            End
            Begin VB.Label Label26 
               BackColor       =   &H80000012&
               BackStyle       =   0  'Transparent
               Caption         =   " SE"
               BeginProperty Font 
                  Name            =   "Segoe UI"
                  Size            =   9
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   255
               Left            =   2280
               TabIndex        =   87
               Top             =   2280
               Width           =   495
            End
            Begin VB.Label Label21 
               BackColor       =   &H80000012&
               BackStyle       =   0  'Transparent
               Caption         =   " SW"
               BeginProperty Font 
                  Name            =   "Segoe UI"
                  Size            =   9
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   255
               Left            =   0
               TabIndex        =   86
               Top             =   2280
               Width           =   495
            End
         End
         Begin VB.Label lbl34 
            BackColor       =   &H80000012&
            BackStyle       =   0  'Transparent
            Caption         =   "Compass Bearing : "
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   255
            Left            =   480
            TabIndex        =   96
            Top             =   3240
            Width           =   1695
         End
         Begin VB.Label lblBearing 
            BackColor       =   &H80000012&
            BackStyle       =   0  'Transparent
            Caption         =   "123"
            ForeColor       =   &H00000000&
            Height          =   255
            Left            =   2040
            TabIndex        =   95
            Top             =   3240
            Width           =   495
         End
         Begin VB.Label Label63 
            BackColor       =   &H80000012&
            BackStyle       =   0  'Transparent
            Caption         =   "°"
            ForeColor       =   &H00000000&
            Height          =   255
            Left            =   2640
            TabIndex        =   94
            Top             =   3240
            Width           =   255
         End
         Begin VB.Label Label62 
            BackColor       =   &H80000012&
            BackStyle       =   0  'Transparent
            Caption         =   " N"
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   255
            Left            =   1560
            TabIndex        =   93
            Top             =   120
            Width           =   255
         End
         Begin VB.Label Label61 
            BackColor       =   &H80000012&
            BackStyle       =   0  'Transparent
            Caption         =   " S"
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   255
            Left            =   1560
            TabIndex        =   92
            Top             =   3000
            Width           =   255
         End
         Begin VB.Label Label60 
            BackColor       =   &H80000012&
            BackStyle       =   0  'Transparent
            Caption         =   "W"
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   255
            Left            =   120
            TabIndex        =   91
            Top             =   1560
            Width           =   255
         End
         Begin VB.Label Label59 
            BackColor       =   &H80000012&
            BackStyle       =   0  'Transparent
            Caption         =   "E"
            BeginProperty Font 
               Name            =   "Segoe UI"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   255
            Left            =   3000
            TabIndex        =   90
            Top             =   1560
            Width           =   255
         End
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H00C000C0&
         BackStyle       =   1  'Opaque
         Height          =   255
         Left            =   120
         Top             =   4200
         Width           =   255
      End
      Begin VB.Label Label65 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "Compass Bearing : "
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   480
         TabIndex        =   113
         Top             =   4200
         Width           =   1815
      End
      Begin VB.Label Label31 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "° Celc"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   8520
         TabIndex        =   79
         Top             =   7560
         Width           =   615
      End
      Begin VB.Label Label23 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "Altitude :"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   9960
         TabIndex        =   78
         Top             =   120
         Width           =   975
      End
      Begin VB.Label lblHCab 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "Height :"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   9960
         TabIndex        =   77
         Top             =   7680
         Width           =   735
      End
      Begin VB.Label lblHeight 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "123"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   9960
         TabIndex        =   76
         Top             =   7920
         Width           =   495
      End
      Begin VB.Label Label25 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "m"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   10560
         TabIndex        =   75
         Top             =   7920
         Width           =   255
      End
      Begin VB.Label Label10 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "0.0"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   10560
         TabIndex        =   74
         Top             =   7440
         Width           =   255
      End
      Begin VB.Label Label30 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "10"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   10560
         TabIndex        =   73
         Top             =   6840
         Width           =   255
      End
      Begin VB.Label Label44 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "120"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   10560
         TabIndex        =   72
         Top             =   360
         Width           =   375
      End
      Begin VB.Label Label45 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "110"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   10560
         TabIndex        =   71
         Top             =   840
         Width           =   375
      End
      Begin VB.Label Label46 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "100"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   10560
         TabIndex        =   70
         Top             =   1440
         Width           =   375
      End
      Begin VB.Label Label47 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "90"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   10560
         TabIndex        =   69
         Top             =   2040
         Width           =   375
      End
      Begin VB.Label Label48 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "80"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   10560
         TabIndex        =   68
         Top             =   2640
         Width           =   375
      End
      Begin VB.Label Label49 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "70"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   10560
         TabIndex        =   67
         Top             =   3240
         Width           =   375
      End
      Begin VB.Label Label50 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "60"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   10560
         TabIndex        =   66
         Top             =   3840
         Width           =   375
      End
      Begin VB.Label Label51 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "50"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   10560
         TabIndex        =   65
         Top             =   4440
         Width           =   375
      End
      Begin VB.Label Label52 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "40"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   10560
         TabIndex        =   64
         Top             =   5040
         Width           =   375
      End
      Begin VB.Label Label53 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "30"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   10560
         TabIndex        =   63
         Top             =   5640
         Width           =   375
      End
      Begin VB.Label Label54 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         BackStyle       =   0  'Transparent
         Caption         =   "20"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   10560
         TabIndex        =   62
         Top             =   6240
         Width           =   375
      End
      Begin VB.Label Label43 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "12"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   9600
         TabIndex        =   40
         Top             =   3480
         Width           =   255
      End
      Begin VB.Label Label42 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "11"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   8880
         TabIndex        =   39
         Top             =   3480
         Width           =   255
      End
      Begin VB.Label Label41 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "10"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   8040
         TabIndex        =   38
         Top             =   3480
         Width           =   255
      End
      Begin VB.Label Label40 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "9.0"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   7320
         TabIndex        =   37
         Top             =   3480
         Width           =   255
      End
      Begin VB.Label Label39 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "8.0"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   6480
         TabIndex        =   36
         Top             =   3480
         Width           =   255
      End
      Begin VB.Label Label38 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "7.0"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   5640
         TabIndex        =   35
         Top             =   3480
         Width           =   255
      End
      Begin VB.Label Label37 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "6.0"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   4920
         TabIndex        =   34
         Top             =   3480
         Width           =   255
      End
      Begin VB.Label Label36 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "5.0"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   4080
         TabIndex        =   33
         Top             =   3480
         Width           =   255
      End
      Begin VB.Label Label35 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "4.0"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   3240
         TabIndex        =   32
         Top             =   3480
         Width           =   255
      End
      Begin VB.Label Label34 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "3.0"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   2400
         TabIndex        =   31
         Top             =   3480
         Width           =   255
      End
      Begin VB.Label Label33 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "2.0"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   1680
         TabIndex        =   30
         Top             =   3480
         Width           =   255
      End
      Begin VB.Label Label32 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "1.0"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   840
         TabIndex        =   29
         Top             =   3480
         Width           =   375
      End
      Begin VB.Label lbl0sec 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "0.0"
         BeginProperty Font 
            Name            =   "Baskerville Old Face"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   120
         TabIndex        =   28
         Top             =   3480
         Width           =   255
      End
      Begin VB.Label lblTemperature 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "123"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   7920
         TabIndex        =   26
         Top             =   7560
         Width           =   375
      End
      Begin VB.Label Label16 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "Temperature : "
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   6600
         TabIndex        =   25
         Top             =   7560
         Width           =   1335
      End
      Begin VB.Label lblZAcc 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "123"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   6360
         TabIndex        =   24
         Top             =   3840
         Width           =   900
      End
      Begin VB.Label lblYAcc 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "123"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   3720
         TabIndex        =   23
         Top             =   3840
         Width           =   900
      End
      Begin VB.Label Label14 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "m/s²"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   7440
         TabIndex        =   22
         Top             =   3840
         Width           =   375
      End
      Begin VB.Label Label12 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "m/s²"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   4800
         TabIndex        =   21
         Top             =   3840
         Width           =   375
      End
      Begin VB.Label lblXAcc 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "123"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   1080
         TabIndex        =   20
         Top             =   3840
         Width           =   900
      End
      Begin VB.Label Label19 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "m/s²"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   2160
         TabIndex        =   19
         Top             =   3840
         Width           =   375
      End
      Begin VB.Shape shpBlue 
         BackColor       =   &H00FF0000&
         BackStyle       =   1  'Opaque
         Height          =   255
         Left            =   5400
         Top             =   3840
         Width           =   255
      End
      Begin VB.Shape shpGreen 
         BackColor       =   &H0000C000&
         BackStyle       =   1  'Opaque
         Height          =   255
         Left            =   2760
         Top             =   3840
         Width           =   255
      End
      Begin VB.Label Label7 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "Y Acc : "
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   3120
         TabIndex        =   18
         Top             =   3840
         Width           =   735
      End
      Begin VB.Label Label5 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "Z Acc : "
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   5760
         TabIndex        =   17
         Top             =   3840
         Width           =   735
      End
      Begin VB.Label Label4 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "X Acc : "
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   480
         TabIndex        =   16
         Top             =   3840
         Width           =   615
      End
      Begin VB.Shape shpRed 
         BackColor       =   &H000000FF&
         BackStyle       =   1  'Opaque
         Height          =   255
         Left            =   120
         Top             =   3840
         Width           =   255
      End
      Begin VB.Label Label3 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "Accelerometer 3 Axis : "
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   120
         TabIndex        =   15
         Top             =   120
         Width           =   4935
      End
      Begin VB.Line Line3 
         BorderColor     =   &H00000000&
         X1              =   120
         X2              =   7080
         Y1              =   9360
         Y2              =   9360
      End
   End
   Begin VB.Frame frmStatus 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      BorderStyle     =   0  'None
      ForeColor       =   &H00000000&
      Height          =   495
      Left            =   960
      TabIndex        =   51
      Top             =   8640
      Width           =   14415
      Begin VB.Label Label22 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "Time :"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   225
         Left            =   12480
         TabIndex        =   57
         Top             =   0
         Width           =   510
      End
      Begin VB.Label lblTime 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "_"
         ForeColor       =   &H00000000&
         Height          =   225
         Left            =   13080
         TabIndex        =   56
         Top             =   0
         Width           =   75
      End
      Begin VB.Label lblDate 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "_"
         ForeColor       =   &H00000000&
         Height          =   225
         Left            =   11160
         TabIndex        =   55
         Top             =   0
         Width           =   75
      End
      Begin VB.Label Label15 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "Date : "
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   225
         Left            =   10560
         TabIndex        =   54
         Top             =   0
         Width           =   540
      End
      Begin VB.Label lblStatus 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "_"
         ForeColor       =   &H00000000&
         Height          =   225
         Left            =   840
         TabIndex        =   53
         Top             =   0
         Width           =   75
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "Status : "
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   225
         Left            =   120
         TabIndex        =   52
         Top             =   0
         Width           =   660
      End
   End
End
Attribute VB_Name = "frmReceiver"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Const pi As Double = 3.14159265358979
''''''''''''''''''''''''''''''''''''''''''''''''''
Dim L1_x1, L1_y1, L1_x2, L1_y2, L_Cy As Long 'untuk menggambar 1 line green grafik
Dim L2_x1, L2_y1, L2_x2, L2_y2 As Long 'untuk menggambar 1 line blue grafik
Dim L3_x1, L3_y1, L3_x2, L3_y2 As Long 'untuk menggambar 1 line red grafik
Dim L4_x1, L4_y1, L4_x2, L4_y2 As Long 'untuk menggambar 1 line ungu grafik
Dim Qq As Boolean, s, ss, s_Save As String
Dim Xax, Yax, Zax, Cax, Pax, Tax, Hax As String
Dim XAcc_Val, YAcc_Val, ZAcc_Val, Cmps_Val, P_Val, H_Val, T_Val, HCab As Long
Dim CountT, CountN As Long
Dim degCmps, degPress, degL1, degL2, degL3 As Double
Private Sub Delay_(delayy As Long)
Dim del As Long
For del = 0 To delayy
    DoEvents
Next
End Sub
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Private Sub InitData()
lblXAcc.Caption = "_": lblYAcc.Caption = "_": lblZAcc.Caption = "_"
lblBearing.Caption = "_": lblPitch.Caption = "_": lblRoll.Caption = "_"
lblTemperature.Caption = "_": lblPressure.Caption = "_": lblHeight.Caption = "_"
shpFront.Height = shpBack.Height
txtRecSens.Text = "": LsRec.Clear: lblSensCn.Caption = "_"
''''''''''''''''''''''''''''''''''''''''''''
Xax = "": Yax = "": Zax = "": Cax = "": Pax = "": Tax = "": Hax = ""
XAcc_Val = 0: YAcc_Val = 0: ZAcc_Val = 0: Cmps_Val = 0: P_Val = 0: T_Val = 0: H_Val = 0
CountT = 0: CountN = 0
'''''''''''''''''''''''''''''''''
Qq = 0: s = "": ss = "": s_Save = ""
'''''''''''''''''''''''''''''''''
PicGraph.Cls
LsX.Clear: LsY.Clear: LsZ.Clear: LsC.Clear
txtX.Text = "": txtY.Text = "": txtZ.Text = "": txtC.Text = ""
Call CmpsLn(191)
Call Rolling(0)
Call Pitching(0)
Call PressLn(50000)
End Sub
Private Sub InitXax()
L_Cy = 1500:
L1_x1 = 0: L2_x1 = 0: L3_x1 = 0: L4_x1 = 0
L1_x2 = 0: L2_x2 = 0: L3_x2 = 0: L4_x2 = 0
End Sub
Private Sub InitYax()
L1_y1 = L_Cy: L2_y1 = L_Cy: L3_y1 = L_Cy: L4_y1 = 0
L1_y2 = L_Cy: L2_y2 = L_Cy: L3_y2 = L_Cy: L4_y2 = 0
End Sub
Private Sub CmpsLn(ByVal Cmpss As Long)
degCmps = (((Cmpss * 60 / 255) * 6) + 90) - 90
LnCmps.X2 = 950 * Cos(degCmps * pi / 180) + LnCmps.X1
LnCmps.Y2 = 950 * Sin(degCmps * pi / 180) + LnCmps.Y1
End Sub
Private Sub PressLn(ByVal Presss As Double)
degPress = ((Presss - 50000) / 54000 * 180) + 180
Ln_P.X2 = 1300 * Cos(degPress * pi / 180) + Ln_P.X1
Ln_P.Y2 = 1300 * Sin(degPress * pi / 180) + Ln_P.Y1
End Sub
Private Sub Pitching(ByVal pitchh As Long)
On Error Resume Next
Dim pitchNew As Long
pitchNew = Int((pitchh + 64) * 3200 / 128)
pitchTop.Height = pitchNew: lblPitch.Caption = Int((pitchh * 90) / 64)
End Sub
Private Sub Rolling(ByVal rolll As Long)
On Error Resume Next
Dim rollNew As Long
rollNew = Int(-((rolll) * 90 / 64))
''''''''''''''''''''''''''''''''''
degL1 = (((rollNew * 60 / 255) * 6) + 90) - 90
LRoll2.X2 = 900 * Cos(degL1 * pi / 180) + LRoll2.X1
LRoll2.Y2 = 900 * Sin(degL1 * pi / 180) + LRoll2.Y1
''''''''''''''''''''''''''''''''''
degL2 = (((rollNew * 60 / 255) * 6) + 270) - 90
LRoll1.X2 = 900 * Cos(degL2 * pi / 180) + LRoll1.X1
LRoll1.Y2 = 900 * Sin(degL2 * pi / 180) + LRoll1.Y1
''''''''''''''''''''''''''''''''''
degL3 = (((rollNew * 60 / 255) * 6) + 180) - 90
LRoll3.X2 = 200 * Cos(degL3 * pi / 180) + LRoll3.X1
LRoll3.Y2 = 200 * Sin(degL3 * pi / 180) + LRoll3.Y1
''''''''''''''''''''''''''''''''''
lblRoll.Caption = rollNew
End Sub
Private Sub Heighting()
H_Val = ((76 - (P_Val * 0.0007500616827)) * 100) - HCab: lblHeight.Caption = H_Val
shpFront.Height = ((120 - Val(Mid(lblHeight.Caption, 1, 2))) / 120) * 7215
End Sub
Private Sub DrawLine(ByVal V_Val As Long, ByVal Col As String)
If (Col = "Green") Then
    L1_x2 = L1_x2 + 80: L1_y2 = L_Cy - V_Val
    PicGraph.Line (L1_x1, L1_y1)-(L1_x2, L1_y2), vbGreen: L1_x1 = L1_x2: L1_y1 = L1_y2
ElseIf (Col = "Blue") Then
    L2_x2 = L2_x2 + 80: L2_y2 = L_Cy - V_Val
    PicGraph.Line (L2_x1, L2_y1)-(L2_x2, L2_y2), vbBlue: L2_x1 = L2_x2: L2_y1 = L2_y2
ElseIf (Col = "Red") Then
    L3_x2 = L3_x2 + 80: L3_y2 = L_Cy - V_Val
    PicGraph.Line (L3_x1, L3_y1)-(L3_x2, L3_y2), vbRed: L3_x1 = L3_x2: L3_y1 = L3_y2
ElseIf (Col = "Ungu") Then
    L4_x2 = L4_x2 + 80: L4_y2 = V_Val
    PicGraph.Line (L4_x1, L4_y1)-(L4_x2, L4_y2), &HC000C0: L4_x1 = L4_x2: L4_y1 = L4_y2
End If
''''''''''''''''' to Clear Graph ''''''''''''''''
'If (L1_x2 >= 9600) Then
'    Call InitXax: Call InitYax: PicGraph.Cls: Call Mistar(PicGraph)
'End If
End Sub
Private Sub PortSett()
Com1.RThreshold = 1: Com1.RTSEnable = True: Com1.Settings = "9600,n,8,1": Com1.CommPort = 2
End Sub
Private Sub cmdBackUp_Click()
Dim intFileHandle As Integer
intFileHandle = FreeFile
Open "SensRodeesa.sns" For Output As #intFileHandle
Print #intFileHandle, s_Save
Close #intFileHandle
MsgBox "Penyimpanan Berhasil.", vbInformation, "Selesai!"
End Sub
Private Sub cmdCommOpen_Click()
If cmdCommOpen.Caption = "&OPEN" Then
    cmdCommOpen.Caption = "&CLOSE": Com1.PortOpen = True: lblStatus.Caption = "Port Open!"
    cmdCommOpen.Picture = LoadPicture(App.Path & "\Res\Cut.ico")
Else
    cmdCommOpen.Caption = "&OPEN": Com1.PortOpen = False: lblStatus.Caption = "Port Close!"
    cmdCommOpen.Picture = LoadPicture(App.Path & "\Res\Sock.ico")
End If
End Sub
Private Sub InsGraph(ByVal X_Val As Long, ByVal Y_Val As Long, ByVal Z_Val As Long, ByVal C_Val As Long)
LsX.AddItem X_Val: LsY.AddItem Y_Val: LsZ.AddItem Z_Val: LsC.AddItem C_Val
If (LsX.ListCount > 121) Then
    LsX.RemoveItem 0: LsY.RemoveItem 0: LsZ.RemoveItem 0: LsC.RemoveItem 0
    Call InitXax: PicGraph.Cls: Call Mistar(PicGraph)
    iX = 0
    For iX = 0 To LsX.ListCount - 1
        Call DrawLine(Val(LsX.List(iX)), "Red")
        Call DrawLine(Val(LsY.List(iX)), "Green")
        Call DrawLine(Val(LsZ.List(iX)), "Blue")
        Call DrawLine(Val(LsC.List(iX)), "Ungu")
    Next iX
Else
    Call DrawLine(X_Val, "Red"): Call DrawLine(Y_Val, "Green"): Call DrawLine(Z_Val, "Blue"): Call DrawLine(C_Val, "Ungu")
End If
End Sub
Private Sub EventSens()
On Error Resume Next
Qq = 0
Do Until Qq = 1
    If Com1.InBufferCount <> 0 Then
        s = Com1.Input: txtRecSens.Text = "0x" & Hex(Asc(s)): s_All = s_All & s
        If (s = Chr(255)) Then
            Call Formatt
            If (LsRec.ListCount) = 25 Then LsRec.RemoveItem 0
            LsRec.AddItem Cax & " " & Xax & " " & Yax & " " & Zax & " " & Pax & " " & T_Val
            LsRec.Selected(LsRec.ListCount - 1) = True
            '''''''''''''''''
            Call UpVal
            lblXAcc.Caption = XAcc_Val * 9.8 / 64
            lblYAcc.Caption = YAcc_Val * 9.8 / 64
            lblZAcc.Caption = ZAcc_Val * 9.8 / 64
            InsGraph XAcc_Val * 1500 / 128, YAcc_Val * 1500 / 128, ZAcc_Val * 1500 / 128, Cmps_Val / 254 * 3000
            '''''''''''''''''
            Call Rolling(XAcc_Val)
            Call Pitching(YAcc_Val)
            Call CmpsLn(Cmps_Val)
            lblBearing.Caption = Cmps_Val / 256 * 360
            '''''''''''''''''
            P_Val = Val(Pax): lblPressure.Caption = Pax
            Call Heighting
            Call PressLn(P_Val)
            '''''''''''''''''
            lblTemperature.Caption = T_Val
            ''''''''''''''''''''''''''''''''''''''''''''''''''''''''
            s_Save = s_Save & Cax & " " & Xax & " " & Yax & " " & Zax & " " & Pax & " " & T_Val & Chr(13)
            CountT = 0: CountN = CountN + 1: Xax = "": Yax = "": Zax = "": Cax = "": Pax = "": Tax = "": T_Val = 0
            lblSensCn.Caption = CountN
        End If
        If (CountT = 1) Then Cmps_Val = Asc(s)
        If (CountT = 2) Then XAcc_Val = Asc(s)
        If (CountT = 3) Then YAcc_Val = Asc(s)
        If (CountT = 4) Then ZAcc_Val = Asc(s)
        If (CountT = 5 Or CountT = 6 Or CountT = 7 Or CountT = 8 Or CountT = 9 Or CountT = 10) Then Pax = Pax & s
        If (CountT = 11) Then T_Val = Asc(s)
        '''''''''''''''''
        CountT = CountT + 1
    End If
    DoEvents
Loop
End Sub
Private Sub cmdFanStop_Click()
Com1.Output = "aaa"
End Sub
Private Sub cmdLaunch_Click()
Com1.Output = "eee" '1100
End Sub
Private Sub cmdParachute_Click()
Com1.Output = "aaarrr"
End Sub
Private Sub cmdRead_Click()
Com1.Output = "zzz"
Call EventSens
End Sub
Private Sub cmdReset_Click()
Do Until (Com1.InBufferCount = 0)
    ss = Com1.Input
Loop
''''''''''''''
Call InitData
Call InitXax
Call InitYax
''''''''''''''
Call Mistar(PicGraph)
Call MistarAlti(PicAltitudeM)
End Sub
Private Sub cmdStop_Click()
Com1.Output = "xxx"
End Sub
Private Sub Form_Activate()
Call PortSett
Call InitXax
Call InitYax
Call InitData
frmTmpData.Visible = 0
Call Mistar(PicGraph)
Call MistarAlti(PicAltitudeM)
''''''' H Calibrating ''''''''''''''
HCab = 47
End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next
Qq = 0
End
End Sub
Private Sub tmr1_Timer()
lblDate.Caption = Date
lblTime.Caption = Time
End Sub
Private Sub Formatt()
If (Cmps_Val < 10) Then
    Cax = "00" & Cmps_Val
ElseIf (Cmps_Val >= 10 And Cmps_Val < 100) Then
    Cax = "0" & Cmps_Val
ElseIf (Cmps_Val >= 100) Then
    Cax = Cmps_Val
End If
'''''
If (XAcc_Val < 10) Then
    Xax = "00" & XAcc_Val
ElseIf (XAcc_Val >= 10 And XAcc_Val < 100) Then
    Xax = "0" & XAcc_Val
ElseIf (XAcc_Val >= 100) Then
    Xax = XAcc_Val
End If
'''''
If (YAcc_Val < 10) Then
    Yax = "00" & YAcc_Val
ElseIf (YAcc_Val >= 10 And YAcc_Val < 100) Then
    Yax = "0" & YAcc_Val
ElseIf (YAcc_Val >= 100) Then
    Yax = YAcc_Val
End If
'''''
If (ZAcc_Val < 10) Then
    Zax = "00" & ZAcc_Val
ElseIf (ZAcc_Val >= 10 And ZAcc_Val < 100) Then
    Zax = "0" & ZAcc_Val
ElseIf (ZAcc_Val >= 100) Then
    Zax = ZAcc_Val
End If
End Sub
Private Sub UpVal()
If XAcc_Val >= 0 And XAcc_Val < 128 Then
    XAcc_Val = XAcc_Val
Else
    XAcc_Val = XAcc_Val - 255
End If
''''''''''''''''''''''''''''
If YAcc_Val >= 0 And YAcc_Val < 128 Then
    YAcc_Val = YAcc_Val
Else
    YAcc_Val = YAcc_Val - 255
End If
''''''''''''''''''''''''''''
If ZAcc_Val >= 0 And ZAcc_Val < 128 Then
    ZAcc_Val = ZAcc_Val
Else
    ZAcc_Val = ZAcc_Val - 255
End If
End Sub
Private Sub txtCMD_Change()
sx = txtCMD.Text
Com1.Output = sx
If (sx = "a") Then DoEvents
If (sx = "q") Then DoEvents
If (sx = "e") Then DoEvents
If (sx = "z") Then Call EventSens
If (sx = "x") Then DoEvents
If (sx = "d") Then DoEvents
If (sx = "r") Then Com1.Output = "aaarrr"
If (sx = "f") Then DoEvents
txtCMD.Text = ""
End Sub
