VERSION 5.00
Begin VB.Form frmData 
   Caption         =   "For Data that uses 0 to 9"
   ClientHeight    =   5400
   ClientLeft      =   45
   ClientTop       =   345
   ClientWidth     =   3570
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5400
   ScaleWidth      =   3570
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtData 
      Height          =   288
      Index           =   9
      Left            =   1560
      TabIndex        =   19
      Top             =   4320
      Width           =   1572
   End
   Begin VB.TextBox txtData 
      Height          =   288
      Index           =   8
      Left            =   1560
      TabIndex        =   17
      Top             =   3840
      Width           =   1572
   End
   Begin VB.TextBox txtData 
      Height          =   288
      Index           =   7
      Left            =   1560
      TabIndex        =   15
      Top             =   3360
      Width           =   1572
   End
   Begin VB.TextBox txtData 
      Height          =   288
      Index           =   6
      Left            =   1560
      TabIndex        =   13
      Top             =   2880
      Width           =   1572
   End
   Begin VB.TextBox txtData 
      Height          =   288
      Index           =   5
      Left            =   1560
      TabIndex        =   11
      Top             =   2400
      Width           =   1572
   End
   Begin VB.TextBox txtData 
      Height          =   288
      Index           =   4
      Left            =   1560
      TabIndex        =   9
      Top             =   1920
      Width           =   1572
   End
   Begin VB.TextBox txtData 
      Height          =   288
      Index           =   3
      Left            =   1560
      TabIndex        =   7
      Top             =   1440
      Width           =   1572
   End
   Begin VB.TextBox txtData 
      Height          =   288
      Index           =   2
      Left            =   1560
      TabIndex        =   5
      Top             =   960
      Width           =   1572
   End
   Begin VB.TextBox txtData 
      Height          =   288
      Index           =   1
      Left            =   1560
      TabIndex        =   3
      Top             =   480
      Width           =   1572
   End
   Begin VB.TextBox txtData 
      Height          =   288
      Index           =   0
      Left            =   1560
      TabIndex        =   1
      Top             =   0
      Width           =   1572
   End
   Begin VB.CommandButton CmdDone 
      Caption         =   "&Done"
      Height          =   492
      Left            =   840
      TabIndex        =   0
      Top             =   4800
      Width           =   2172
   End
   Begin VB.Label Label1 
      Caption         =   "Data9"
      Height          =   252
      Index           =   9
      Left            =   240
      TabIndex        =   20
      Top             =   4320
      Width           =   1212
   End
   Begin VB.Label Label1 
      Caption         =   "Data8"
      Height          =   252
      Index           =   8
      Left            =   240
      TabIndex        =   18
      Top             =   3840
      Width           =   1212
   End
   Begin VB.Label Label1 
      Caption         =   "Data7"
      Height          =   252
      Index           =   7
      Left            =   240
      TabIndex        =   16
      Top             =   3360
      Width           =   1212
   End
   Begin VB.Label Label1 
      Caption         =   "Data6"
      Height          =   252
      Index           =   6
      Left            =   240
      TabIndex        =   14
      Top             =   2880
      Width           =   1212
   End
   Begin VB.Label Label1 
      Caption         =   "Data5"
      Height          =   252
      Index           =   5
      Left            =   240
      TabIndex        =   12
      Top             =   2400
      Width           =   1212
   End
   Begin VB.Label Label1 
      Caption         =   "Data4"
      Height          =   252
      Index           =   4
      Left            =   240
      TabIndex        =   10
      Top             =   1920
      Width           =   1212
   End
   Begin VB.Label Label1 
      Caption         =   "Data3"
      Height          =   252
      Index           =   3
      Left            =   240
      TabIndex        =   8
      Top             =   1440
      Width           =   1212
   End
   Begin VB.Label Label1 
      Caption         =   "Data2"
      Height          =   252
      Index           =   2
      Left            =   240
      TabIndex        =   6
      Top             =   960
      Width           =   1212
   End
   Begin VB.Label Label1 
      Caption         =   "Data1"
      Height          =   252
      Index           =   1
      Left            =   240
      TabIndex        =   4
      Top             =   480
      Width           =   1212
   End
   Begin VB.Label Label1 
      Caption         =   "Data0"
      Height          =   252
      Index           =   0
      Left            =   240
      TabIndex        =   2
      Top             =   0
      Width           =   1212
   End
End
Attribute VB_Name = "frmData"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CmdDone_Click()
On Error GoTo errHandle
Dim i As Long
  If frmMain.Tag = "SuccessItem" Then
        For i = 0 To 9
            If txtData(i).text = "" Then
            Else
                Extra.SuccessItem(i) = txtData(i).text
            End If
        Next i
    End If
  If frmMain.Tag = "SuccessItemQty" Then
        For i = 0 To 9
            If txtData(i).text = "" Then
            Else
                Extra.SuccessItemQty(i) = txtData(i).text
            End If
        Next i
    End If
  If frmMain.Tag = "FailedItem" Then
        For i = 0 To 9
            If txtData(i).text = "" Then
            Else
                Extra.FailedItem(i) = txtData(i).text
            End If
        Next i
    End If
  If frmMain.Tag = "FailedItemQty" Then
        For i = 0 To 9
            If txtData(i).text = "" Then
            Else
                Extra.FailedItemQty(i) = txtData(i).text
            End If
        Next i
    End If

    Unload Me
Exit Sub
errHandle:
MsgBox "Error frmData:cmdDone_click " & Err.Number & " " & Err.Description
End Sub

Private Sub Form_Load()
If frmMain.Tag = "SuccessItem" Then
        For i = 0 To 9
       
            txtData(i).text = Extra.SuccessItem(i)
        Next i
End If
If frmMain.Tag = "SuccessItemQty" Then
        For i = 0 To 9
       
            txtData(i).text = Extra.SuccessItemQty(i)
        Next i
End If
If frmMain.Tag = "FailedItem" Then
        For i = 0 To 9
       
            txtData(i).text = Extra.FailedItem(i)
        Next i
End If
If frmMain.Tag = "FailedItemQty" Then
        For i = 0 To 9
       
            txtData(i).text = Extra.FailedItemQty(i)
        Next i
End If
       
End Sub
