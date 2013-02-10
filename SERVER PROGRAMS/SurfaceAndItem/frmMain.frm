VERSION 5.00
Begin VB.Form frmMain 
   AutoRedraw      =   -1  'True
   Caption         =   "SurfaceAndItem"
   ClientHeight    =   5925
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7440
   LinkTopic       =   "Form1"
   ScaleHeight     =   395
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   496
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdDraw 
      Caption         =   "Draw"
      Height          =   375
      Left            =   5400
      TabIndex        =   0
      Top             =   5160
      Width           =   1095
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Map() As Byte
Dim MapSize As Integer
Dim Map2() As Long



Private Sub cmdDraw_Click()
For x = 1 To MapSize
    For y = 1 To MapSize
        Me.CurrentX = x
        Me.CurrentY = y
        If Map(x, y) = 12 Then
            Me.ForeColor = vbBlue
        ElseIf Map(x, y) = 2 Then
            'Me.ForeColor = vbGreen
            Me.ForeColor = &HFF0000
            ElseIf Map(x, y) = 1 Then
            Me.ForeColor = &HFFFF00
            'Me.ForeColor = vbRed
                    ElseIf Map(x, y) = 0 Then
                    Me.ForeColor = &H95C2CA
            'Me.ForeColor = vbBlack
            
        Else
            'Me.ForeColor = vbWhite
         Me.ForeColor = &HC00000
        End If
        
        'Me.Print Chr(Map(x, y))
        Me.PSet (x, y)
    Next y
Next x

For x = 1 To MapSize
    For y = 1 To MapSize
        Me.CurrentX = x
        Me.CurrentY = y
        If Map2(x, y, 0) <> 0 Then
            Me.ForeColor = vbBlack
            Me.PSet (x, y)
       
        End If
        
        
    Next y
Next x
End Sub

Private Sub Form_Load()
Open App.Path & "\world.dat" For Binary Access Read Lock Read As #1
    Get #1, , MapSize

Close #1

ReDim Map(0 To MapSize, 0 To MapSize)
ReDim Map2(0 To MapSize, 0 To MapSize, 1)


Open App.Path & "\item.map" For Binary Access Read Lock Read As #1
    Get #1, , Map2

Close #1

Open App.Path & "\surfacewater.map" For Binary Access Read Lock Read As #1
    Get #1, , Map

Close #1
End Sub
