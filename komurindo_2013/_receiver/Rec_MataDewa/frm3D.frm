VERSION 5.00
Begin VB.Form frm3D 
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "3D"
   ClientHeight    =   8460
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   4455
   ClipControls    =   0   'False
   ControlBox      =   0   'False
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
   Moveable        =   0   'False
   ScaleHeight     =   8460
   ScaleWidth      =   4455
   ShowInTaskbar   =   0   'False
   Begin VB.Frame frmTombol 
      BackColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   660
      TabIndex        =   0
      Top             =   7800
      Width           =   3135
      Begin VB.CommandButton cmdRoll 
         Caption         =   "Roll"
         Height          =   255
         Left            =   2040
         TabIndex        =   3
         Top             =   240
         Width           =   975
      End
      Begin VB.CommandButton cmdPitch 
         Caption         =   "Pitch"
         Height          =   255
         Left            =   1080
         TabIndex        =   2
         Top             =   240
         Width           =   975
      End
      Begin VB.CommandButton cmdYaw 
         Caption         =   "Yaw"
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   975
      End
   End
   Begin VB.Timer tmrR 
      Interval        =   1
      Left            =   2160
      Top             =   5640
   End
End
Attribute VB_Name = "frm3D"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim hGLRC As Long
Dim xAngle As GLfloat
Dim yAngle As GLfloat
Dim zAngle As GLfloat
Sub SetupPixelFormat(ByVal hDC As Long)
    Dim pfd As PixelFormatDescriptor
    Dim PixelFormat As Integer
    pfd.nSize = Len(pfd)
    pfd.nVersion = 1
    pfd.dwFlags = PFD_SUPPORT_OPENGL Or PFD_DRAW_TO_WINDOW Or PFD_DOUBLEBUFFER Or PFD_TYPE_RGBA
    pfd.iPixelType = PFD_TYPE_RGBA
    pfd.cColorBits = 16
    pfd.cDepthBits = 16
    pfd.iLayerType = PFD_MAIN_PLANE
    PixelFormat = ChoosePixelFormat(hDC, pfd)
    If PixelFormat = 0 Then MsgBox ("Could not retrieve pixel format!")
    SetPixelFormat hDC, PixelFormat, pfd
End Sub
Private Sub cmdPitch_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
xSw = 1
End Sub
Private Sub cmdPitch_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
xSw = 0
End Sub
Private Sub cmdRoll_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
zSw = 1
End Sub
Private Sub cmdRoll_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
zSw = 0
End Sub
Private Sub cmdYaw_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
ySw = 1
End Sub
Private Sub cmdYaw_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
ySw = 0
End Sub
Private Sub Form_Load()
Dim hGLRC As Long
xAngle = 0
yAngle = 0
zAngle = 0
SetupPixelFormat hDC
hGLRC = wglCreateContext(hDC)
wglMakeCurrent hDC, hGLRC
glEnable GL_DEPTH_TEST
glFrontFace GL_CCW
      
Dim LightPos(3) As GLfloat
Dim SpecRef(3) As GLfloat
        
LightPos(0) = 0
LightPos(1) = 0
LightPos(2) = 0
LightPos(3) = 1
SpecRef(0) = 0.5
SpecRef(1) = 0.5
SpecRef(2) = 0.5
SpecRef(3) = 0.5
        
'glEnable GL_LIGHTING
'glLightfv GL_LIGHT0, GL_POSITION, LightPos(0)
'glEnable GL_LIGHT0
    
'glEnable GL_COLOR_MATERIAL
'glColorMaterial GL_FRONT, GL_AMBIENT_AND_DIFFUSE
'glMaterialfv GL_FRONT, GL_SPECULAR, SpecRef(0)
'glMateriali GL_FRONT, GL_SHININESS, 128
    
glClearColor 1, 1, 1, 0 'Set Back putih
Move (Screen.Width - Width) / 2, (Screen.Height - Height) / 2
End Sub

Private Sub Form_Paint()
glClear GL_COLOR_BUFFER_BIT Or GL_DEPTH_BUFFER_BIT
glLoadIdentity
glScalef 0.03, 0.03, 0.03
glTranslatef 0, 0, -3
glRotatef xAngle, 1, 0, 0
glRotatef yAngle, 0, 1, 0
glRotatef zAngle, 0, 0, 1
        
'Call Draw_Kotak1
'Call Draw_Kotak2
Call Draw_Border1
Call Draw_Border2
Call Draw_Axis
    
SwapBuffers hDC
End Sub
Private Sub Form_Unload(Cancel As Integer)
If hGLRC <> 0 Then
    wglMakeCurrent 0, 0
    wglDeleteContext hGLRC
End If
End Sub
Private Sub tmrR_Timer()
If xSw = 1 Then
    xAngle = xAngle + 5
    If xAngle > 360 Then xAngle = 0
    Form_Paint
End If
If ySw = 1 Then
    yAngle = yAngle + 5
    If yAngle > 360 Then yAngle = 0
    Form_Paint
End If
If zSw = 1 Then
    zAngle = zAngle + 5
    If zAngle > 360 Then zAngle = 0
    Form_Paint
End If
End Sub
