Attribute VB_Name = "modDraw"
Public Sub Mistar(PicT As PictureBox)
'Dengan kontrol PicBox Width = 9600, Height = 3000
PicT.Line (0, 1500)-(9600, 1500), &H808080
Dim i_Line As Integer
i_Line = 80
Do Until i_Line >= 9600 '12 sec per centisec
    PicT.Line (i_Line, 0)-(i_Line, 200), &HE0E0E0
    PicT.Line (i_Line, 2800)-(i_Line, 3000), &HE0E0E0
    i_Line = i_Line + 80
Loop
i_Line = 400
Do Until i_Line >= 9600 '12 sec per 1/2 sec
    PicT.Line (i_Line, 0)-(i_Line, 300), &HC0C0C0
    PicT.Line (i_Line, 2700)-(i_Line, 3000), &HC0C0C0
    i_Line = i_Line + 400
Loop
i_Line = 800
Do Until i_Line >= 9600 '12 sec per sec
    PicT.Line (i_Line, 0)-(i_Line, 3000), &H0&
    i_Line = i_Line + 800
Loop
End Sub
Public Sub MistarAlti(PicT As PictureBox)
'Dengan kontrol PicBox Width = 7200, Height = 540
Dim i_Line As Integer
i_Line = 60
Do Until i_Line >= 9600 '12 per 10 m
    PicT.Line (450, i_Line)-(540, i_Line), &HE0E0E0
    i_Line = i_Line + 80
Loop
i_Line = 300
Do Until i_Line >= 7200 '12 per 50 m
    PicT.Line (375, i_Line)-(540, i_Line), &HC0C0C0
    i_Line = i_Line + 300
Loop
i_Line = 600
Do Until i_Line >= 7200 '12 per 100 m
    PicT.Line (300, i_Line)-(540, i_Line), &H0&
    i_Line = i_Line + 600
Loop
End Sub
Public Sub Draw_Kotak1()
glColor3f 0, 1, 1
glBegin GL_QUADS
    'bawah
    glVertex3f -10, -20, -10: glVertex3f -10, -20, 10: glVertex3f 10, -20, 10: glVertex3f 10, -20, -10
    'atas
    glVertex3f -10, 15, -10: glVertex3f -10, 15, 10: glVertex3f 10, 15, 10: glVertex3f 10, 15, -10
    'depan
    glVertex3f -10, -20, 10: glVertex3f 10, -20, 10: glVertex3f 10, 15, 10: glVertex3f -10, 15, 10
    'samping1
    glVertex3f -10, -20, 10: glVertex3f -10, -20, -10: glVertex3f -10, 15, -10: glVertex3f -10, 15, 10
    'samping2
    glVertex3f 10, -20, -10: glVertex3f 10, -20, 10: glVertex3f 10, 15, 10: glVertex3f 10, 15, -10
    'belakang
    glVertex3f -10, -20, -10: glVertex3f 10, -20, -10: glVertex3f 10, 15, -10: glVertex3f -10, 15, -10
glEnd
End Sub
Public Sub Draw_Kotak2()
glColor3f 1, 1, 0
glBegin GL_QUADS
    'bawah
    glVertex3f -10, 15, 10: glVertex3f 10, 15, 10: glVertex3f 10, 15, -10: glVertex3f -10, 15, -10
    'atas
    glVertex3f -10, 20, 10: glVertex3f 10, 20, 10: glVertex3f 10, 20, -10: glVertex3f -10, 20, -10
    'depan
    glVertex3f -10, 15, 10: glVertex3f 10, 15, 10: glVertex3f 10, 20, 10: glVertex3f -10, 20, 10
    'samping1
    glVertex3f -10, 15, -10: glVertex3f -10, 15, 10: glVertex3f -10, 20, 10: glVertex3f -10, 20, -10
    'samping2
    glVertex3f 10, 15, -10: glVertex3f 10, 15, 10: glVertex3f 10, 20, 10: glVertex3f 10, 20, -10
    'belakang
    glVertex3f -10, 15, -10: glVertex3f 10, 15, -10: glVertex3f 10, 20, -10: glVertex3f -10, 20, -10
glEnd
End Sub
Public Sub Draw_Axis()
glLineWidth 1
glBegin GL_LINES
    'X axis
    glColor3f 0, 1, 0: glVertex3f -25, 0, 0: glVertex3f 25, 0, 0
    'Y axis
    glColor3f 0, 0, 1: glVertex3f 0, -25, 0: glVertex3f 0, 25, 0
    'Z axis
    glColor3f 1, 0, 0: glVertex3f 0, 0, -25: glVertex3f 0, 0, 25
glEnd
End Sub
Public Sub Draw_Border1()
glColor3f 0, 0, 0: glLineWidth 1
glBegin bmLineLoop 'bawah
    glVertex3f -10, -20, -10: glVertex3f -10, -20, 10: glVertex3f 10, -20, 10: glVertex3f 10, -20, -10
glEnd
glBegin bmLineLoop 'atas
    glVertex3f -10, 15, -10: glVertex3f -10, 15, 10: glVertex3f 10, 15, 10: glVertex3f 10, 15, -10
glEnd
glBegin bmLineLoop 'depan
    glVertex3f -10, -20, 10: glVertex3f 10, -20, 10: glVertex3f 10, 15, 10: glVertex3f -10, 15, 10
glEnd
glBegin bmLineLoop 'samping1
    glVertex3f -10, -20, 10: glVertex3f -10, -20, -10: glVertex3f -10, 15, -10: glVertex3f -10, 15, 10
glEnd
glBegin bmLineLoop 'samping2
    glVertex3f 10, -20, -10: glVertex3f 10, -20, 10: glVertex3f 10, 15, 10: glVertex3f 10, 15, -10
glEnd
glBegin bmLineLoop 'belakang
    glVertex3f -10, -20, -10: glVertex3f 10, -20, -10: glVertex3f 10, 15, -10: glVertex3f -10, 15, -10
glEnd
End Sub
Public Sub Draw_Border2()
glColor3f 0, 0, 0: glLineWidth 1
glBegin bmLineLoop 'bawah
    glVertex3f -10, 15, 10: glVertex3f 10, 15, 10: glVertex3f 10, 15, -10: glVertex3f -10, 15, -10
glEnd
glBegin bmLineLoop 'atas
    glVertex3f -10, 20, 10: glVertex3f 10, 20, 10: glVertex3f 10, 20, -10: glVertex3f -10, 20, -10
glEnd
glBegin bmLineLoop 'depan
    glVertex3f -10, 15, 10: glVertex3f 10, 15, 10: glVertex3f 10, 20, 10: glVertex3f -10, 20, 10
glEnd
glBegin bmLineLoop 'samping1
     glVertex3f -10, 15, -10: glVertex3f -10, 15, 10: glVertex3f -10, 20, 10: glVertex3f -10, 20, -10
glEnd
glBegin bmLineLoop 'samping2
    glVertex3f 10, 15, -10: glVertex3f 10, 15, 10: glVertex3f 10, 20, 10: glVertex3f 10, 20, -10
glEnd
glBegin bmLineLoop 'belakang
     glVertex3f -10, 15, -10: glVertex3f 10, 15, -10: glVertex3f 10, 20, -10: glVertex3f -10, 20, -10
glEnd
End Sub
