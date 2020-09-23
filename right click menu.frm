VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5580
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7140
   LinkTopic       =   "Form1"
   ScaleHeight     =   5580
   ScaleWidth      =   7140
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   2415
      Left            =   1800
      TabIndex        =   0
      Top             =   1320
      Width           =   2775
   End
   Begin VB.Menu test 
      Caption         =   "test"
      Visible         =   0   'False
      Begin VB.Menu thing 
         Caption         =   "Test 1"
      End
      Begin VB.Menu test2 
         Caption         =   "test2"
         Begin VB.Menu test21 
            Caption         =   "test 21"
         End
      End
   End
   Begin VB.Menu fun 
      Caption         =   "Fun"
      Visible         =   0   'False
      Begin VB.Menu See 
         Caption         =   "See how easy this is?"
      End
      Begin VB.Menu exit 
         Caption         =   "Exit"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub Command1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then MsgBox "Thank you for clicking on me, now try right clicking on me"
If Button = 2 Then PopupMenu fun
End Sub

Private Sub exit_Click()
Beep
End
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 2 Then PopupMenu test
End Sub
