VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Begin VB.Form frmReceiver 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Receiver"
   ClientHeight    =   9915
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   14700
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
   ScaleHeight     =   9915
   ScaleWidth      =   14700
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame frmTmpData 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   975
      Left            =   4200
      TabIndex        =   72
      Top             =   5520
      Width           =   5295
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
         Left            =   4440
         TabIndex        =   98
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
         Left            =   4440
         TabIndex        =   97
         Top             =   240
         Width           =   735
      End
      Begin VB.ListBox LsGZ 
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
         Left            =   3720
         TabIndex        =   96
         Top             =   600
         Width           =   735
      End
      Begin VB.TextBox txtGZ 
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
         Left            =   3720
         TabIndex        =   95
         Top             =   240
         Width           =   735
      End
      Begin VB.ListBox LsGY 
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
         Left            =   3000
         TabIndex        =   94
         Top             =   600
         Width           =   735
      End
      Begin VB.TextBox txtGY 
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
         Left            =   3000
         TabIndex        =   93
         Top             =   240
         Width           =   735
      End
      Begin VB.ListBox LsGX 
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
         TabIndex        =   92
         Top             =   600
         Width           =   735
      End
      Begin VB.TextBox txtGX 
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
         TabIndex        =   91
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
         TabIndex        =   78
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
         TabIndex        =   77
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
         TabIndex        =   76
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
         TabIndex        =   75
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
         TabIndex        =   74
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
         TabIndex        =   73
         Top             =   600
         Width           =   735
      End
   End
   Begin VB.Frame grpAccGraph 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   6255
      Left            =   3480
      TabIndex        =   3
      Top             =   0
      Width           =   11175
      Begin VB.PictureBox PicGraph2 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         FillColor       =   &H00FFFFFF&
         ForeColor       =   &H80000008&
         Height          =   2500
         Left            =   120
         ScaleHeight     =   2475
         ScaleWidth      =   9615
         TabIndex        =   45
         Top             =   3360
         Width           =   9645
      End
      Begin VB.PictureBox PicGraph 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         FillColor       =   &H00FFFFFF&
         ForeColor       =   &H80000008&
         Height          =   2500
         Left            =   120
         ScaleHeight     =   2475
         ScaleWidth      =   9615
         TabIndex        =   4
         Top             =   360
         Width           =   9645
         Begin VB.Timer tmr1 
            Interval        =   1000
            Left            =   6840
            Top             =   120
         End
      End
      Begin VB.Label Label61 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "Compass"
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
         Left            =   10320
         TabIndex        =   90
         Top             =   5760
         Width           =   735
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H00FFFF00&
         BackStyle       =   1  'Opaque
         Height          =   255
         Left            =   9840
         Top             =   5760
         Width           =   255
      End
      Begin VB.Label Label53 
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
         TabIndex        =   58
         Top             =   5880
         Width           =   255
      End
      Begin VB.Label Label52 
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
         TabIndex        =   57
         Top             =   5880
         Width           =   375
      End
      Begin VB.Label Label51 
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
         TabIndex        =   56
         Top             =   5880
         Width           =   255
      End
      Begin VB.Label Label50 
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
         TabIndex        =   55
         Top             =   5880
         Width           =   255
      End
      Begin VB.Label Label49 
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
         TabIndex        =   54
         Top             =   5880
         Width           =   255
      End
      Begin VB.Label Label48 
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
         TabIndex        =   53
         Top             =   5880
         Width           =   255
      End
      Begin VB.Label Label47 
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
         TabIndex        =   52
         Top             =   5880
         Width           =   255
      End
      Begin VB.Label Label46 
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
         TabIndex        =   51
         Top             =   5880
         Width           =   255
      End
      Begin VB.Label Label45 
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
         TabIndex        =   50
         Top             =   5880
         Width           =   255
      End
      Begin VB.Label Label44 
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
         TabIndex        =   49
         Top             =   5880
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
         Left            =   8040
         TabIndex        =   48
         Top             =   5880
         Width           =   255
      End
      Begin VB.Label Label28 
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
         TabIndex        =   47
         Top             =   5880
         Width           =   255
      End
      Begin VB.Label Label27 
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
         TabIndex        =   46
         Top             =   5880
         Width           =   255
      End
      Begin VB.Label Label26 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "Gyro 3 Axis :"
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
         TabIndex        =   44
         Top             =   3120
         Width           =   2055
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
         TabIndex        =   36
         Top             =   2880
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
         TabIndex        =   35
         Top             =   2880
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
         TabIndex        =   34
         Top             =   2880
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
         TabIndex        =   33
         Top             =   2880
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
         TabIndex        =   32
         Top             =   2880
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
         TabIndex        =   31
         Top             =   2880
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
         TabIndex        =   30
         Top             =   2880
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
         TabIndex        =   29
         Top             =   2880
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
         TabIndex        =   28
         Top             =   2880
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
         TabIndex        =   27
         Top             =   2880
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
         TabIndex        =   26
         Top             =   2880
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
         TabIndex        =   25
         Top             =   2880
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
         TabIndex        =   24
         Top             =   2880
         Width           =   255
      End
      Begin VB.Label lblZGyro 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "123"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   9840
         TabIndex        =   23
         Top             =   5280
         Width           =   735
      End
      Begin VB.Label lblYGyro 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "123"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   9840
         TabIndex        =   22
         Top             =   4440
         Width           =   735
      End
      Begin VB.Label lblXGyro 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "123"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   9840
         TabIndex        =   21
         Top             =   3600
         Width           =   735
      End
      Begin VB.Label Label17 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "°/s"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   10680
         TabIndex        =   20
         Top             =   5280
         Width           =   375
      End
      Begin VB.Label Label16 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "Z Gyro : "
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
         Left            =   10200
         TabIndex        =   19
         Top             =   4920
         Width           =   735
      End
      Begin VB.Label lblZAcc 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "123"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   9840
         TabIndex        =   18
         Top             =   2640
         Width           =   735
      End
      Begin VB.Label lblYAcc 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "123"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   9840
         TabIndex        =   17
         Top             =   1680
         Width           =   735
      End
      Begin VB.Label Label14 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "m/s²"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   10680
         TabIndex        =   16
         Top             =   2640
         Width           =   375
      End
      Begin VB.Label Label13 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "°/s"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   10680
         TabIndex        =   15
         Top             =   3600
         Width           =   375
      End
      Begin VB.Label Label12 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "m/s²"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   10680
         TabIndex        =   14
         Top             =   1680
         Width           =   375
      End
      Begin VB.Label lblXAcc 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "123"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   9840
         TabIndex        =   13
         Top             =   720
         Width           =   735
      End
      Begin VB.Label Label8 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "°/s"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   10680
         TabIndex        =   12
         Top             =   4440
         Width           =   375
      End
      Begin VB.Label Label19 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "m/s²"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   10680
         TabIndex        =   11
         Top             =   720
         Width           =   375
      End
      Begin VB.Shape shpGrey 
         BackColor       =   &H00808080&
         BackStyle       =   1  'Opaque
         Height          =   255
         Left            =   9840
         Top             =   4080
         Width           =   255
      End
      Begin VB.Shape shpAqua 
         BackColor       =   &H00C000C0&
         BackStyle       =   1  'Opaque
         Height          =   255
         Left            =   9840
         Top             =   3240
         Width           =   255
      End
      Begin VB.Shape shpYellow 
         BackColor       =   &H000080FF&
         BackStyle       =   1  'Opaque
         Height          =   255
         Left            =   9840
         Top             =   4920
         Width           =   255
      End
      Begin VB.Shape shpBlue 
         BackColor       =   &H00FF0000&
         BackStyle       =   1  'Opaque
         Height          =   255
         Left            =   9840
         Top             =   2280
         Width           =   255
      End
      Begin VB.Shape shpGreen 
         BackColor       =   &H0000C000&
         BackStyle       =   1  'Opaque
         Height          =   255
         Left            =   9840
         Top             =   1320
         Width           =   255
      End
      Begin VB.Label Label9 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "X Gyro : "
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
         Left            =   10200
         TabIndex        =   10
         Top             =   3240
         Width           =   855
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
         Left            =   10200
         TabIndex        =   9
         Top             =   1320
         Width           =   735
      End
      Begin VB.Label Label6 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "Y Gyro : "
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
         Left            =   10200
         TabIndex        =   8
         Top             =   4080
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
         Left            =   10200
         TabIndex        =   7
         Top             =   2280
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
         Left            =   10200
         TabIndex        =   6
         Top             =   360
         Width           =   615
      End
      Begin VB.Shape shpRed 
         BackColor       =   &H000000FF&
         BackStyle       =   1  'Opaque
         Height          =   255
         Left            =   9840
         Top             =   360
         Width           =   255
      End
      Begin VB.Label Label3 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "Accelerometer 3 Axis :"
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
         TabIndex        =   5
         Top             =   120
         Width           =   2055
      End
      Begin VB.Line Line3 
         BorderColor     =   &H00000000&
         X1              =   120
         X2              =   7080
         Y1              =   9360
         Y2              =   9360
      End
   End
   Begin VB.Frame frmPitch 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      ForeColor       =   &H80000008&
      Height          =   3615
      Left            =   11280
      TabIndex        =   79
      Top             =   6240
      Width           =   3375
      Begin VB.Frame frmPitch1 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   2835
         Left            =   120
         TabIndex        =   80
         Top             =   240
         Width           =   3195
         Begin VB.Line Line12 
            BorderColor     =   &H00404040&
            X1              =   1200
            X2              =   1920
            Y1              =   1800
            Y2              =   1800
         End
         Begin VB.Line Line11 
            BorderColor     =   &H00404040&
            X1              =   1320
            X2              =   1800
            Y1              =   1920
            Y2              =   1920
         End
         Begin VB.Line Line10 
            BorderColor     =   &H00404040&
            X1              =   1320
            X2              =   1800
            Y1              =   720
            Y2              =   720
         End
         Begin VB.Line Line9 
            BorderColor     =   &H00404040&
            X1              =   1200
            X2              =   1920
            Y1              =   840
            Y2              =   840
         End
         Begin VB.Line Line8 
            BorderColor     =   &H00404040&
            X1              =   1320
            X2              =   1800
            Y1              =   1200
            Y2              =   1200
         End
         Begin VB.Line Line7 
            BorderColor     =   &H00404040&
            X1              =   1320
            X2              =   1800
            Y1              =   960
            Y2              =   960
         End
         Begin VB.Line Line6 
            BorderColor     =   &H00404040&
            X1              =   1200
            X2              =   1920
            Y1              =   1080
            Y2              =   1080
         End
         Begin VB.Line Line5 
            BorderColor     =   &H00404040&
            X1              =   1440
            X2              =   1680
            Y1              =   1320
            Y2              =   1320
         End
         Begin VB.Line Line4 
            BorderColor     =   &H00404040&
            X1              =   1320
            X2              =   1800
            Y1              =   1680
            Y2              =   1680
         End
         Begin VB.Line Line2 
            BorderColor     =   &H00404040&
            X1              =   1320
            X2              =   1800
            Y1              =   1440
            Y2              =   1440
         End
         Begin VB.Line Line1 
            BorderColor     =   &H00404040&
            X1              =   1200
            X2              =   1920
            Y1              =   1560
            Y2              =   1560
         End
         Begin VB.Line LRoll2 
            BorderColor     =   &H000000FF&
            BorderWidth     =   4
            X1              =   1560
            X2              =   2760
            Y1              =   1320
            Y2              =   1320
         End
         Begin VB.Line LRoll3 
            BorderColor     =   &H000000FF&
            BorderWidth     =   4
            X1              =   1560
            X2              =   1560
            Y1              =   1320
            Y2              =   1680
         End
         Begin VB.Line LRoll1 
            BorderColor     =   &H000000FF&
            BorderWidth     =   4
            X1              =   1560
            X2              =   2760
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
            Width           =   3135
         End
         Begin VB.Shape pitchBottom 
            BackColor       =   &H0000C000&
            BackStyle       =   1  'Opaque
            BorderColor     =   &H0000C000&
            Height          =   2865
            Left            =   0
            Top             =   0
            Width           =   3135
         End
      End
      Begin VB.Label Label60 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "°"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   2880
         TabIndex        =   86
         Top             =   3240
         Width           =   255
      End
      Begin VB.Label lblRoll 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "123"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   2400
         TabIndex        =   85
         Top             =   3240
         Width           =   375
      End
      Begin VB.Label Label58 
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
         Left            =   1920
         TabIndex        =   84
         Top             =   3240
         Width           =   855
      End
      Begin VB.Label Label59 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "°"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   1200
         TabIndex        =   83
         Top             =   3240
         Width           =   255
      End
      Begin VB.Label lblPitch 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "123"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   720
         TabIndex        =   82
         Top             =   3240
         Width           =   375
      End
      Begin VB.Label Label21 
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
         TabIndex        =   81
         Top             =   3240
         Width           =   855
      End
   End
   Begin VB.Frame frmCmpss 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   3615
      Left            =   7920
      TabIndex        =   59
      Top             =   6240
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
         Picture         =   "frmReceiver.frx":F84A
         ScaleHeight     =   2640
         ScaleWidth      =   2610
         TabIndex        =   60
         Top             =   360
         Width           =   2610
         Begin VB.Label Label57 
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
            TabIndex        =   71
            Top             =   2280
            Width           =   495
         End
         Begin VB.Label Label56 
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
            TabIndex        =   70
            Top             =   2280
            Width           =   495
         End
         Begin VB.Label Label55 
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
            TabIndex        =   69
            Top             =   240
            Width           =   495
         End
         Begin VB.Label Label54 
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
            TabIndex        =   68
            Top             =   240
            Width           =   495
         End
         Begin VB.Line LnCmps 
            BorderColor     =   &H000000FF&
            BorderWidth     =   3
            X1              =   1320
            X2              =   2520
            Y1              =   1320
            Y2              =   1320
         End
      End
      Begin VB.Label Label29 
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
         TabIndex        =   67
         Top             =   1560
         Width           =   255
      End
      Begin VB.Label Label25 
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
         TabIndex        =   66
         Top             =   1560
         Width           =   255
      End
      Begin VB.Label Label24 
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
         TabIndex        =   65
         Top             =   3000
         Width           =   255
      End
      Begin VB.Label Label23 
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
         TabIndex        =   64
         Top             =   120
         Width           =   255
      End
      Begin VB.Label Label31 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "°"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   2640
         TabIndex        =   63
         Top             =   3240
         Width           =   255
      End
      Begin VB.Label lblCompass 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "123"
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   2040
         TabIndex        =   62
         Top             =   3240
         Width           =   495
      End
      Begin VB.Label Label11 
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
         TabIndex        =   61
         Top             =   3240
         Width           =   1695
      End
   End
   Begin VB.Frame grpDataSensor 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   5895
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   3255
      Begin VB.TextBox txtCMD 
         Appearance      =   0  'Flat
         Height          =   240
         Left            =   120
         TabIndex        =   89
         Top             =   5160
         Width           =   3015
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
         Left            =   1800
         TabIndex        =   2
         Top             =   240
         Width           =   1335
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
         Height          =   4515
         Left            =   120
         TabIndex        =   37
         Top             =   600
         Width           =   3015
      End
      Begin VB.Label lblSensCn 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "_"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   120
         TabIndex        =   88
         Top             =   5520
         Width           =   2955
      End
      Begin VB.Label Label20 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H000000C0&
         Caption         =   "305"
         BeginProperty Font 
            Name            =   "Segoe UI"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   0
         TabIndex        =   38
         Top             =   120
         Width           =   615
      End
      Begin VB.Label Label1 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "Receiving :"
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
         Left            =   720
         TabIndex        =   1
         Top             =   240
         Width           =   1095
      End
   End
   Begin VB.Frame frmCam 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   3975
      Left            =   120
      TabIndex        =   39
      Top             =   5880
      Width           =   3255
      Begin VB.PictureBox PicCam 
         Appearance      =   0  'Flat
         AutoSize        =   -1  'True
         BackColor       =   &H80000005&
         FillColor       =   &H00FFFFFF&
         ForeColor       =   &H80000008&
         Height          =   3060
         Left            =   120
         ScaleHeight     =   202
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   202
         TabIndex        =   40
         Top             =   480
         Width           =   3060
      End
      Begin VB.Shape shpBack 
         BackColor       =   &H00000000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00000000&
         Height          =   255
         Left            =   120
         Top             =   3600
         Width           =   2415
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
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   2640
         TabIndex        =   43
         Top             =   3600
         Width           =   375
      End
      Begin VB.Label Label10 
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
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   3000
         TabIndex        =   42
         Top             =   3600
         Width           =   255
      End
      Begin VB.Shape shpFront 
         BackColor       =   &H0000FF00&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H0000FF00&
         Height          =   255
         Left            =   120
         Top             =   3600
         Width           =   135
      End
      Begin VB.Label Label18 
         BackColor       =   &H80000012&
         BackStyle       =   0  'Transparent
         Caption         =   "200 x 200 RGB Camera Data :"
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
         TabIndex        =   41
         Top             =   240
         Width           =   2535
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
   Begin VB.Frame frmBottom 
      Appearance      =   0  'Flat
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H80000008&
      Height          =   375
      Left            =   0
      TabIndex        =   87
      Top             =   9600
      Width           =   14775
   End
   Begin VB.Frame frmTool 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H80000008&
      Height          =   2655
      Left            =   3840
      TabIndex        =   99
      Top             =   6840
      Width           =   3615
      Begin VB.Frame grpSend 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0C0&
         BorderStyle     =   0  'None
         ForeColor       =   &H80000008&
         Height          =   2535
         Left            =   120
         TabIndex        =   100
         Top             =   120
         Width           =   3375
         Begin VB.CommandButton cmdCommOpen 
            Caption         =   "&OPEN"
            Height          =   855
            Left            =   120
            Picture         =   "frmReceiver.frx":1EA9D
            Style           =   1  'Graphical
            TabIndex        =   115
            Top             =   120
            Width           =   615
         End
         Begin VB.CommandButton cmdRead 
            Caption         =   "&Read"
            Height          =   855
            Left            =   840
            Picture         =   "frmReceiver.frx":1EDA7
            Style           =   1  'Graphical
            TabIndex        =   114
            Top             =   120
            Width           =   615
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
            Left            =   2040
            Picture         =   "frmReceiver.frx":1F1E9
            Style           =   1  'Graphical
            TabIndex        =   113
            Top             =   1080
            Width           =   615
         End
         Begin VB.CommandButton cmdBackUp 
            Caption         =   "&Save"
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
            Left            =   2640
            Picture         =   "frmReceiver.frx":1F62B
            Style           =   1  'Graphical
            TabIndex        =   112
            Top             =   1080
            Width           =   615
         End
         Begin VB.CommandButton cmdBreak 
            Caption         =   "Brea&k"
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
            Left            =   1440
            Picture         =   "frmReceiver.frx":1FA6D
            Style           =   1  'Graphical
            TabIndex        =   111
            Top             =   120
            Width           =   615
         End
         Begin VB.CommandButton cmdSurveillance 
            Caption         =   "&Eye"
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
            Left            =   2040
            Picture         =   "frmReceiver.frx":1FEAF
            Style           =   1  'Graphical
            TabIndex        =   110
            Top             =   120
            Width           =   615
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
            Left            =   2640
            Picture         =   "frmReceiver.frx":202F1
            Style           =   1  'Graphical
            TabIndex        =   109
            Top             =   120
            Width           =   615
         End
         Begin VB.Frame frmStatus 
            Appearance      =   0  'Flat
            BackColor       =   &H00000000&
            BorderStyle     =   0  'None
            ForeColor       =   &H00000000&
            Height          =   975
            Left            =   0
            TabIndex        =   106
            Top             =   1080
            Width           =   1935
            Begin VB.Label Label2 
               AutoSize        =   -1  'True
               BackColor       =   &H80000012&
               BackStyle       =   0  'Transparent
               Caption         =   "Status : "
               BeginProperty Font 
                  Name            =   "Segoe UI"
                  Size            =   12
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00FFFFFF&
               Height          =   315
               Left            =   120
               TabIndex        =   108
               Top             =   0
               Width           =   885
            End
            Begin VB.Label lblStatus 
               AutoSize        =   -1  'True
               BackColor       =   &H80000012&
               BackStyle       =   0  'Transparent
               Caption         =   "_"
               BeginProperty Font 
                  Name            =   "Segoe UI"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H0080C0FF&
               Height          =   255
               Left            =   120
               TabIndex        =   107
               Top             =   360
               Width           =   1635
            End
         End
         Begin VB.Frame frmDT_Tmr 
            Appearance      =   0  'Flat
            BackColor       =   &H00000000&
            BorderStyle     =   0  'None
            ForeColor       =   &H80000008&
            Height          =   495
            Left            =   0
            TabIndex        =   101
            Top             =   2040
            Width           =   3375
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
               ForeColor       =   &H00FFFFFF&
               Height          =   225
               Left            =   1800
               TabIndex        =   105
               Top             =   120
               Width           =   510
            End
            Begin VB.Label lblTime 
               AutoSize        =   -1  'True
               BackColor       =   &H80000012&
               BackStyle       =   0  'Transparent
               Caption         =   "_"
               ForeColor       =   &H00FFFF80&
               Height          =   225
               Left            =   2400
               TabIndex        =   104
               Top             =   120
               Width           =   75
            End
            Begin VB.Label lblDate 
               AutoSize        =   -1  'True
               BackColor       =   &H80000012&
               BackStyle       =   0  'Transparent
               Caption         =   "_"
               ForeColor       =   &H0000FFFF&
               Height          =   225
               Left            =   720
               TabIndex        =   103
               Top             =   120
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
               ForeColor       =   &H00FFFFFF&
               Height          =   225
               Left            =   120
               TabIndex        =   102
               Top             =   120
               Width           =   660
            End
         End
      End
   End
End
Attribute VB_Name = "frmReceiver"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Const pi As Double = 3.14159265358979
Private Const Step1 As Integer = 96
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Dim L1_x1, L1_y1, L1_x2, L1_y2, L_Cy As Long 'untuk menggambar 1 line green grafik
Dim L2_x1, L2_y1, L2_x2, L2_y2 As Long 'untuk menggambar 1 line blue grafik
Dim L3_x1, L3_y1, L3_x2, L3_y2 As Long 'untuk menggambar 1 line red grafik
Dim L4_x1, L4_y1, L4_x2, L4_y2 As Long 'untuk menggambar 1 line ungu grafik
Dim L5_x1, L5_y1, L5_x2, L5_y2 As Long 'untuk menggambar 1 line grey grafik
Dim L6_x1, L6_y1, L6_x2, L6_y2 As Long 'untuk menggambar 1 line orange grafik
Dim L7_x1, L7_y1, L7_x2, L7_y2 As Long 'untuk menggambar 1 line aqua grafik
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Dim Qq As Boolean, s, ss, Str, Strs, s_Save As String
Dim Xax, Yax, Zax, Xgx, Ygx, Zgx, Cax As String
Dim XAcc_Val, YAcc_Val, ZAcc_Val, XGy_Val, YGy_Val, ZGy_Val, Cmps_Val As Long
Dim CountT, CountN As Long
Dim degCmps, degL1, degL2, degL3 As Double
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Private Sub InitData()
lblXAcc.Caption = "_": lblYAcc.Caption = "_": lblZAcc.Caption = "_"
lblXGyro.Caption = "_": lblYGyro.Caption = "_": lblZGyro.Caption = "_"
lblCompass.Caption = "_": lblPitch.Caption = "_"
txtRecSens.Text = "": LsRec.Clear: shpFront.Width = 0
'''''''''''''''''''''''''''''''''
PicGraph.Cls: PicGraph2.Cls: PicCam.Cls: PicCompass.Cls
Call CmpsLn(191)
Call Pitching(0)
Call Rolling(0)
'''''''''''''''''''''''''''''''''
Xax = "": Yax = "": Zax = "": Xgx = "": Ygx = "": Zgx = "": Cax = ""
XAcc_Val = 0: YAcc_Val = 0: ZAcc_Val = 0: XGy_Val = 0: YGy_Val = 0: ZGy_Val = 0: Cmps_Val = 0
CountT = 0: CountN = 0
'''''''''''''''''''''''''''''''''
Qq = 0: s = "": ss = "": Str = "": Strs = "": s_Save = ""
'''''''''''''''''''''''''''''''''
LsX.Clear: LsY.Clear: LsZ.Clear: LsGX.Clear: LsGY.Clear: LsGZ.Clear: LsC.Clear
txtX.Text = "": txtY.Text = "": txtZ.Text = "": txtGX.Text = "": txtGY.Text = "": txtGZ.Text = "": txtC.Text = ""
End Sub
Private Sub InitXax()
L_Cy = 1250
L1_x1 = 0: L2_x1 = 0: L3_x1 = 0: L4_x1 = 0: L5_x1 = 0: L6_x1 = 0: L7_x1 = 0
L1_x2 = 0: L2_x2 = 0: L3_x2 = 0: L4_x2 = 0: L5_x2 = 0: L6_x2 = 0: L7_x2 = 0
End Sub
Private Sub InitYax()
L1_y1 = L_Cy: L2_y1 = L_Cy: L3_y1 = L_Cy: L4_y1 = L_Cy: L5_y1 = L_Cy: L6_y1 = L_Cy: L7_y1 = 0
L1_y2 = L_Cy: L2_y2 = L_Cy: L3_y2 = L_Cy: L4_y2 = L_Cy: L5_y2 = L_Cy: L6_y2 = L_Cy: L7_y2 = 0
End Sub
Private Sub CmpsLn(ByVal Cmpss As Long)
degCmps = (((Cmpss * 60 / 255) * 6) + 90) - 90
LnCmps.X2 = 1000 * Cos(degCmps * pi / 180) + LnCmps.X1
LnCmps.Y2 = 1000 * Sin(degCmps * pi / 180) + LnCmps.Y1
End Sub
Private Sub Pitching(ByVal pitchh As Long)
On Error Resume Next
Dim pitchNew As Long
pitchNew = Int((pitchh + 64) * 3200 / 128)
pitchTop.Height = pitchNew: lblPitch.Caption = Int((pitchh * 90) / 64)
End Sub
Private Sub Rolling(ByVal rolll As Long)
'On Error Resume Next
Dim rollNew As Long
rollNew = Int(-rolll)
''''''''''''''''''''''''''''''''''
degL1 = (((rollNew * 60 / 255) * 6) + 90) - 90
LRoll2.X2 = 1200 * Cos(degL1 * pi / 180) + LRoll2.X1
LRoll2.Y2 = 1200 * Sin(degL1 * pi / 180) + LRoll2.Y1
''''''''''''''''''''''''''''''''''
degL2 = (((rollNew * 60 / 255) * 6) + 270) - 90
LRoll1.X2 = 1200 * Cos(degL2 * pi / 180) + LRoll1.X1
LRoll1.Y2 = 1200 * Sin(degL2 * pi / 180) + LRoll1.Y1
''''''''''''''''''''''''''''''''''
degL3 = (((rollNew * 60 / 255) * 6) + 180) - 90
LRoll3.X2 = 200 * Cos(degL3 * pi / 180) + LRoll3.X1
LRoll3.Y2 = 200 * Sin(degL3 * pi / 180) + LRoll3.Y1
''''''''''''''''''''''''''''''''''
lblRoll.Caption = rollNew
End Sub
Private Sub DrawLine(ByVal V_Val As Long, ByVal Col As String)
'On Error Resume Next
If (Col = "Green") Then
    L1_x2 = L1_x2 + Step1: L1_y2 = L_Cy - V_Val
    PicGraph.Line (L1_x1, L1_y1)-(L1_x2, L1_y2), vbGreen: L1_x1 = L1_x2: L1_y1 = L1_y2
ElseIf (Col = "Blue") Then
    L2_x2 = L2_x2 + Step1: L2_y2 = L_Cy - V_Val
    PicGraph.Line (L2_x1, L2_y1)-(L2_x2, L2_y2), vbBlue: L2_x1 = L2_x2: L2_y1 = L2_y2
ElseIf (Col = "Red") Then
    L3_x2 = L3_x2 + Step1: L3_y2 = L_Cy - V_Val
    PicGraph.Line (L3_x1, L3_y1)-(L3_x2, L3_y2), vbRed: L3_x1 = L3_x2: L3_y1 = L3_y2
ElseIf (Col = "Ungu") Then
    L4_x2 = L4_x2 + Step1: L4_y2 = L_Cy - V_Val
    PicGraph2.Line (L4_x1, L4_y1)-(L4_x2, L4_y2), &HC000C0: L4_x1 = L4_x2: L4_y1 = L4_y2
ElseIf (Col = "Grey") Then
    L5_x2 = L5_x2 + Step1: L5_y2 = L_Cy - V_Val
    PicGraph2.Line (L5_x1, L5_y1)-(L5_x2, L5_y2), &H808080: L5_x1 = L5_x2: L5_y1 = L5_y2
ElseIf (Col = "Orange") Then
    L6_x2 = L6_x2 + Step1: L6_y2 = L_Cy - V_Val
    PicGraph2.Line (L6_x1, L6_y1)-(L6_x2, L6_y2), &H80FF&: L6_x1 = L6_x2: L6_y1 = L6_y2
ElseIf (Col = "Aqua") Then
    L7_x2 = L7_x2 + Step1: L7_y2 = V_Val
    PicGraph2.Line (L7_x1, L7_y1)-(L7_x2, L7_y2), &HFFFF00: L7_x1 = L7_x2: L7_y1 = L7_y2
End If
''''''''''''''''' to Clear Graph ''''''''''''''''
If (L1_x2 >= 9600 Or L2_x2 >= 9600 Or L3_x2 >= 9600) Then
    Call InitXax: Call InitYax: PicGraph.Cls: PicGraph2.Cls: Call Mistar(PicGraph): Call Mistar(PicGraph2)
End If
End Sub
Private Sub InsGraph(ByVal X_Val As Long, ByVal Y_Val As Long, ByVal Z_Val As Long, _
                     ByVal GX_Val As Long, ByVal GY_Val As Long, ByVal GZ_Val As Long, ByVal C_Val As Long)
'On Error Resume Next
LsX.AddItem X_Val: LsY.AddItem Y_Val: LsZ.AddItem Z_Val
LsGX.AddItem GX_Val: LsGY.AddItem GY_Val: LsGZ.AddItem GZ_Val: LsC.AddItem C_Val
If (LsX.ListCount > 121) Then
    LsX.RemoveItem 0: LsY.RemoveItem 0: LsZ.RemoveItem 0:
    LsGX.RemoveItem 0: LsGY.RemoveItem 0: LsGZ.RemoveItem 0: LsC.RemoveItem 0
    Call InitXax: PicGraph.Cls: PicGraph2.Cls
    Call Mistar(PicGraph)
    Call Mistar(PicGraph2)
    iX = 0
    For iX = 0 To LsX.ListCount - 1
        Call DrawLine(Val(LsX.List(iX)), "Red")
        Call DrawLine(Val(LsY.List(iX)), "Green")
        Call DrawLine(Val(LsZ.List(iX)), "Blue")
        Call DrawLine(Val(LsGX.List(iX)), "Ungu")
        Call DrawLine(Val(LsGY.List(iX)), "Grey")
        Call DrawLine(Val(LsGZ.List(iX)), "Orange")
        Call DrawLine(Val(LsC.List(iX)), "Aqua")
    Next iX
Else
    Call DrawLine(X_Val, "Red"): Call DrawLine(Y_Val, "Green"): Call DrawLine(Z_Val, "Blue")
    Call DrawLine(GX_Val, "Ungu"): Call DrawLine(GY_Val, "Grey"): Call DrawLine(GZ_Val, "Orange")
    Call DrawLine(C_Val, "Aqua")
End If
End Sub
Private Sub DrawOnly()
Call DrawLine(XAcc_Val * 1250 / 128, "Red")
Call DrawLine(YAcc_Val * 1250 / 128, "Green")
Call DrawLine(ZAcc_Val * 1250 / 128, "Blue")
Call DrawLine((XGy_Val - 60) * 1250 / 50, "Ungu")
Call DrawLine((YGy_Val - 60) * 1250 / 50, "Grey")
Call DrawLine((ZGy_Val - 50) * 1250 / 50, "Orange")
Call DrawLine(Cmps_Val / 254 * 2500, "Aqua")
End Sub
Private Sub PortSett()
Com1.RThreshold = 1: Com1.RTSEnable = True: Com1.Settings = "57600,n,8,1": Com1.CommPort = 2
End Sub
Private Sub cmdBackUp_Click()
Dim intFileHandle As Integer
''' Sensor '''
intFileHandle = FreeFile
Open "SensMataDewa.sns" For Output As #intFileHandle
Print #intFileHandle, s_Save
Close #intFileHandle
''' Cam '''
intFileHandle = FreeFile
Open "CamMataDewa.sns" For Output As #intFileHandle
Print #intFileHandle, Strs
Close #intFileHandle
''' ''' '''
MsgBox "Penyimpanan Berhasil.", vbInformation, "Selesai!"
End Sub
Private Sub cmdBreak_Click()
Com1.Output = "q"
Do Until Com1.InBufferCount = 0
    ss = Com1.Input
Loop
lblStatus.Caption = "Camera Ready!!!"
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
Private Sub DrawCam()
On Error Resume Next
Dim Xcx1, XcxX1, Ycy1, PicI1, cun, i1 As Double
Strs = Str
While i1 < Len(Strs)
    i1 = i1 + 1: PicI1 = Asc(Mid(Strs, i1, 1))
    If (PicI1 = 255) Then
        Xcx1 = 0: Ycy1 = Ycy1 + 1: XcxX1 = 1
    Else
        Xcx1 = Xcx1 + 1
        If (Xcx1 > 3) Then
            CnX = CnX + 1
            If CnX = 1 Then R = Asc(Mid(Strs, i1, 1))
            If CnX = 2 Then G = Asc(Mid(Strs, i1, 1))
            If CnX = 3 Then
                B = Asc(Mid(Strs, i1, 1)): PicCam.PSet (XcxX1, Ycy1), RGB(R, G, B)
                XcxX1 = XcxX1 + 1: CnX = 0
            End If
        End If
    End If
Wend
End Sub
Private Sub EventSens()
On Error Resume Next
Qq = 0
Do Until Qq = 1
    If Com1.InBufferCount <> 0 Then
        s = Com1.Input: txtRecSens.Text = "0x" & Hex(Asc(s))
        If (s = Chr(13)) Then
            ''' Get Sens Val '''
            XAcc_Val = Val(Xax): YAcc_Val = Val(Yax): ZAcc_Val = Val(Zax)
            XGy_Val = Val(Xgx): YGy_Val = Val(Ygx): ZGy_Val = Val(Zgx): Cmps_Val = Val(Cax)
            ''' Roll Receiver '''
            If (LsRec.ListCount) = 23 Then LsRec.RemoveItem 0
            LsRec.AddItem "305" & " " & Xax & " " & Yax & " " & Zax & " " & _
                                        Xgx & " " & Ygx & " " & Zgx & " " & Cax
            LsRec.Selected(LsRec.ListCount - 1) = True
            ''' Up Sens Value n Draw '''
            Call UpVal
            Call DrawOnly
            'Call InsGraph(XAcc_Val * 1250 / 128, YAcc_Val * 1250 / 128, ZAcc_Val * 1250 / 128, _
            '(XGy_Val - 60) * 1250 / 50, (YGy_Val - 60) * 1250 / 50, (ZGy_Val - 60) * 1250 / 50, _
            'Cmps_Val / 254 * 2500)
            ''' Show Value to Legend '''
            lblXAcc.Caption = XAcc_Val * 9.8 / 64
            lblYAcc.Caption = YAcc_Val * 9.8 / 64
            lblZAcc.Caption = ZAcc_Val * 9.8 / 64
            lblXGyro.Caption = (XGy_Val - 60)
            lblYGyro.Caption = (YGy_Val - 60)
            lblZGyro.Caption = (ZGy_Val - 50)
            lblCompass.Caption = Cmps_Val / 256 * 360
            ''' Compass Graph '''
            Call CmpsLn(Cmps_Val)
            Call Pitching(XAcc_Val)
            Call Rolling(YAcc_Val)
            ''' Save '''
            s_Save = s_Save & "305" & " " & Xax & " " & Yax & " " & Zax & " " & _
                                            Xgx & " " & Ygx & " " & Zgx & " " & Cax & Chr(13)
            ''' Reset n Count '''
            CountT = 0: CountN = CountN + 1
            Xax = "": Yax = "": Zax = "": Xgx = "": Ygx = "": Zgx = "": Cax = ""
            lblSensCn.Caption = "Receive : " & CountN & " row data"
        End If
        If (CountT = 5 Or CountT = 6 Or CountT = 7) Then Xax = Xax & s
        If (CountT = 9 Or CountT = 10 Or CountT = 11) Then Yax = Yax & s
        If (CountT = 13 Or CountT = 14 Or CountT = 15) Then Zax = Zax & s
        If (CountT = 17 Or CountT = 18 Or CountT = 19) Then Xgx = Xgx & s
        If (CountT = 21 Or CountT = 22 Or CountT = 23) Then Ygx = Ygx & s
        If (CountT = 25 Or CountT = 26 Or CountT = 27) Then Zgx = Zgx & s
        If (CountT = 29 Or CountT = 30 Or CountT = 31) Then Cax = Cax & s
        '''''''''''''''''
        CountT = CountT + 1
    End If
    DoEvents
Loop
End Sub
Private Sub EventCam()
On Error Resume Next
Qq = 0
Do Until Qq = 1
    If (Com1.InBufferCount <> 0) Then
        s = Com1.Input:  Str = Str & s
        lblCnPercent.Caption = (Len(Str) / 120800) * 100
        shpFront.Width = (Len(Str) / 120800) * shpBack.Width
    End If
    If (Len(Str) = 120800) Then GoTo Ends
    If (Len(Str) Mod 100 = 0) Then Call DrawCam
    DoEvents
Loop
Ends:
    lblStatus.Caption = "Surveillance Done!": Call DrawCam
End Sub
Private Sub cmdRead_Click()
Com1.Output = "zzz"
lblStatus.Caption = "Receiving Data..."
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
Call Mistar(PicGraph2)
End Sub
Private Sub cmdStop_Click()
Com1.Output = "ax"
lblStatus.Caption = "Stopped!"
End Sub
Private Sub cmdSurveillance_Click()
Com1.Output = "c"
Call EventCam
End Sub
Private Sub Form_Activate()
Call PortSett
Call InitXax
Call InitYax
Call InitData
Call Mistar(PicGraph)
Call Mistar(PicGraph2)
frmTmpData.Visible = 0
End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next
Qq = 0
End
End Sub
Private Sub PicCam_Click()
Call DrawCam
End Sub
Private Sub PicCam_DblClick()
If (Len(Str) / 120800) * 100 > 95 Then lblCnPercent.Caption = "100"
End Sub
Private Sub tmr1_Timer()
lblDate.Caption = Date
lblTime.Caption = Time
End Sub
Private Sub UpVal()
If XAcc_Val > 0 And XAcc_Val < 128 Then
    XAcc_Val = XAcc_Val
Else
    XAcc_Val = XAcc_Val - 255
End If
''''''''''''''''''''''''''''
If YAcc_Val > 0 And YAcc_Val < 128 Then
    YAcc_Val = YAcc_Val
Else
    YAcc_Val = YAcc_Val - 255
End If
''''''''''''''''''''''''''''
If ZAcc_Val > 0 And ZAcc_Val < 128 Then
    ZAcc_Val = ZAcc_Val
Else
    ZAcc_Val = ZAcc_Val - 255
End If
If XAcc_Val = 255 Then XAcc_Val = 0
If YAcc_Val = 255 Then YAcc_Val = 0
If ZAcc_Val = 255 Then ZAcc_Val = 0
End Sub
Private Sub CheckComm()
DoEvents
Dim sTest As String
For i = 1 To 3
    Do Until Com1.InBufferCount = 0
    sTest = sTest & Com1.Input
    Loop
Next
LsRec.AddItem sTest
End Sub
Private Sub txtCMD_Change()
sx = txtCMD.Text
Com1.Output = sx
If (sx = "d") Then Call CheckComm
If (sx = "c") Then Call EventCam
If (sx = "z") Then Call cmdRead_Click
If (sx = "q") Then Call cmdBreak_Click
txtCMD.Text = ""
End Sub
